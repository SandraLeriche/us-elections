CREATE TABLE your_table_name (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  line INT,
  state_code VARCHAR(255),
  state_name VARCHAR(255),
  congressional_district VARCHAR(255),
  votes_cast_in_prior_election VARCHAR(255),
  voting_age_pop_estimate VARCHAR(255),
  voting_age_pop_MOE VARCHAR(255),
  voting_rate_estimate VARCHAR(255),
  voting_rate_MOE VARCHAR(255)
);
INSERT INTO your_table_name
  (line,state_code,state_name,congressional_district,votes_cast_in_prior_election,voting_age_pop_estimate,voting_age_pop_MOE,voting_rate_estimate,voting_rate_MOE)
VALUES
  (1,'AL','Alabama','1','242,617','544,464','3,424','44.6','0.3'),
  (2,'AL','Alabama','2','226,230','516,295','5,674','43.8','0.5'),
  (3,'AL','Alabama','3','231,915','543,854','4,099','42.6','0.3'),
  (4,'AL','Alabama','4','230,969','515,701','4,678','44.8','0.4'),
  (5,'AL','Alabama','5','260,673','551,968','2,121','47.2','0.2'),
  (6,'AL','Alabama','6','278,328','535,753','7,635','52','0.7'),
  (7,'AL','Alabama','7','189,163','504,177','9,052','37.5','0.7'),
  (8,'AK','Alaska','At-large','282,166','532,244','2,539','53','0.3'),
  (9,'AZ','Arizona','1','266,089','568,661','9,203','46.8','0.8'),
  (10,'AZ','Arizona','2','294,152','550,044','9,439','53.5','0.9'),
  (11,'AZ','Arizona','3','179,518','500,787','12,277','35.8','0.9'),
  (12,'AZ','Arizona','4','277,035','633,528','10,386','43.7','0.7'),
  (13,'AZ','Arizona','5','313,064','587,681','10,348','53.3','0.9'),
  (14,'AZ','Arizona','6','313,699','577,899','11,084','54.3','1'),
  (15,'AZ','Arizona','7','132,051','454,957','12,175','29','0.8'),
  (16,'AZ','Arizona','8','304,417','599,423','9,645','50.8','0.8'),
  (17,'AZ','Arizona','9','261,245','562,791','12,216','46.4','1'),
  (18,'AR','Arkansas','1','201,245','548,710','3,198','36.7','0.2'),
  (19,'AR','Arkansas','2','253,453','570,220','3,398','44.4','0.3'),
  (20,'AR','Arkansas','3','229,568','573,113','5,357','40.1','0.4'),
  (21,'AR','Arkansas','4','204,892','532,069','4,667','38.5','0.3'),
  (22,'CA','California','1','291,594','553,702','4,675','52.7','0.4'),
  (23,'CA','California','2','315,657','534,951','6,691','59','0.7'),
  (24,'CA','California','3','232,251','504,299','7,222','46.1','0.7'),
  (25,'CA','California','4','340,654','573,118','5,649','59.4','0.6'),
  (26,'CA','California','5','261,018','508,369','9,829','51.3','1'),
  (27,'CA','California','6','201,939','506,434','10,206','39.9','0.8'),
  (28,'CA','California','7','281,617','537,436','8,063','52.4','0.8'),
  (29,'CA','California','8','170,785','477,512','10,385','35.8','0.8'),
  (30,'CA','California','9','200,763','482,967','8,819','41.6','0.8'),
  (31,'CA','California','10','221,900','493,409','7,043','45','0.6'),
  (32,'CA','California','11','275,681','508,963','9,040','54.2','1'),
  (33,'CA','California','12','317,072','571,300','7,542','55.5','0.7'),
  (34,'CA','California','13','294,837','536,892','6,882','54.9','0.7'),
  (35,'CA','California','14','266,823','511,049','8,400','52.2','0.9'),
  (36,'CA','California','15','243,929','503,361','8,070','48.5','0.8'),
  (37,'CA','California','16','142,959','423,147','10,984','33.8','0.9'),
  (38,'CA','California','17','211,162','438,374','13,412','48.2','1.5'),
  (39,'CA','California','18','302,238','491,580','9,611','61.5','1.2'),
  (40,'CA','California','19','220,319','482,363','9,857','45.7','0.9'),
  (41,'CA','California','20','225,721','434,889','8,953','51.9','1.1'),
  (42,'CA','California','21','113,616','354,669','11,267','32','1'),
  (43,'CA','California','22','222,379','483,064','10,845','46','1'),
  (44,'CA','California','23','205,774','490,446','10,566','42','0.9'),
  (45,'CA','California','24','284,431','508,333','5,576','56','0.6'),
  (46,'CA','California','25','245,022','482,964','10,876','50.7','1.1'),
  (47,'CA','California','26','255,426','480,928','6,034','53.1','0.7'),
  (48,'CA','California','27','202,636','471,963','11,108','42.9','1'),
  (49,'CA','California','28','250,934','502,971','13,353','49.9','1.3'),
  (50,'CA','California','29','154,692','402,898','11,545','38.4','1.1'),
  (51,'CA','California','30','260,993','529,846','14,610','49.3','1.4'),
  (52,'CA','California','31','187,495','482,081','9,659','38.9','0.8'),
  (53,'CA','California','32','177,031','449,452','11,398','39.4','1'),
  (54,'CA','California','33','312,860','517,251','10,427','60.5','1.2'),
  (55,'CA','California','34','151,906','425,520','11,922','35.7','1'),
  (56,'CA','California','35','149,024','450,565','12,666','33.1','0.9'),
  (57,'CA','California','36','207,008','536,333','9,648','38.6','0.7'),
  (58,'CA','California','37','236,378','468,463','13,452','50.5','1.4'),
  (59,'CA','California','38','202,156','481,296','10,991','42','1'),
  (60,'CA','California','39','244,393','486,713','10,190','50.2','1.1'),
  (61,'CA','California','40','121,449','340,435','9,624','35.7','1'),
  (62,'CA','California','41','166,248','478,613','8,532','34.7','0.6'),
  (63,'CA','California','42','231,932','538,265','9,226','43.1','0.7'),
  (64,'CA','California','43','196,052','454,185','11,440','43.2','1.1'),
  (65,'CA','California','44','143,322','395,819','8,661','36.2','0.8'),
  (66,'CA','California','45','305,289','532,802','12,285','57.3','1.3'),
  (67,'CA','California','46','147,916','408,633','10,145','36.2','0.9'),
  (68,'CA','California','47','221,036','491,712','10,923','45','1'),
  (69,'CA','California','48','294,736','529,832','8,764','55.6','0.9'),
  (70,'CA','California','49','295,030','519,302','10,212','56.8','1.1'),
  (71,'CA','California','50','259,810','513,522','11,367','50.6','1.1'),
  (72,'CA','California','51','153,828','445,034','11,226','34.6','0.9'),
  (73,'CA','California','52','296,007','546,843','12,471','54.1','1.2'),
  (74,'CA','California','53','268,794','563,962','15,636','47.7','1.3'),
  (75,'CO','Colorado','1','369,715','619,349','5,507','59.7','0.5'),
  (76,'CO','Colorado','2','430,765','619,285','6,451','69.6','0.7'),
  (77,'CO','Colorado','3','336,201','565,901','5,796','59.4','0.6'),
  (78,'CO','Colorado','4','369,621','598,599','5,986','61.7','0.6'),
  (79,'CO','Colorado','5','322,716','603,967','3,639','53.4','0.3'),
  (80,'CO','Colorado','6','346,822','567,801','9,080','61.1','1'),
  (81,'CO','Colorado','7','338,067','576,138','8,222','58.7','0.8'),
  (82,'CT','Connecticut','1','274,140','523,004','7,034','52.4','0.7'),
  (83,'CT','Connecticut','2','289,114','548,572','5,593','52.7','0.5'),
  (84,'CT','Connecticut','3','270,239','535,024','7,312','50.5','0.7'),
  (85,'CT','Connecticut','4','275,651','496,370','6,476','55.5','0.7'),
  (86,'CT','Connecticut','5','270,664','511,395','9,390','52.9','1'),
  (87,'DE','Delaware','At-large','353,814','720,867','3,971','49.1','0.3'),
  (88,'DC','District of Columbia','At-large','228,769','526,393','4,612','43.5','0.4'),
  (89,'FL','Florida','1','322,388','601,423','2,752','53.6','0.2'),
  (90,'FL','Florida','2','295,568','573,718','6,050','51.5','0.5'),
  (91,'FL','Florida','3','306,496','579,993','6,726','52.8','0.6'),
  (92,'FL','Florida','4','381,249','614,794','10,052','62','1'),
  (93,'FL','Florida','5','270,326','541,992','11,225','49.9','1'),
  (94,'FL','Florida','6','333,649','621,566','6,917','53.7','0.6'),
  (95,'FL','Florida','7','317,398','581,583','10,621','54.6','1'),
  (96,'FL','Florida','8','360,527','610,604','4,145','59','0.4'),
  (97,'FL','Florida','9','296,737','644,898','15,477','46','1.1'),
  (98,'FL','Florida','10',' -   ','546,157','12,769',' -   ',' -   '),
  (99,'FL','Florida','11','367,506','652,135','10,786','56.4','0.9'),
  (100,'FL','Florida','12','334,918','605,983','7,435','55.3','0.7'),
  (101,'FL','Florida','13','316,971','584,889','8,338','54.2','0.8'),
  (102,'FL','Florida','14',' -   ','534,225','9,792',' -   ',' -   '),
  (103,'FL','Florida','15','285,532','578,715','14,070','49.3','1.2'),
  (104,'FL','Florida','16','361,946','638,769','8,875','56.7','0.8'),
  (105,'FL','Florida','17','310,520','615,104','10,351','50.5','0.8'),
  (106,'FL','Florida','18','342,359','599,873','10,324','57.1','1'),
  (107,'FL','Florida','19','339,607','631,233','11,072','53.8','0.9'),
  (108,'FL','Florida','20','202,824','507,613','13,423','40','1.1'),
  (109,'FL','Florida','21',' -   ','546,101','11,927',' -   ',' -   '),
  (110,'FL','Florida','22','297,683','534,846','11,346','55.7','1.2'),
  (111,'FL','Florida','23','276,366','510,212','9,952','54.2','1.1'),
  (112,'FL','Florida','24',' -   ','477,697','12,311',' -   ',' -   '),
  (113,'FL','Florida','25','212,845','453,055','14,226','47','1.5'),
  (114,'FL','Florida','26','235,475','476,033','12,380','49.5','1.3'),
  (115,'FL','Florida','27','252,586','464,604','13,439','54.4','1.6'),
  (116,'GA','Georgia','1','250,683','550,713','4,548','45.5','0.4'),
  (117,'GA','Georgia','2','229,171','498,322','5,387','46','0.5'),
  (118,'GA','Georgia','3','293,006','548,941','6,659','53.4','0.6'),
  (119,'GA','Georgia','4','288,809','527,938','10,870','54.7','1.1'),
  (120,'GA','Georgia','5','275,406','587,385','11,293','46.9','0.9'),
  (121,'GA','Georgia','6','317,032','496,468','9,646','63.9','1.2'),
  (122,'GA','Georgia','7','280,441','486,845','13,303','57.6','1.6'),
  (123,'GA','Georgia','8','198,716','527,338','5,981','37.7','0.4'),
  (124,'GA','Georgia','9','282,578','556,967','6,033','50.7','0.5'),
  (125,'GA','Georgia','10','302,735','565,803','9,414','53.5','0.9'),
  (126,'GA','Georgia','11','310,540','559,687','9,450','55.5','0.9'),
  (127,'GA','Georgia','12','250,492','540,482','5,219','46.3','0.4'),
  (128,'GA','Georgia','13','293,010','523,476','12,223','56','1.3'),
  (129,'GA','Georgia','14','229,724','516,434','4,331','44.5','0.4'),
  (130,'HI','Hawaii','1','191,667','509,992','8,672','37.6','0.6'),
  (131,'HI','Hawaii','2','206,990','506,514','7,345','40.9','0.6'),
  (132,'ID','Idaho','1','315,069','661,724','6,207','47.6','0.4'),
  (133,'ID','Idaho','2','280,655','590,690','6,236','47.5','0.5'),
  (134,'IL','Illinois','1','257,885','524,114','13,385','49.2','1.3'),
  (135,'IL','Illinois','2','235,251','497,132','10,186','47.3','1'),
  (136,'IL','Illinois','3','223,334','479,004','11,273','46.6','1.1'),
  (137,'IL','Illinois','4','166,189','410,804','10,402','40.5','1'),
  (138,'IL','Illinois','5','279,131','545,831','13,594','51.1','1.3'),
  (139,'IL','Illinois','6','315,446','523,796','7,397','60.2','0.9'),
  (140,'IL','Illinois','7','246,243','522,767','13,446','47.1','1.2'),
  (141,'IL','Illinois','8','197,127','442,009','9,089','44.6','0.9'),
  (142,'IL','Illinois','9','290,351','498,242','10,167','58.3','1.2'),
  (143,'IL','Illinois','10','238,664','468,255','7,926','51','0.9'),
  (144,'IL','Illinois','11','227,765','472,244','8,696','48.2','0.9'),
  (145,'IL','Illinois','12','261,543','528,398','3,128','49.5','0.3'),
  (146,'IL','Illinois','13','270,981','539,012','6,187','50.3','0.6'),
  (147,'IL','Illinois','14','297,199','525,729','7,412','56.5','0.8'),
  (148,'IL','Illinois','15','255,608','532,371','4,362','48','0.4'),
  (149,'IL','Illinois','16','255,825','520,730','4,681','49.1','0.4'),
  (150,'IL','Illinois','17','229,749','512,994','5,263','44.8','0.5'),
  (151,'IL','Illinois','18','291,413','531,334','6,741','54.8','0.7'),
  (152,'IN','Indiana','1','245,209','537,218','2,969','45.6','0.3'),
  (153,'IN','Indiana','2','228,889','522,778','3,982','43.8','0.3'),
  (154,'IN','Indiana','3','245,537','540,022','2,746','45.5','0.2'),
  (155,'IN','Indiana','4','244,363','567,094','4,245','43.1','0.3'),
  (156,'IN','Indiana','5','317,177','573,500','6,937','55.3','0.7'),
  (157,'IN','Indiana','6','241,726','549,035','2,722','44','0.2'),
  (158,'IN','Indiana','7','217,596','521,076','6,956','41.8','0.6'),
  (159,'IN','Indiana','8','244,291','549,149','2,287','44.5','0.2'),
  (160,'IN','Indiana','9','271,361','575,308','3,657','47.2','0.3'),
  (161,'IA','Iowa','1','334,243','580,187','2,876','57.6','0.3'),
  (162,'IA','Iowa','2','312,913','581,525','2,670','53.8','0.2'),
  (163,'IA','Iowa','3','356,241','601,044','3,898','59.3','0.4'),
  (164,'IA','Iowa','4','313,045','564,463','2,859','55.5','0.3'),
  (165,'KS','Kansas','1','224,640','502,712','3,509','44.7','0.3'),
  (166,'KS','Kansas','2','264,688','538,594','2,980','49.1','0.3'),
  (167,'KS','Kansas','3','318,301','534,532','3,744','59.5','0.4'),
  (168,'KS','Kansas','4','242,693','515,676','3,192','47.1','0.3'),
  (169,'KY','Kentucky','1','251,016','552,530','3,169','45.4','0.3'),
  (170,'KY','Kentucky','2','257,345','577,362','4,615','44.6','0.4'),
  (171,'KY','Kentucky','3','278,720','553,926','3,786','50.3','0.3'),
  (172,'KY','Kentucky','4','261,812','565,232','4,216','46.3','0.3'),
  (173,'KY','Kentucky','5','218,017','537,877','3,689','40.5','0.3'),
  (174,'KY','Kentucky','6','302,888','581,992','4,750','52','0.4'),
  (175,'LA','Louisiana','1','269,325','594,231','7,375','45.3','0.6'),
  (176,'LA','Louisiana','2','235,982','587,115','8,471','40.2','0.6'),
  (177,'LA','Louisiana','3','245,943','577,604','2,928','42.6','0.2'),
  (178,'LA','Louisiana','4','216,872','559,310','2,947','38.8','0.2'),
  (179,'LA','Louisiana','5','223,946','555,804','4,901','40.3','0.4'),
  (180,'LA','Louisiana','6','268,525','585,015','7,251','45.9','0.6'),
  (181,'ME','Maine','1','349,963','546,625','3,606','64','0.4'),
  (182,'ME','Maine','2','281,371','524,036','3,159','53.7','0.3'),
  (183,'MD','Maryland','1','306,186','567,926','5,943','53.9','0.6'),
  (184,'MD','Maryland','2','253,302','560,167','10,243','45.2','0.8'),
  (185,'MD','Maryland','3','292,880','545,892','12,375','53.7','1.2'),
  (186,'MD','Maryland','4','268,583','503,398','11,202','53.4','1.2'),
  (187,'MD','Maryland','5','304,209','556,897','9,297','54.6','0.9'),
  (188,'MD','Maryland','6','277,084','523,698','8,346','52.9','0.8'),
  (189,'MD','Maryland','7','264,710','528,398','10,931','50.1','1'),
  (190,'MD','Maryland','8','319,330','533,774','9,035','59.8','1'),
  (191,'MA','Massachusetts','1','275,066','568,024','5,218','48.4','0.4'),
  (192,'MA','Massachusetts','2','293,163','558,962','8,532','52.4','0.8'),
  (193,'MA','Massachusetts','3','286,583','543,580','9,566','52.7','0.9'),
  (194,'MA','Massachusetts','4','322,127','559,943','7,776','57.5','0.8'),
  (195,'MA','Massachusetts','5','323,836','535,109','10,214','60.5','1.2'),
  (196,'MA','Massachusetts','6','343,765','577,241','6,734','59.6','0.7'),
  (197,'MA','Massachusetts','7','249,375','558,430','11,033','44.7','0.9'),
  (198,'MA','Massachusetts','8','327,380','561,241','10,353','58.3','1.1'),
  (199,'MA','Massachusetts','9','331,370','573,274','7,656','57.8','0.8'),
  (200,'MI','Michigan','1','332,497','564,858','1,561','58.9','0.2'),
  (201,'MI','Michigan','2','305,463','551,323','4,776','55.4','0.5'),
  (202,'MI','Michigan','3','310,740','551,028','4,362','56.4','0.4'),
  (203,'MI','Michigan','4','285,050','554,938','2,626','51.4','0.2'),
  (204,'MI','Michigan','5','276,413','520,558','2,700','53.1','0.3'),
  (205,'MI','Michigan','6','293,438','541,981','3,071','54.1','0.3'),
  (206,'MI','Michigan','7','295,060','548,462','2,889','53.8','0.3'),
  (207,'MI','Michigan','8','341,593','554,462','5,219','61.6','0.6'),
  (208,'MI','Michigan','9','304,563','552,114','6,344','55.2','0.6'),
  (209,'MI','Michigan','10','303,064','553,804','5,635','54.7','0.6'),
  (210,'MI','Michigan','11','350,901','534,817','6,785','65.6','0.8'),
  (211,'MI','Michigan','12','294,628','526,943','7,440','55.9','0.8'),
  (212,'MI','Michigan','13','196,299','474,739','8,475','41.3','0.7'),
  (213,'MI','Michigan','14','264,994','512,851','9,342','51.7','0.9'),
  (214,'MN','Minnesota','1','291,661','500,330','2,914','58.3','0.3'),
  (215,'MN','Minnesota','2','337,968','511,914','3,848','66','0.5'),
  (216,'MN','Minnesota','3','363,949','517,834','7,590','70.3','1'),
  (217,'MN','Minnesota','4','328,614','510,862','5,084','64.3','0.6'),
  (218,'MN','Minnesota','5','343,358','517,155','6,617','66.4','0.8'),
  (219,'MN','Minnesota','6','315,726','525,551','4,938','60.1','0.6'),
  (220,'MN','Minnesota','7','281,509','495,727','2,489','56.8','0.3'),
  (221,'MN','Minnesota','8','314,211','527,541','1,381','59.6','0.2'),
  (222,'MS','Mississippi','1','236,521','577,880','2,748','40.9','0.2'),
  (223,'MS','Mississippi','2','221,379','523,479','4,699','42.3','0.4'),
  (224,'MS','Mississippi','3','257,271','559,913','5,338','45.9','0.4'),
  (225,'MS','Mississippi','4','223,732','579,386','3,131','38.6','0.2'),
  (226,'MO','Missouri','1','274,375','549,361','6,958','49.9','0.6'),
  (227,'MO','Missouri','2','376,066','575,828','8,830','65.3','1'),
  (228,'MO','Missouri','3','324,608','602,748','6,241','53.9','0.6'),
  (229,'MO','Missouri','4','293,316','584,925','4,248','50.1','0.4'),
  (230,'MO','Missouri','5','283,785','573,775','5,681','49.5','0.5'),
  (231,'MO','Missouri','6','305,409','583,457','5,275','52.3','0.5'),
  (232,'MO','Missouri','7','296,455','595,559','2,710','49.8','0.2'),
  (233,'MO','Missouri','8','264,399','567,717','3,947','46.6','0.3'),
  (234,'MT','Montana','At-large','504,421','823,668','2,462','61.2','0.2'),
  (235,'NE','Nebraska','1','234,781','473,676','3,971','49.6','0.4'),
  (236,'NE','Nebraska','2','248,485','467,041','4,132','53.2','0.5'),
  (237,'NE','Nebraska','3','213,304','439,543','3,065','48.5','0.3'),
  (238,'NV','Nevada','1','152,201','418,811','10,703','36.3','0.9'),
  (239,'NV','Nevada','2','287,537','531,489','4,280','54.1','0.4'),
  (240,'NV','Nevada','3','286,168','607,915','11,250','47.1','0.9'),
  (241,'NV','Nevada','4','234,868','516,951','10,773','45.4','0.9'),
  (242,'NH','New Hampshire','1','291,039','540,224','4,909','53.9','0.5'),
  (243,'NH','New Hampshire','2','279,705','529,588','4,458','52.8','0.4'),
  (244,'NJ','New Jersey','1','263,418','542,034','6,191','48.6','0.6'),
  (245,'NJ','New Jersey','2','258,363','531,339','6,456','48.6','0.6'),
  (246,'NJ','New Jersey','3','306,875','570,276','5,881','53.8','0.6'),
  (247,'NJ','New Jersey','4','294,348','539,643','8,273','54.5','0.8'),
  (248,'NJ','New Jersey','5','301,823','527,932','8,667','57.2','0.9'),
  (249,'NJ','New Jersey','6','221,195','502,463','7,651','44','0.7'),
  (250,'NJ','New Jersey','7','322,742','527,076','9,094','61.2','1.1'),
  (251,'NJ','New Jersey','8','153,455','425,604','11,139','36.1','0.9'),
  (252,'NJ','New Jersey','9','200,416','481,499','11,594','41.6','1'),
  (253,'NJ','New Jersey','10','200,159','496,051','9,959','40.4','0.8'),
  (254,'NJ','New Jersey','11','323,574','548,734','8,988','59','1'),
  (255,'NJ','New Jersey','12','252,375','505,683','9,993','49.9','1'),
  (256,'NM','New Mexico','1','249,162','514,775','6,996','48.4','0.7'),
  (257,'NM','New Mexico','2','199,256','484,702','6,155','41.1','0.5'),
  (258,'NM','New Mexico','3','244,893','507,907','5,741','48.2','0.5'),
  (259,'NY','New York','1','274,427','530,436','8,854','51.7','0.9'),
  (260,'NY','New York','2','245,926','515,987','10,089','47.7','0.9'),
  (261,'NY','New York','3','273,130','521,235','9,204','52.4','0.9'),
  (262,'NY','New York','4','267,191','506,457','8,321','52.8','0.9'),
  (263,'NY','New York','5','186,325','501,784','12,659','37.1','0.9'),
  (264,'NY','New York','6','149,540','448,065','12,825','33.4','1'),
  (265,'NY','New York','7','164,835','446,196','14,230','36.9','1.2'),
  (266,'NY','New York','8','204,768','540,660','13,211','37.9','0.9'),
  (267,'NY','New York','9','207,844','486,880','12,651','42.7','1.1'),
  (268,'NY','New York','10','216,272','473,542','10,788','45.7','1'),
  (269,'NY','New York','11','195,100','500,998','8,100','38.9','0.6'),
  (270,'NY','New York','12','256,239','530,252','14,243','48.3','1.3'),
  (271,'NY','New York','13','197,200','505,003','13,783','39','1.1'),
  (272,'NY','New York','14','146,272','392,398','12,236','37.3','1.2'),
  (273,'NY','New York','15','133,913','410,819','11,144','32.6','0.9'),
  (274,'NY','New York','16','226,338','498,243','10,607','45.4','1'),
  (275,'NY','New York','17','257,221','502,861','6,893','51.2','0.7'),
  (276,'NY','New York','18','261,321','524,373','5,240','49.8','0.5'),
  (277,'NY','New York','19','293,570','553,713','5,607','53','0.5'),
  (278,'NY','New York','20','277,066','557,251','5,438','49.7','0.5'),
  (279,'NY','New York','21','239,125','551,303','4,192','43.4','0.3'),
  (280,'NY','New York','22','255,100','539,437','3,753','47.3','0.3'),
  (281,'NY','New York','23','245,899','544,564','3,340','45.2','0.3'),
  (282,'NY','New York','24','265,156','539,797','2,939','49.1','0.3'),
  (283,'NY','New York','25','275,641','543,698','4,648','50.7','0.4'),
  (284,'NY','New York','26','242,371','539,694','5,187','44.9','0.4'),
  (285,'NY','New York','27','293,095','564,383','5,939','51.9','0.5'),
  (286,'NC','North Carolina','1','272,675','566,173','6,735','48.2','0.6'),
  (287,'NC','North Carolina','2','331,704','601,142','7,863','55.2','0.7'),
  (288,'NC','North Carolina','3','187,901','579,504','4,996','32.4','0.3'),
  (289,'NC','North Carolina','4','341,403','624,834','7,413','54.6','0.6'),
  (290,'NC','North Carolina','5','280,385','572,721','3,131','49','0.3'),
  (291,'NC','North Carolina','6','284,360','567,392','5,676','50.1','0.5'),
  (292,'NC','North Carolina','7','282,312','613,510','5,769','46','0.4'),
  (293,'NC','North Carolina','8','255,521','581,896','5,618','43.9','0.4'),
  (294,'NC','North Carolina','9',' -   ','561,804','6,951',' -   ',' -   '),
  (295,'NC','North Carolina','10','278,228','585,102','4,892','47.6','0.4'),
  (296,'NC','North Carolina','11','300,666','604,505','5,083','49.7','0.4'),
  (297,'NC','North Carolina','12','279,138','591,843','7,234','47.2','0.6'),
  (298,'NC','North Carolina','13','286,316','579,274','7,005','49.4','0.6'),
  (299,'ND','North Dakota','At-large','321,532','567,351','3,196','56.7','0.3'),
  (300,'OH','Ohio','1','300,871','541,695','5,990','55.5','0.6'),
  (301,'OH','Ohio','2','289,661','557,971','6,728','51.9','0.6'),
  (302,'OH','Ohio','3','246,677','560,963','8,952','44','0.7'),
  (303,'OH','Ohio','4','257,405','542,874','4,816','47.4','0.4'),
  (304,'OH','Ohio','5','283,617','549,171','4,850','51.6','0.5'),
  (305,'OH','Ohio','6','249,490','545,803','4,800','45.7','0.4'),
  (306,'OH','Ohio','7','260,653','557,024','7,057','46.8','0.6'),
  (307,'OH','Ohio','8','261,133','546,406','2,927','47.8','0.3'),
  (308,'OH','Ohio','9','231,937','545,749','8,394','42.5','0.7'),
  (309,'OH','Ohio','10','281,726','552,514','2,402','51','0.2'),
  (310,'OH','Ohio','11','250,660','524,803','8,831','47.8','0.8'),
  (311,'OH','Ohio','12','341,647','585,940','7,173','58.3','0.7'),
  (312,'OH','Ohio','13','251,370','559,931','7,719','44.9','0.6'),
  (313,'OH','Ohio','14','307,358','553,668','6,479','55.5','0.6'),
  (314,'OH','Ohio','15','292,443','586,092','6,358','49.9','0.5'),
  (315,'OH','Ohio','16','299,710','553,316','8,332','54.2','0.8'),
  (316,'OK','Oklahoma','1','253,171','565,812','2,986','44.7','0.2'),
  (317,'OK','Oklahoma','2','216,002','564,213','2,174','38.3','0.1'),
  (318,'OK','Oklahoma','3','234,065','571,661','2,631','40.9','0.2'),
  (319,'OK','Oklahoma','4','236,638','589,702','4,619','40.1','0.3'),
  (320,'OK','Oklahoma','5','238,960','561,277','5,517','42.6','0.4'),
  (321,'OR','Oregon','1','363,249','606,198','6,201','59.9','0.6'),
  (322,'OR','Oregon','2','368,709','619,186','4,754','59.5','0.5'),
  (323,'OR','Oregon','3','384,326','627,716','5,932','61.2','0.6'),
  (324,'OR','Oregon','4','372,893','638,548','5,000','58.4','0.5'),
  (325,'OR','Oregon','5','358,469','606,523','6,245','59.1','0.6'),
  (326,'PA','Pennsylvania','1','329,798','544,860','4,939','60.5','0.5'),
  (327,'PA','Pennsylvania','2','201,982','496,510','12,153','40.7','1'),
  (328,'PA','Pennsylvania','3','307,997','564,612','11,678','54.6','1.1'),
  (329,'PA','Pennsylvania','4','332,991','543,723','4,822','61.2','0.5'),
  (330,'PA','Pennsylvania','5','304,714','519,983','6,115','58.6','0.7'),
  (331,'PA','Pennsylvania','6','301,828','522,912','4,827','57.7','0.5'),
  (332,'PA','Pennsylvania','7','263,261','552,078','4,662','47.7','0.4'),
  (333,'PA','Pennsylvania','8','248,166','535,133','5,536','46.4','0.5'),
  (334,'PA','Pennsylvania','9','248,927','555,775','5,005','44.8','0.4'),
  (335,'PA','Pennsylvania','10','291,033','552,761','5,816','52.7','0.6'),
  (336,'PA','Pennsylvania','11','277,584','553,568','5,995','50.1','0.5'),
  (337,'PA','Pennsylvania','12','243,872','551,022','3,977','44.3','0.3'),
  (338,'PA','Pennsylvania','13','253,266','545,111','3,919','46.5','0.3'),
  (339,'PA','Pennsylvania','14','261,437','551,164','2,665','47.4','0.2'),
  (340,'PA','Pennsylvania','15','243,572','548,615','4,573','44.4','0.4'),
  (341,'PA','Pennsylvania','16','262,396','539,710','2,919','48.6','0.3'),
  (342,'PA','Pennsylvania','17','325,579','559,285','6,462','58.2','0.7'),
  (343,'PA','Pennsylvania','18','231,472','544,390','6,168','42.5','0.5'),
  (344,'RI','Rhode Island','1','174,083','395,409','6,058','44','0.7'),
  (345,'RI','Rhode Island','2','199,197','407,668','6,982','48.9','0.8'),
  (346,'SC','South Carolina','1','287,433','613,912','6,942','46.8','0.5'),
  (347,'SC','South Carolina','2','257,139','537,342','7,030','47.9','0.6'),
  (348,'SC','South Carolina','3','226,204','534,772','4,868','42.3','0.4'),
  (349,'SC','South Carolina','4','243,950','533,533','6,329','45.7','0.5'),
  (350,'SC','South Carolina','5','248,579','552,247','4,381','45','0.4'),
  (351,'SC','South Carolina','6','206,433','506,843','10,563','40.7','0.8'),
  (352,'SC','South Carolina','7','239,554','571,428','3,454','41.9','0.3'),
  (353,'SD','South Dakota','At-large','335,965','647,089','2,674','51.9','0.2'),
  (354,'TN','Tennessee','1','224,282','563,918','3,157','39.8','0.2'),
  (355,'TN','Tennessee','2','262,134','583,056','3,129','45','0.2'),
  (356,'TN','Tennessee','3','245,765','571,456','3,926','43','0.3'),
  (357,'TN','Tennessee','4','232,451','590,540','4,743','39.4','0.3'),
  (358,'TN','Tennessee','5','262,248','563,797','5,435','46.5','0.4'),
  (359,'TN','Tennessee','6','248,740','591,603','3,690','42','0.3'),
  (360,'TN','Tennessee','7','254,384','578,288','3,700','44','0.3'),
  (361,'TN','Tennessee','8','248,345','525,277','4,889','47.3','0.4'),
  (362,'TN','Tennessee','9','181,476','507,231','5,835','35.8','0.4'),
  (363,'TX','Texas','1','232,720','511,974','4,743','45.5','0.4'),
  (364,'TX','Texas','2','263,392','520,180','17,389','50.6','1.7'),
  (365,'TX','Texas','3','312,358','563,318','7,999','55.4','0.8'),
  (366,'TX','Texas','4','249,245','543,354','5,315','45.9','0.4'),
  (367,'TX','Texas','5','209,507','480,610','7,387','43.6','0.7'),
  (368,'TX','Texas','6','256,042','554,709','11,109','46.2','0.9'),
  (369,'TX','Texas','7','243,601','448,262','17,967','54.3','2.2'),
  (370,'TX','Texas','8','273,170','584,039','8,995','46.8','0.7'),
  (371,'TX','Texas','9','153,001','445,634','16,319','34.3','1.3'),
  (372,'TX','Texas','10','307,827','593,629','15,051','51.9','1.3'),
  (373,'TX','Texas','11','220,377','542,570','6,851','40.6','0.5'),
  (374,'TX','Texas','12','268,491','572,411','11,504','46.9','0.9'),
  (375,'TX','Texas','13','207,285','493,390','5,774','42','0.5'),
  (376,'TX','Texas','14','234,528','532,153','6,811','44.1','0.6'),
  (377,'TX','Texas','15','164,802','435,170','10,959','37.9','1'),
  (378,'TX','Texas','16','181,754','458,940','7,531','39.6','0.6'),
  (379,'TX','Texas','17','237,351','550,601','9,229','43.1','0.7'),
  (380,'TX','Texas','18','184,332','480,387','17,751','38.4','1.4'),
  (381,'TX','Texas','19','201,985','509,891','4,649','39.6','0.4'),
  (382,'TX','Texas','20','171,963','549,483','15,793','31.3','0.9'),
  (383,'TX','Texas','21','353,617','622,228','13,955','56.8','1.3'),
  (384,'TX','Texas','22','297,405','577,164','14,484','51.5','1.3'),
  (385,'TX','Texas','23','210,069','507,547','12,255','41.4','1'),
  (386,'TX','Texas','24','263,418','503,766','10,913','52.3','1.1'),
  (387,'TX','Texas','25','304,553','570,238','11,587','53.4','1.1'),
  (388,'TX','Texas','26','312,505','605,249','8,073','51.6','0.7'),
  (389,'TX','Texas','27','207,421','517,267','6,497','40.1','0.5'),
  (390,'TX','Texas','28','139,226','434,305','11,134','32.1','0.8'),
  (391,'TX','Texas','29','117,494','369,239','12,870','31.8','1.1'),
  (392,'TX','Texas','30','183,174','479,082','11,936','38.2','1'),
  (393,'TX','Texas','31','286,007','602,236','5,813','47.5','0.5'),
  (394,'TX','Texas','32','275,620','505,867','10,389','54.5','1.1'),
  (395,'TX','Texas','33','119,224','360,226','12,748','33.1','1.2'),
  (396,'TX','Texas','34','143,068','424,863','9,876','33.7','0.8'),
  (397,'TX','Texas','35','194,067','532,967','13,421','36.4','0.9'),
  (398,'TX','Texas','36','221,956','519,385','9,934','42.7','0.8'),
  (399,'UT','Utah','1','254,333','521,517','4,200','48.8','0.4'),
  (400,'UT','Utah','2','270,044','529,608','7,295','51','0.7'),
  (401,'UT','Utah','3','258,858','517,848','6,002','50','0.6'),
  (402,'UT','Utah','4','269,271','518,368','8,401','51.9','0.8'),
  (403,'VT','Vermont','At-large','278,230','500,274','2,062','55.6','0.2'),
  (404,'VA','Virginia','1','332,101','590,281','8,602','56.3','0.8'),
  (405,'VA','Virginia','2','273,400','559,397','6,204','48.9','0.5'),
  (406,'VA','Virginia','3','217,722','559,137','7,090','38.9','0.5'),
  (407,'VA','Virginia','4','299,854','579,606','9,665','51.7','0.9'),
  (408,'VA','Virginia','5','310,926','578,531','7,084','53.7','0.7'),
  (409,'VA','Virginia','6','281,377','582,756','4,662','48.3','0.4'),
  (410,'VA','Virginia','7','349,803','588,061','8,567','59.5','0.9'),
  (411,'VA','Virginia','8','324,748','533,417','10,149','60.9','1.2'),
  (412,'VA','Virginia','9','246,980','567,315','4,437','43.5','0.3'),
  (413,'VA','Virginia','10','367,795','565,197','8,256','65.1','1'),
  (414,'VA','Virginia','11','308,250','509,988','10,817','60.4','1.3'),
  (415,'WA','Washington','1','332,743','519,555','10,068','64','1.2'),
  (416,'WA','Washington','2','294,833','558,321','7,945','52.8','0.8'),
  (417,'WA','Washington','3','307,226','544,994','4,118','56.4','0.4'),
  (418,'WA','Washington','4','225,336','443,137','5,909','50.9','0.7'),
  (419,'WA','Washington','5','320,347','551,532','3,876','58.1','0.4'),
  (420,'WA','Washington','6','323,086','570,991','6,932','56.6','0.7'),
  (421,'WA','Washington','7','394,681','600,321','11,081','65.7','1.2'),
  (422,'WA','Washington','8','313,057','522,952','10,928','59.9','1.3'),
  (423,'WA','Washington','9','240,567','499,184','11,809','48.2','1.1'),
  (424,'WA','Washington','10','270,075','544,552','6,928','49.6','0.6'),
  (425,'WV','West Virginia','1','198,214','486,327','3,632','40.8','0.3'),
  (426,'WV','West Virginia','2','204,792','487,208','3,478','42','0.3'),
  (427,'WV','West Virginia','3','174,985','457,623','2,050','38.2','0.2'),
  (428,'WI','Wisconsin','1','325,317','539,789','5,165','60.3','0.6'),
  (429,'WI','Wisconsin','2','317,295','577,976','3,636','54.9','0.3'),
  (430,'WI','Wisconsin','3','314,989','566,700','2,657','55.6','0.3'),
  (431,'WI','Wisconsin','4','273,087','493,143','4,985','55.4','0.6'),
  (432,'WI','Wisconsin','5','364,288','558,805','5,239','65.2','0.6'),
  (433,'WI','Wisconsin','6','325,065','556,485','2,532','58.4','0.3'),
  (434,'WI','Wisconsin','7','322,840','552,651','2,556','58.4','0.3'),
  (435,'WI','Wisconsin','8','328,774','556,205','2,262','59.1','0.2'),
  (436,'WY','Wyoming','At-large','205,275','433,644','2,221','47.3','0.2');