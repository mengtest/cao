###################################################
#20200414[终焉誓约][任务脚本]任务-装备进阶材料 合成消耗调整(倪祖伟)
#by:倪祖伟
#date:2020-04-14
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-367925.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `item_compound` WHERE `id` in (2011032,2011043,2011054,2011064,2011074,2012032,2012043,2012054,2012064,2012074,2013032,2013043,2013054,2013064,2013074,2014032,2014043,2014054,2014064,2014074,2021032,2021043,2021054,2021064,2021074,2022032,2022043,2022054,2022064,2022074,2023032,2023043,2023054,2023064,2023074,2024032,2024043,2024054,2024064,2024074,2041032,2041043,2041054,2041064,2041074,2042032,2042043,2042054,2042064,2042074,2043032,2043043,2043054,2043064,2043074,2044032,2044043,2044054,2044064,2044074,2051032,2051043,2051054,2051064,2051074,2052032,2052043,2052054,2052064,2052074,2053032,2053043,2053054,2053064,2053074,2054032,2054043,2054054,2054064,2054074,2061032,2061043,2061054,2061064,2061074,2062032,2062043,2062054,2062064,2062074,2063032,2063043,2063054,2063064,2063074,2064032,2064043,2064054,2064064,2064074);
###################################################
insert into item_compound(`id`,`money`,`core_id`,`core_num`,`minor_id1`,`minor_num1`,`minor_id2`,`minor_num2`,`minor_id3`,`minor_num3`) values
('2011032','2000','2011021','2','0','0','0','0','0','0'),
('2011043','3000','2011032','3','0','2000054','1','0','0','0'),
('2011054','5000','2011043','5','2000054','2000064','1','0','0','0'),
('2011064','10000','2011054','5','2000064','2000074','1','0','0','0'),
('2012032','2000','2012021','2','0','0','0','0','0','0'),
('2012043','3000','2012032','3','0','2000054','1','0','0','0'),
('2012054','5000','2012043','5','2000054','2000064','1','0','0','0'),
('2012064','10000','2012054','5','2000064','2000074','1','0','0','0'),
('2013032','2000','2013021','2','0','0','0','0','0','0'),
('2013043','3000','2013032','3','0','2000054','1','0','0','0'),
('2013054','5000','2013043','5','2000054','2000064','1','0','0','0'),
('2013064','10000','2013054','5','2000064','2000074','1','0','0','0'),
('2014032','2000','2014021','2','0','0','0','0','0','0'),
('2014043','3000','2014032','3','0','2000054','1','0','0','0'),
('2014054','5000','2014043','5','2000054','2000064','1','0','0','0'),
('2014064','10000','2014054','5','2000064','2000074','1','0','0','0'),
('2021032','2000','2021021','2','0','0','0','0','0','0'),
('2021043','3000','2021032','3','0','2000054','1','0','0','0'),
('2021054','5000','2021043','5','2000054','2000064','1','0','0','0'),
('2021064','10000','2021054','5','2000064','2000074','1','0','0','0'),
('2022032','2000','2022021','2','0','0','0','0','0','0'),
('2022043','3000','2022032','3','0','2000054','1','0','0','0'),
('2022054','5000','2022043','5','2000054','2000064','1','0','0','0'),
('2022064','10000','2022054','5','2000064','2000074','1','0','0','0'),
('2023032','2000','2023021','2','0','0','0','0','0','0'),
('2023043','3000','2023032','3','0','2000054','1','0','0','0'),
('2023054','5000','2023043','5','2000054','2000064','1','0','0','0'),
('2023064','10000','2023054','5','2000064','2000074','1','0','0','0'),
('2024032','2000','2024021','2','0','0','0','0','0','0'),
('2024043','3000','2024032','3','0','2000054','1','0','0','0'),
('2024054','5000','2024043','5','2000054','2000064','1','0','0','0'),
('2024064','10000','2024054','5','2000064','2000074','1','0','0','0'),
('2041032','2000','2041021','2','0','0','0','0','0','0'),
('2041043','3000','2041032','3','0','2000054','1','0','0','0'),
('2041054','5000','2041043','5','2000054','2000064','1','0','0','0'),
('2041064','10000','2041054','5','2000064','2000074','1','0','0','0'),
('2042032','2000','2042021','2','0','0','0','0','0','0'),
('2042043','3000','2042032','3','0','2000054','1','0','0','0'),
('2042054','5000','2042043','5','2000054','2000064','1','0','0','0'),
('2042064','10000','2042054','5','2000064','2000074','1','0','0','0'),
('2043032','2000','2043021','2','0','0','0','0','0','0'),
('2043043','3000','2043032','3','0','2000054','1','0','0','0'),
('2043054','5000','2043043','5','2000054','2000064','1','0','0','0'),
('2043064','10000','2043054','5','2000064','2000074','1','0','0','0'),
('2044032','2000','2044021','2','0','0','0','0','0','0'),
('2044043','3000','2044032','3','0','2000054','1','0','0','0'),
('2044054','5000','2044043','5','2000054','2000064','1','0','0','0'),
('2044064','10000','2044054','5','2000064','2000074','1','0','0','0'),
('2051032','2000','2051021','2','0','0','0','0','0','0'),
('2051043','3000','2051032','3','0','2000054','1','0','0','0'),
('2051054','5000','2051043','5','2000054','2000064','1','0','0','0'),
('2051064','10000','2051054','5','2000064','2000074','1','0','0','0'),
('2052032','2000','2052021','2','0','0','0','0','0','0'),
('2052043','3000','2052032','3','0','2000054','1','0','0','0'),
('2052054','5000','2052043','5','2000054','2000064','1','0','0','0'),
('2052064','10000','2052054','5','2000064','2000074','1','0','0','0'),
('2053032','2000','2053021','2','0','0','0','0','0','0'),
('2053043','3000','2053032','3','0','2000054','1','0','0','0'),
('2053054','5000','2053043','5','2000054','2000064','1','0','0','0'),
('2053064','10000','2053054','5','2000064','2000074','1','0','0','0'),
('2054032','2000','2054021','2','0','0','0','0','0','0'),
('2054043','3000','2054032','3','0','2000054','1','0','0','0'),
('2054054','5000','2054043','5','2000054','2000064','1','0','0','0'),
('2054064','10000','2054054','5','2000064','2000074','1','0','0','0'),
('2061032','2000','2061021','2','0','0','0','0','0','0'),
('2061043','3000','2061032','3','0','2000054','1','0','0','0'),
('2061054','5000','2061043','5','2000054','2000064','1','0','0','0'),
('2061064','10000','2061054','5','2000064','2000074','1','0','0','0'),
('2062032','2000','2062021','2','0','0','0','0','0','0'),
('2062043','3000','2062032','3','0','2000054','1','0','0','0'),
('2062054','5000','2062043','5','2000054','2000064','1','0','0','0'),
('2062064','10000','2062054','5','2000064','2000074','1','0','0','0'),
('2063032','2000','2063021','2','0','0','0','0','0','0'),
('2063043','3000','2063032','3','0','2000054','1','0','0','0'),
('2063054','5000','2063043','5','2000054','2000064','1','0','0','0'),
('2063064','10000','2063054','5','2000064','2000074','1','0','0','0'),
('2064032','2000','2064021','2','0','0','0','0','0','0'),
('2064043','3000','2064032','3','0','2000054','1','0','0','0'),
('2064054','5000','2064043','5','2000054','2000064','1','0','0','0'),
('2064064','10000','2064054','5','2000064','2000074','1','0','0','0');
