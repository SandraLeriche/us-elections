### Python scripts for US-Elections
### All Eyes on U.S.


# Import libraries

import matplotlib.pyplot as plt
import pandas as pd
import numpy as np 
import seaborn as sns
from matplotlib.lines import Line2D
import plotly.express as px
import plotly.graph_objects as go
import imageio
import os
import mysql.connector
from bokeh.plotting import figure, show
from bokeh.io import output_notebook
from math import pi
import squarify
from matplotlib_venn import venn3
from mpl_toolkits.mplot3d import Axes3D
import wikipedia
from wordcloud import WordCloud, STOPWORDS
import warnings
from pandas.core.common import SettingWithCopyWarning
warnings.simplefilter(action="ignore", category=SettingWithCopyWarning)

## Voting tendencies by education level

# Load csv
education = pd.read_csv("../data/clean_data/analysis_data/voting_tendencies_by_education_level_2016.csv")
education.head()

# x, y labels
education_bachelor_higher = education["bachelor_or_higher_perc"]
democrats = education["democrats"]
republicans = education["republicans"]

# Plot voting tendencies with regression line
sns.regplot(x="bachelor_or_higher_perc", y="democrats", data=education, label = "democrats", scatter_kws={"color": "blue", 's':12}, line_kws={"color": "blue"})
sns.regplot(x="bachelor_or_higher_perc", y="republicans", data=education, label = "republicans", scatter_kws={"color": "red",'s':12}, line_kws={"color": "red"})

plt.title('Voting Tendency by Education Level')
plt.xlabel('% of Bachelor or Higher Education')
plt.ylabel('% of Votes')
plt.legend()
plt.savefig("../visualisations/voting_tendencies_education_level.jpg", dpi = 200)
plt.show()

## Voting tendencies by poverty level

# Load csv
poverty = pd.read_csv("../data/clean_data/analysis_data/voting_tendencies_by_poverty_level_2016.csv")

# Preview table
poverty.head()

# x, y labels
education_bachelor_higher = poverty["below_poverty_percentage"]
democrats = poverty["democrats"]
republicans = poverty["republicans"]

# Plot voting tendencies with regression line
sns.regplot(x="below_poverty_percentage", y="democrats", data=poverty, label = "democrats", scatter_kws={"color": "blue", 's':12}, line_kws={"color": "blue"})
sns.regplot(x="below_poverty_percentage", y="republicans", data=poverty, label = "republicans", scatter_kws={"color": "red",'s':12}, line_kws={"color": "red"})

plt.title('Voting Tendency by Poverty Level')
plt.xlabel('% of Voters below Poverty Level')
plt.ylabel('% of Votes')
plt.legend()
plt.savefig("../visualisations/voting_tendencies_poverty_level.jpg", dpi = 200)
plt.show()

## Historical voting preference

# Load csv
vote_history = pd.read_csv('../data/clean_data/historical_data/us_1976_2018_house.csv', encoding= 'unicode_escape')

# Preview table
vote_history.head()

# Select columns, create calculated columns and drop others
vote_history = vote_history[['year', 'state_po', 'party', 'candidatevotes', 'totalvotes']]
vote_history['percvotes'] = vote_history['candidatevotes'] / vote_history['totalvotes']
vote_history.drop('candidatevotes', axis = 'columns', inplace = True)
vote_history.drop('totalvotes', axis = 'columns', inplace = True)
print(vote_history)

# Delete other parties
vals = ['republican', 'democrat']
vote_history['party'] = vote_history.party.where(vote_history.party.isin(vals), 'other')
print (vote_history)

# Pivot table to calculate State preferred party
pivot = pd.pivot_table(vote_history, values = 'percvotes', index = ['year', 'state_po'], columns = 'party').fillna(0)
print(pivot)

# Label the winning party
pivot['win'] = pivot.idxmax(axis=1)
pivot['max'] = pivot[['democrat', 'other', 'republican']].max(axis=1)
print(pivot)

# Create a new column to give give democrat a negative value & republican a positive value for plotting
pivot.loc[pivot['win'] == 'democrat', 'partywin'] = 0 - pivot['max'] 
pivot.loc[pivot['win'] == 'republican', 'partywin'] = 0 + pivot['max'] 
pivot.loc[pivot['win'] == 'other', 'partywin'] = 0 
print(pivot)

# Drop unneeded table columns
pivot.drop('democrat', axis = 'columns', inplace = True)
pivot.drop('other', axis = 'columns', inplace = True)
pivot.drop('republican', axis = 'columns', inplace = True)
pivot.drop('win', axis = 'columns', inplace = True)
pivot.drop('max', axis = 'columns', inplace = True)
pivot.reset_index(drop=True,level=1)
print(pivot)

# Unstack pivot to create desired layout to feed heatmap plot
df = pivot.unstack(level=0)
print(df)

# Create the heatmap with red colour for republican and blue for democrat, rename axes and tick labels to overcome multi-indexing header formatting
fig, ax = plt.subplots(figsize=(11, 9))
h = sns.heatmap(df, cmap = 'coolwarm', xticklabels = 1, yticklabels = 1, cbar = False)
plt.title('State voter preference 1976 - 2018', fontsize = 20) # title with fontsize 20
plt.xlabel('Years', fontsize = 15) # x-axis label with fontsize 15
plt.ylabel('State', fontsize = 15) # y-axis label with fontsize 15
trunc = lambda x: x.strip("()").split("-")[1]
tl = [trunc(t.get_text()) for t in ax.get_xticklabels()]
ax.set_xticklabels(tl,rotation=0);
plt.xticks(fontsize = 8) 
plt.yticks(fontsize = 8)

# Create a custom legend for plot readability
custom_lines = [Line2D([0], [0], color='b', lw=4),
                Line2D([0], [0], color='r', lw=4),
                Line2D([0], [0], color='lightgray', lw=4)]
ax.legend(custom_lines, ['Democrat', 'Republican', 'Independent'], loc='upper left', bbox_to_anchor=(0.,-.05))

plt.show()

## Heatmap of 2020 US Presidential Polls on US map

# Load latest pres_poll csv
pres_polls_df = pd.read_csv('../data/clean_data/2020/pres_polls_20201011.csv',sep=';')

# Load excel file containing 2016 results
xls = pd.ExcelFile('../ERD/data_ERD/Important tables-2016.xlsx')
pres_res = pd.read_excel(xls, '2016 pres results')

# Separate out State abbreviations
state_abbrev = pres_res.copy()

# Remove columns in pres_polls_df - updated to one line for ease
pres_polls_df.drop(['id', 'Day', 'Len', 'Ind', 'EV', 'Date', 'Pollster'], axis='columns', inplace=True)

# Drop columns, rename columns, remove duplicates, reset index in state_abbrev
state_abbrev.drop(state_abbrev.columns[2:9], axis='columns', inplace=True)
state_abbrev.rename(columns={'STATE':'State'}, inplace=True)
state_abbrev.rename(columns={'STATE ABBREVIATION':'State_Abbreviation'}, inplace=True)
state_abbrev = state_abbrev.drop_duplicates('State')
state_abbrev = state_abbrev.reset_index(drop=True)

# Pivot data to find aggregated mean of the party preference in each State
state_avg = pres_polls_df.groupby('State', as_index=False).agg('mean')
state_avg['Dem'] = state_avg['Dem'].astype(int)
state_avg['GOP'] = state_avg['GOP'].astype(int)

# Adding State_Abbreviations to pres_polls_df
pp_avg = pd.merge(state_avg, state_abbrev, on = 'State', how = 'left')

# Finding party preference where Dem is shown as positive percentage and GOP is shown as negative percentage
pp_avg['party_pref'] = np.where((pp_avg['Dem'] >= pp_avg['GOP']), 
                                       'Dem', 'GOP')
pp_avg['party_lean'] = np.where((pp_avg['Dem'] >= pp_avg['GOP']), 
                                       pp_avg['Dem']/100, ~ pp_avg['GOP']/100)

ppavg = pp_avg.copy()

ppavg.drop(ppavg.columns[1:3], axis='columns', inplace=True)
ppavg

# Create US heatmap of 2020 Presidential Poll as at 11-OCT-2020
fig2020 = px.choropleth(pp_avg,  # Input Pandas DataFrame
                    locations='State_Abbreviation',  # DataFrame column with locations
                    color='party_lean', # DataFrame column with color value
                    color_continuous_scale=px.colors.diverging.RdBu, # from https://plotly.com/python/builtin-colorscales/
                    color_continuous_midpoint=0, # party preference midpoint
                    hover_name='State', # DataFrame column hover info
                    hover_data={'party_pref':True, # add other column, default formatting
                               'party_lean':False # remove party_lean from hover data
                               },
                    locationmode = 'USA-states', # Set to plot as US States
                    labels={'party_pref':'Party Preference',
                           'party_lean':'Party Lean Percentage'})

fig2020.update_layout(
    title_text='2020 President Polls as at 11th October 2020', 
    geo_scope='usa')  # Plot only the USA instead of globe

                    
fig2020.show()

## Heatmap of 2016 Presidential Election Results on US map

# Use copy of 2016 Presidential Results used above
pr = pres_res.copy()

# Prepare 2016 data
p_res = pr.iloc[:,[0,1,5,7,8]]
p_res = p_res.sort_values(['GENERAL %'], ascending=False)
p_res.head()

# Remove duplicates
p_res = p_res.drop_duplicates(subset=['STATE'], keep='first')
p_res.head()

# Add Party Lean Percentage
p_res['Party Lean Percentage'] = np.where((p_res['PARTY'] == 'REP'), 
                                       p_res['GENERAL %']*-1, p_res['GENERAL %'])

# Need to figure out how to change REP to GOP
p_res.loc[p_res['PARTY'] == 'REP', ['PARTY']] = 'GOP'
p_res.loc[p_res['PARTY'] == 'DFL', ['Party Lean Percentage']] = 0
p_res.head()

# Create heatmap
fig2016 = px.choropleth(p_res,  # Input Pandas DataFrame
                    locations='STATE ABBREVIATION',  # DataFrame column with locations
                    color='Party Lean Percentage', # DataFrame column with color value
                    color_continuous_scale=px.colors.diverging.RdBu, # from https://plotly.com/python/builtin-colorscales/
                    color_continuous_midpoint=0, # party preference midpoint
                    hover_name='STATE', # DataFrame column hover info
                    hover_data={'PARTY':True, # add other column, default formatting
                               'WINNER INDICATOR':False, # remove party_lean from hover data
                               'GENERAL %':False, # remove party_lean from hover data
                               'Party Lean Percentage':False # remove party_lean from hover data
                               },
                    locationmode = 'USA-states' # Set to plot as US States
                    )

fig2016.update_layout(
    title_text='2016 President Election Results', 
    geo_scope='usa')  # Plot only the USA instead of globe

                    
fig2016.show()

## Creating GIF from 2016 and 2020 US heatmap visualisations

# Directory where to store gif
png_dir = '../visualisations/gif/'

# Create gif and save in directory
images = []
for file_name in os.listdir(png_dir):
    if file_name.endswith('.png'):
        file_path = os.path.join(png_dir, file_name)
        images.append(imageio.imread(file_path))
imageio.mimsave('../visualisations/gif/2016vs2020.gif', images, fps=1)

## Top 5 States with highest registered voters 2016

# Connecting the sql database to Python using “MySQL Connector”
# Install the my-sql-connector to connect to mysql db
# Call once to configure Bokeh to display plots inline in the notebook.
output_notebook()

conn=pymysql.connect(host='localhost',port=int(3306),user='root',passwd='',db='erd_elections')
top_five_states_dem_vs_GOP=pd.read_sql_query("select * from v_top_5_states_race",conn)
print (top_five_states_dem_vs_GOP)

# data to plot
top_five_states_dem_vs_GOP = 5
GOP = (2969532.0, 4605515.0, 2118179.0, 2912941.0, 4681590.0)
DEM = (5488261.0 , 4485745.0, 2977498.0, 2844705.0, 3867816.0 )

# create plot
fig, ax = plt.subplots()
index = np.arange(top_five_states_dem_vs_GOP)
bar_width = 0.35
opacity = 0.8

rects1 = plt.bar(index, GOP, bar_width,
alpha=opacity,
color='red',
label='GOP')

rects2 = plt.bar(index + bar_width, DEM, bar_width,
alpha=opacity,
color='blue',
label='DEM')

plt.xlabel('state')
plt.ylabel('total_votes')
plt.title('GOP vs DEM')
plt.xticks(index + bar_width, ('CALIFORNIA', 'FLORIDA', 'ILLINOIS','PENNSYLVANIA','TEXAS'))
plt.legend()

plt.tight_layout()
plt.show()

## Top 10 States

# Load the file for the Presidential state toplines
df = pd.read_csv("../data/clean_data/2020/presidential_state_toplines_2020.csv", encoding = 'utf-8')

# The first 5 rows of the file
df.head(5)

# Select the columns for the state, the date and the voteshare between Trump, Biden and other.
df = df[['modeldate','state','voteshare_inc', 'voteshare_chal', 'voteshare_other']]
df

# Average of the data by date and state.
df_avg = df.groupby(['modeldate','state']).mean()
df_avg

# Then i finally decided to group the data by state and used the average percentage of vote share.
df1 = df.groupby(['state']).mean()
df1

# Filtering the states, drop the duplicates
df1 = df1.drop(['ME-1', 'ME-2', 'NE-1', 'NE-2', 'NE-3'], axis=0)
df1

# Sort the data in descending order to find a forecast of the top 10 states who are in favor of Trump winning the election.
df2=df1.sort_values(by=['voteshare_inc'], ascending=False)
df2 = df2.head(10)

# Plot a bar graph for the top 10 states in favor of Trump.
df2.plot(kind = 'bar', title = 'Forecast-Top 10 states in favor of Trump (5th October 2020)', width = 1)
plt.xlabel('State')
plt.ylabel('Percentage of Voters')
plt.legend(['Trump', 'Biden', 'Others'])
plt.show()

# Sort the data in descending order to find a forecast of the top 10 states who are in favor of Biden winning the election.
df3=df1.sort_values(by=['voteshare_chal'], ascending=False)
df3 = df3.head(10)

# Plot a bar graph for the top 10 states in favor of Biden.
df3.plot(kind = 'bar',title = 'Forecast-Top 10 states in favor of Biden (5th October 2020)', width = 1)
plt.xlabel('State')
plt.ylabel('Percentage of Voters')
plt.legend(['Trump', 'Biden', 'Others'])
plt.show()

## 2020 Presidential Poll Percentage Changes

# Load csv
polls = pd.read_csv("../data/archive/electoral_vote_pres_polls_20201011.csv")
geo = pd.read_csv("../data/archive/us_state_geo_location.csv")
abbre = pd.read_csv("../data/archive/us_state_abbreviations.csv")

# Select Columns
polls = polls[['Day', 'State', 'EV', 'Dem', 'GOP']]

# Merge two datasets
polls_geo = pd.merge(polls, geo, how = 'inner')
polls_geo

# Get dataframe sorted by Day in each state
polls_geo = polls_geo.groupby(['State']).apply(lambda x: x.sort_values(["Day"], ascending = False)).reset_index(drop = True)

# Select first & latest polls within each state
polls_geo_first = polls_geo.groupby('State').tail(1)
polls_geo_late = polls_geo.groupby('State').head(1)

# Add 'Stage' column stage to distinguish first & latest polls
polls_geo_late['Stage'] = "Latest"
polls_geo_first['Stage'] = "First"

# Append two dataframes
polls_geo_all = polls_geo_first.append(polls_geo_late, ignore_index = True)
polls_geo_all

# Plot comparison
fig = px.scatter_geo(polls_geo_all,
                     lat = "Latitude",
                     lon = "Longitude",
                     color = "GOP",
                     hover_name = "State",
                     size = "EV",
                     scope = 'usa',
                     labels = {'GOP':'% Preference to Republican Party'},
                     title = 'The U.S. President Polls Electoral Vote in 2020 (by 11th October)',
                     animation_frame = "Stage")
fig.show()

# Find the change in percentage between first & latest polls
polls_dif = polls_geo.groupby('State').head(1).set_index(['State']).subtract(polls_geo.groupby('State').tail(1).set_index(['State']), fill_value = 0).reset_index()
polls_dif = polls_dif[['State','Dem','GOP']]
polls_dif = pd.merge(polls_dif, abbre)
polls_dif

# Add 'Party' column stage to distinguish GOP & Dem
polls_dif_GOP = polls_dif[['State','GOP','Code']]
polls_dif_GOP['Party'] = "GOP"
polls_dif_GOP.rename(columns = {'GOP':'Percentage'}, inplace = True)
polls_dif_Dem = polls_dif[['State','Dem','Code']]
polls_dif_Dem['Party'] = "Dem"
polls_dif_Dem.rename(columns = {'Dem':'Percentage'}, inplace = True)

# Append two dataframes
polls_dif_all = polls_dif_GOP.append(polls_dif_Dem, ignore_index = True)
polls_dif_all

# Plot comparison
fig1 = px.choropleth(polls_dif_all,
                     locations = "Code",
                     locationmode = 'USA-states',
                     color = "Percentage",
                     color_continuous_scale = "RdBu",
                     range_color = (-10, 10),
                     scope = 'usa',
                     hover_name = "State",
                     labels = {'Percentage': '% Change'},
                     title = 'The Percentage Change between First and Latest Electoral Vote (by 11th October 2020)',
                     animation_frame = "Party")
fig1.show()