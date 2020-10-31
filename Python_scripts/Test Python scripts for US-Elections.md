## Python scripts for US-Elections
## Voting tendencies by education level
# Import libraries

import matplotlib.pyplot as plt
import pandas as pd
import numpy as np 
import seaborn as sns
from matplotlib.lines import Line2D
import plotly.express as px
import plotly.graph_objects as go

# Load csv
education = pd.read_csv("../data/clean_data/analysis_data/voting_tendencies_by_education_level_2016.csv")
education.head()

# x, y labels
education_bachelor_higher = education["bachelor_or_higher_perc"]
democrats = education["democrats"]
republicans = education["republicans"]

# plot voting tendencies with regression line
sns.regplot(x="bachelor_or_higher_perc", y="democrats", data=education, label = "democrats", scatter_kws={"color": "blue", 's':12}, line_kws={"color": "blue"})
sns.regplot(x="bachelor_or_higher_perc", y="republicans", data=education, label = "republicans", scatter_kws={"color": "red",'s':12}, line_kws={"color": "red"})

plt.title('Voting Tendency by Education Level')
plt.xlabel('% of Bachelor or Higher Education')
plt.ylabel('% of Votes')
plt.legend()
plt.savefig("../visualisations/voting_tendencies_education_level.jpg", dpi = 200)
plt.show()
