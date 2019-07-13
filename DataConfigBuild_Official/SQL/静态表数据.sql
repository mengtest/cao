###################################################
#20190702[终焉誓约][数据配置]事件监听系统—本命相关事件监听(李宏伟)
#by:李宏伟
#date:2019-07-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336738.aspx
###################################################
#注释部分
#DELETE FROM `monitor`  WHERE `id` >= 2246 and `id` <= 2253;

#打开注释部分

###################################################

INSERT INTO `monitor` (`id`, `monitor_type`, `type`, `type_id`, `num_type`, `data1`, `data2`, `data3`, `data4`, `mask1`, `mask2`) VALUES 
(2246, 2, 6, 1, 2, 10, 4163, 0, 0, 7, 60),
(2247, 2, 6, 1, 2, 20, 4163, 0, 0, 8, 1),
(2248, 2, 6, 1, 2, 10, 101164, 0, 0, 8, 2),
(2249, 2, 6, 1, 2, 20, 101164, 0, 0, 8, 3),
(2250, 2, 6, 2, 2, 3, 4163, 0, 0, 8, 4),
(2251, 2, 6, 2, 2, 6, 4163, 0, 0, 8, 5),
(2252, 2, 6, 2, 2, 3, 101164, 0, 0, 8, 6),
(2253, 2, 6, 2, 2, 6, 101164, 0, 0, 8, 7);





###################################################
#20190703[终焉誓约][数据配置]军团悬赏排名奖励邮件下发SQL数据(李宏伟)
#by:李宏伟
#date:2019-07-03
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336737.aspx
###################################################
#注释部分

#打开注释部分
DELETE FROM `syn_reward`  WHERE (`id` >= 1 and `id` <= 240) and `type` = 1;

###################################################

###################################################
#20190702[终焉誓约][测试脚本]TQD90933_29【终焉誓约】事件监听系统—物品抽取相关事件监听_V1.00-SQL数据(林多娜)
#by:林多娜
#date:2019-07-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336739.aspx
###################################################
#注释部分
#delete from monitor where id >= 2254 and id <= 2263;
#打开注释部分

###################################################

insert into monitor(`id`,`monitor_type`,`type`,`type_id`,`num_type`,`data1`,`data2`,`data3`,`data4`,`mask1`,`mask2`) values
('2254','3','24','1','1','1','4000055','3060030','0','2','17'),
('2255','3','24','1','1','10','4000055','3060030','0','2','17'),
('2256','3','24','1','1','100','4000055','3060030','0','2','17'),
('2257','3','24','1','1','500','4000055','3060030','0','2','17'),
('2258','3','24','1','1','1000','4000055','3060030','0','2','17'),
('2259','3','24','1','1','1','4000056','3060030','0','2','18'),
('2260','3','24','1','1','10','4000056','3060030','0','2','18'),
('2261','3','24','1','1','100','4000056','3060030','0','2','18'),
('2262','3','24','1','1','500','4000056','3060030','0','2','18'),
('2263','3','24','1','1','1000','4000056','3060030','0','2','18');

###################################################
#20190705[终焉誓约][数据配置]军团红包系统红包领取及发放(苏亚玲)
#by:苏亚玲
#date:2019-07-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336736.aspx
###################################################
#注释部分

#打开注释部分

###################################################

update luckymoney_type set min_num='2' where id=1025;
update luckymoney_type set min_num='2' where id=1024;
update luckymoney_type set min_num='2' where id=1023;
update luckymoney_type set min_num='2' where id=1022;
update luckymoney_type set min_num='2' where id=1021;
update luckymoney_type set min_num='2' where id=1020;
update luckymoney_type set min_num='2' where id=1019;
update luckymoney_type set min_num='4' where id=1018;
update luckymoney_type set min_num='7' where id=1017;
update luckymoney_type set min_num='16' where id=1016;
update luckymoney_type set min_num='2' where id=1015;
update luckymoney_type set min_num='4' where id=1014;
update luckymoney_type set min_num='6' where id=1013;
update luckymoney_type set min_num='3' where id=1012;
update luckymoney_type set min_num='5' where id=1011;
update luckymoney_type set min_num='7' where id=1010;
update luckymoney_type set min_num='2' where id=1009;
update luckymoney_type set min_num='2' where id=1008;
update luckymoney_type set min_num='2' where id=1007;
update luckymoney_type set min_num='2' where id=1006;
update luckymoney_type set min_num='2' where id=1005;
update luckymoney_type set min_num='2' where id=1004;
update luckymoney_type set min_num='2' where id=1003;
update luckymoney_type set min_num='4' where id=1002;
update luckymoney_type set min_num='7' where id=1001;
update luckymoney_type set min_num='16' where id=1000;
update luckymoney_type set min_num='32' where id=1026;
update luckymoney_type set min_num='16' where id=1027;
update luckymoney_type set min_num='9' where id=1028;
update luckymoney_type set min_num='6' where id=1029;
update luckymoney_type set min_num='6' where id=1030;
update luckymoney_type set min_num='6' where id=1031;
update luckymoney_type set min_num='6' where id=1032;
update luckymoney_type set min_num='6' where id=1033;
update luckymoney_type set min_num='6' where id=1034;
update luckymoney_type set min_num='6' where id=1035;
update luckymoney_type set min_num='4' where id=1036;
update luckymoney_type set min_num='4' where id=1037;
update luckymoney_type set min_num='4' where id=1038;
update luckymoney_type set min_num='4' where id=1039;
update luckymoney_type set min_num='4' where id=1040;
update luckymoney_type set min_num='4' where id=1041;
update luckymoney_type set min_num='4' where id=1042;
update luckymoney_type set min_num='4' where id=1043;
update luckymoney_type set min_num='4' where id=1044;
update luckymoney_type set min_num='4' where id=1045;
update luckymoney_type set min_num='4' where id=1046;
update luckymoney_type set min_num='4' where id=1047;
update luckymoney_type set min_num='4' where id=1048;
update luckymoney_type set min_num='4' where id=1049;
update luckymoney_type set min_num='4' where id=1050;
update luckymoney_type set min_num='4' where id=1051;
update luckymoney_type set min_num='4' where id=1052;
update luckymoney_type set min_num='4' where id=1053;
update luckymoney_type set min_num='4' where id=1054;
update luckymoney_type set min_num='4' where id=1055;
update luckymoney_type set min_num='4' where id=1056;
update luckymoney_type set min_num='4' where id=1057;
update luckymoney_type set min_num='4' where id=1058;
update luckymoney_type set min_num='4' where id=1059;
update luckymoney_type set min_num='4' where id=1060;
update luckymoney_type set min_num='4' where id=1061;
update luckymoney_type set min_num='4' where id=1062;
update luckymoney_type set min_num='4' where id=1063;
update luckymoney_type set min_num='4' where id=1064;
update luckymoney_type set min_num='4' where id=1065;
update luckymoney_type set min_num='4' where id=1066;
update luckymoney_type set min_num='4' where id=1067;
update luckymoney_type set min_num='4' where id=1068;
update luckymoney_type set min_num='4' where id=1069;
update luckymoney_type set min_num='4' where id=1070;
update luckymoney_type set min_num='4' where id=1071;
update luckymoney_type set min_num='4' where id=1072;
update luckymoney_type set min_num='4' where id=1073;
update luckymoney_type set min_num='4' where id=1074;
update luckymoney_type set min_num='4' where id=1075;
update luckymoney_type set min_num='2' where id=1076;
update luckymoney_type set min_num='2' where id=1077;
update luckymoney_type set min_num='2' where id=1078;
update luckymoney_type set min_num='2' where id=1079;
update luckymoney_type set min_num='2' where id=1080;
update luckymoney_type set min_num='2' where id=1081;
update luckymoney_type set min_num='2' where id=1082;
update luckymoney_type set min_num='2' where id=1083;
update luckymoney_type set min_num='2' where id=1084;
update luckymoney_type set min_num='2' where id=1085;
update luckymoney_type set min_num='2' where id=1086;
update luckymoney_type set min_num='2' where id=1087;
update luckymoney_type set min_num='2' where id=1088;
update luckymoney_type set min_num='2' where id=1089;
update luckymoney_type set min_num='2' where id=1090;
update luckymoney_type set min_num='2' where id=1091;
update luckymoney_type set min_num='2' where id=1092;
update luckymoney_type set min_num='2' where id=1093;
update luckymoney_type set min_num='2' where id=1094;
update luckymoney_type set min_num='2' where id=1095;
update luckymoney_type set min_num='2' where id=1096;
update luckymoney_type set min_num='2' where id=1097;
update luckymoney_type set min_num='2' where id=1098;
update luckymoney_type set min_num='2' where id=1099;
update luckymoney_type set min_num='2' where id=1100;
update luckymoney_type set min_num='2' where id=1101;
update luckymoney_type set min_num='2' where id=1102;
update luckymoney_type set min_num='2' where id=1103;
update luckymoney_type set min_num='2' where id=1104;
update luckymoney_type set min_num='2' where id=1105;
update luckymoney_type set min_num='2' where id=1106;
update luckymoney_type set min_num='2' where id=1107;
update luckymoney_type set min_num='2' where id=1108;
update luckymoney_type set min_num='2' where id=1109;
update luckymoney_type set min_num='2' where id=1110;
update luckymoney_type set min_num='2' where id=1111;
update luckymoney_type set min_num='2' where id=1112;
update luckymoney_type set min_num='2' where id=1113;
update luckymoney_type set min_num='2' where id=1114;
update luckymoney_type set min_num='2' where id=1115;
update luckymoney_type set min_num='2' where id=1116;
update luckymoney_type set min_num='2' where id=1117;
update luckymoney_type set min_num='2' where id=1118;
update luckymoney_type set min_num='2' where id=1119;
update luckymoney_type set min_num='2' where id=1120;
update luckymoney_type set min_num='2' where id=1121;
update luckymoney_type set min_num='2' where id=1122;
update luckymoney_type set min_num='2' where id=1123;
update luckymoney_type set min_num='2' where id=1124;
update luckymoney_type set min_num='2' where id=1125;
update luckymoney_type set min_num='2' where id=1126;
update luckymoney_type set min_num='4' where id=1132;
update luckymoney_type set min_num='2' where id=1136;
update luckymoney_type set min_num='2' where id=1137;
update luckymoney_type set min_num='7' where id=1138;
update luckymoney_type set min_num='12' where id=1139;
update luckymoney_type set min_num='19' where id=1140;
update luckymoney_type set min_num='32' where id=1141;
update luckymoney_type set min_num='7' where id=1142;
update luckymoney_type set min_num='12' where id=1143;
update luckymoney_type set min_num='19' where id=1144;
update luckymoney_type set min_num='32' where id=1145;
update luckymoney_type set min_num='7' where id=1146;
update luckymoney_type set min_num='12' where id=1147;
update luckymoney_type set min_num='19' where id=1148;
update luckymoney_type set min_num='32' where id=1149;
update luckymoney_type set min_num='7' where id=1150;
update luckymoney_type set min_num='12' where id=1151;
update luckymoney_type set min_num='19' where id=1152;
update luckymoney_type set min_num='32' where id=1153;
update luckymoney_type set min_num='7' where id=1154;
update luckymoney_type set min_num='12' where id=1155;
update luckymoney_type set min_num='19' where id=1156;
update luckymoney_type set min_num='32' where id=1157;
update luckymoney_type set min_num='1' where id=1158;
update luckymoney_type set min_num='1' where id=1159;
update luckymoney_type set min_num='4' where id=1160;
update luckymoney_type set min_num='4' where id=1161;
update luckymoney_type set min_num='7' where id=1162;
update luckymoney_type set min_num='16' where id=1163;
update luckymoney_type set min_num='1' where id=1164;
update luckymoney_type set min_num='1' where id=1165;
update luckymoney_type set min_num='4' where id=1166;
update luckymoney_type set min_num='4' where id=1167;
update luckymoney_type set min_num='7' where id=1168;
update luckymoney_type set min_num='16' where id=1169;
update luckymoney_type set min_num='1' where id=1170;
update luckymoney_type set min_num='1' where id=1171;
update luckymoney_type set min_num='4' where id=1172;
update luckymoney_type set min_num='4' where id=1173;
update luckymoney_type set min_num='7' where id=1174;
update luckymoney_type set min_num='16' where id=1175;
update luckymoney_type set min_num='1' where id=1176;
update luckymoney_type set min_num='1' where id=1177;
update luckymoney_type set min_num='4' where id=1178;
update luckymoney_type set min_num='4' where id=1179;
update luckymoney_type set min_num='7' where id=1180;
update luckymoney_type set min_num='16' where id=1181;
update luckymoney_type set min_num='1' where id=1182;
update luckymoney_type set min_num='2' where id=1183;
update luckymoney_type set min_num='7' where id=1184;
update luckymoney_type set min_num='16' where id=1185;
update luckymoney_type set min_num='1' where id=1186;
update luckymoney_type set min_num='2' where id=1187;
update luckymoney_type set min_num='7' where id=1188;
update luckymoney_type set min_num='16' where id=1189;
update luckymoney_type set min_num='1' where id=1190;
update luckymoney_type set min_num='2' where id=1191;
update luckymoney_type set min_num='7' where id=1192;
update luckymoney_type set min_num='16' where id=1193;
update luckymoney_type set min_num='1' where id=1194;
update luckymoney_type set min_num='2' where id=1195;
update luckymoney_type set min_num='7' where id=1196;
update luckymoney_type set min_num='16' where id=1197;
update luckymoney_type set min_num='2' where id=1198;
update luckymoney_type set min_num='2' where id=1199;
update luckymoney_type set min_num='4' where id=1200;
update luckymoney_type set min_num='4' where id=1201;
update luckymoney_type set min_num='7' where id=1202;
update luckymoney_type set min_num='16' where id=1203;
update luckymoney_type set min_num='2' where id=1204;
update luckymoney_type set min_num='2' where id=1205;
update luckymoney_type set min_num='4' where id=1206;
update luckymoney_type set min_num='4' where id=1207;
update luckymoney_type set min_num='7' where id=1208;
update luckymoney_type set min_num='16' where id=1209;
update luckymoney_type set min_num='2' where id=1210;
update luckymoney_type set min_num='2' where id=1211;
update luckymoney_type set min_num='4' where id=1212;
update luckymoney_type set min_num='4' where id=1213;
update luckymoney_type set min_num='7' where id=1214;
update luckymoney_type set min_num='16' where id=1215;
update luckymoney_type set min_num='2' where id=1216;
update luckymoney_type set min_num='2' where id=1217;
update luckymoney_type set min_num='4' where id=1218;
update luckymoney_type set min_num='4' where id=1219;
update luckymoney_type set min_num='7' where id=1220;
update luckymoney_type set min_num='16' where id=1221;
update luckymoney_type set min_num='2' where id=1222;
update luckymoney_type set min_num='2' where id=1223;
update luckymoney_type set min_num='4' where id=1224;
update luckymoney_type set min_num='4' where id=1225;
update luckymoney_type set min_num='7' where id=1226;
update luckymoney_type set min_num='16' where id=1227;
update luckymoney_type set min_num='4' where id=1228;
update luckymoney_type set min_num='4' where id=1229;
update luckymoney_type set min_num='7' where id=1230;
update luckymoney_type set min_num='7' where id=1231;
update luckymoney_type set min_num='16' where id=1232;
update luckymoney_type set min_num='4' where id=1233;
update luckymoney_type set min_num='4' where id=1234;
update luckymoney_type set min_num='7' where id=1235;
update luckymoney_type set min_num='16' where id=1236;
update luckymoney_type set min_num='4' where id=1237;
update luckymoney_type set min_num='4' where id=1238;
update luckymoney_type set min_num='7' where id=1239;
update luckymoney_type set min_num='16' where id=1240;
update luckymoney_type set min_num='4' where id=1241;
update luckymoney_type set min_num='4' where id=1242;
update luckymoney_type set min_num='7' where id=1243;
update luckymoney_type set min_num='16' where id=1244;
update luckymoney_type set min_num='4' where id=1245;
update luckymoney_type set min_num='4' where id=1246;
update luckymoney_type set min_num='7' where id=1247;
update luckymoney_type set min_num='16' where id=1248;
update luckymoney_type set min_num='4' where id=1249;
update luckymoney_type set min_num='4' where id=1250;
update luckymoney_type set min_num='7' where id=1251;
update luckymoney_type set min_num='16' where id=1252;
update luckymoney_type set min_num='4' where id=1253;
update luckymoney_type set min_num='4' where id=1254;
update luckymoney_type set min_num='7' where id=1255;
update luckymoney_type set min_num='16' where id=1256;
update luckymoney_type set min_num='4' where id=1257;
update luckymoney_type set min_num='4' where id=1258;
update luckymoney_type set min_num='7' where id=1259;
update luckymoney_type set min_num='16' where id=1260;
update luckymoney_type set min_num='4' where id=1261;
update luckymoney_type set min_num='4' where id=1262;
update luckymoney_type set min_num='7' where id=1263;
update luckymoney_type set min_num='16' where id=1264;
update luckymoney_type set min_num='4' where id=1265;
update luckymoney_type set min_num='4' where id=1266;
update luckymoney_type set min_num='7' where id=1267;
update luckymoney_type set min_num='16' where id=1268;
update luckymoney_type set min_num='4' where id=1269;
update luckymoney_type set min_num='4' where id=1270;
update luckymoney_type set min_num='7' where id=1271;
update luckymoney_type set min_num='16' where id=1272;
update luckymoney_type set min_num='7' where id=1273;
update luckymoney_type set min_num='9' where id=1274;
update luckymoney_type set min_num='12' where id=1275;
update luckymoney_type set min_num='16' where id=1276;
update luckymoney_type set min_num='24' where id=1277;
update luckymoney_type set min_num='32' where id=1278;
update luckymoney_type set min_num='7' where id=1279;
update luckymoney_type set min_num='9' where id=1280;
update luckymoney_type set min_num='12' where id=1281;
update luckymoney_type set min_num='16' where id=1282;
update luckymoney_type set min_num='24' where id=1283;
update luckymoney_type set min_num='32' where id=1284;
update luckymoney_type set min_num='7' where id=1285;
update luckymoney_type set min_num='9' where id=1286;
update luckymoney_type set min_num='12' where id=1287;
update luckymoney_type set min_num='16' where id=1288;
update luckymoney_type set min_num='24' where id=1289;
update luckymoney_type set min_num='32' where id=1290;
update luckymoney_type set min_num='7' where id=1291;
update luckymoney_type set min_num='9' where id=1292;
update luckymoney_type set min_num='12' where id=1293;
update luckymoney_type set min_num='16' where id=1294;
update luckymoney_type set min_num='24' where id=1295;
update luckymoney_type set min_num='32' where id=1296;
update luckymoney_type set min_num='7' where id=1297;
update luckymoney_type set min_num='9' where id=1298;
update luckymoney_type set min_num='12' where id=1299;
update luckymoney_type set min_num='16' where id=1300;
update luckymoney_type set min_num='24' where id=1301;
update luckymoney_type set min_num='32' where id=1302;
update luckymoney_type set min_num='2' where id=1303;
update luckymoney_type set min_num='4' where id=1304;
update luckymoney_type set min_num='4' where id=1305;
update luckymoney_type set min_num='7' where id=1306;
update luckymoney_type set min_num='16' where id=1307;
update luckymoney_type set min_num='2' where id=1308;
update luckymoney_type set min_num='4' where id=1309;
update luckymoney_type set min_num='4' where id=1310;
update luckymoney_type set min_num='7' where id=1311;
update luckymoney_type set min_num='16' where id=1312;
update luckymoney_type set min_num='2' where id=1313;
update luckymoney_type set min_num='4' where id=1314;
update luckymoney_type set min_num='4' where id=1315;
update luckymoney_type set min_num='7' where id=1316;
update luckymoney_type set min_num='16' where id=1317;
update luckymoney_type set min_num='2' where id=1318;
update luckymoney_type set min_num='4' where id=1319;
update luckymoney_type set min_num='4' where id=1320;
update luckymoney_type set min_num='7' where id=1321;
update luckymoney_type set min_num='16' where id=1322;
update luckymoney_type set min_num='2' where id=1323;
update luckymoney_type set min_num='4' where id=1324;
update luckymoney_type set min_num='4' where id=1325;
update luckymoney_type set min_num='7' where id=1326;
update luckymoney_type set min_num='16' where id=1327;

###################################################
#20190702[终焉誓约][测试脚本]事件监听系统—抽卡相关事件监听_V1.00(倪祖伟)
#by:倪祖伟
#date:2019-07-02
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336744.aspx
###################################################
#注释部分
#DELETE FROM `monitor` WHERE `id` >=2264 AND `id` <=2268;
#打开注释部分
###################################################
INSERT INTO `monitor` (`id`, `monitor_type`, `type`, `type_id`, `num_type`, `data1`, `data2`, `data3`, `data4`, `mask1`, `mask2`) VALUES 
(2264, 3, 23, 1, 1, 5, 4, 0, 0, 2, 19),
(2265, 3, 23, 1, 1, 5, 3, 0, 0, 2, 20),
(2266, 3, 23, 2, 1, 5, 4, 0, 0, 3, 9),
(2267, 3, 23, 2, 1, 5, 3, 0, 0, 3, 10),
(2268, 3, 23, 2, 1, 5, 2, 0, 0, 3, 11);

###################################################
#20190705[终焉誓约][数据配置]事件监听王牌通缉相关事件监听(苏亚玲)
#by:苏亚玲
#date:2019-07-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336745.aspx
###################################################
#注释部分
#delete from monitor where id = 2285;
#打开注释部分

###################################################

insert into monitor(`id`,`monitor_type`,`type`,`type_id`,`num_type`,`data1`,`data2`,`data3`,`data4`,`mask1`,`mask2`) values
('2285','3','22','1','1','1','4','0','0','3','16');


###################################################
#20190701[终焉誓约][数据配置]事件监听系统—圣界来袭相关事件监听_V1.00-SQL数据(孟志远)
#by:孟志远
#date:2019-07-01
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336743.aspx
###################################################
#注释部分
#delete from monitor where id = 2269;
#打开注释部分

###################################################
insert into monitor(`id`,`monitor_type`,`type`,`type_id`,`num_type`,`data1`,`data2`,`data3`,`data4`,`mask1`,`mask2`) values
('2269','3','21','1','1','1','4','0','0','3','12');


###################################################
#20190628[终焉誓约][数据配置]事件监听系统—讨伐领主相关事件监听_V1.01-SQL数据(黄业勤)
#by:黄业勤
#date:2019-06-28
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336742.aspx
###################################################
#注释部分
#DELETE FROM `monitor` WHERE `id` = 2222;
#打开注释部分
###################################################
INSERT INTO `monitor` (`id`, `monitor_type`, `type`, `type_id`, `num_type`, `data1`, `data2`, `data3`, `data4`, `mask1`, `mask2`) VALUES 
(2222, 3, 17, 3, 1,  1, 4, 0, 0, 3, 5);

###################################################
#20190705[终焉誓约][数据配置]王牌通缉召唤BOSS及单牌刷新(苏亚玲)
#by:苏亚玲
#date:2019-07-05
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336851.aspx
###################################################
#注释部分
#delete from monster_group where id >= 800197 and id <= 800214;
#delete from monster where id >= 1001137 and id <= 1001154;
#delete from attribute where id >= 1001137 and id <= 1001154;
#delete from share_boss where id >= 49 and id <= 66;
#打开注释部分

###################################################

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('800197','幽冥邪神·罗宾','0','4','1001137','0','0','0','0','0','0','600000','0','0','0'),
('800198','隐雾主宰·尼克','0','4','1001138','0','0','0','0','0','0','600000','0','0','0'),
('800199','墓石领主·伊莱','0','3','1001139','0','0','0','0','0','0','600000','0','0','0'),
('800200','夜幕女爵·琳娜','0','4','1001140','0','0','0','0','0','0','600000','0','0','0'),
('800201','阴魂祭司·特尔','0','5','1001141','0','0','0','0','0','0','600000','0','0','0'),
('800202','密林女王·杜莎','0','6','1001142','0','0','0','0','0','0','600000','0','0','0'),
('800203','暗渊战魂','0','2','1001143','0','0','0','0','0','0','600000','0','0','0'),
('800204','禁咒巫使','0','2','1001144','0','0','0','0','0','0','600000','0','0','0'),
('800205','游魂侍灵','0','2','1001145','0','0','0','0','0','0','600000','0','0','0'),
('800206','巫蛊蔷薇','0','1','1001146','0','0','0','0','0','0','600000','0','0','0'),
('800207','戈壁苍蝎','0','1','1001147','0','0','0','0','0','0','600000','0','0','0'),
('800208','怒海鲸魂','0','1','1001148','0','0','0','0','0','0','600000','0','0','0'),
('800209','叛逃骑士','0','1','1001149','0','0','0','0','0','0','600000','0','0','0'),
('800210','梦魇博士','0','1','1001150','0','0','0','0','0','0','600000','0','0','0'),
('800211','盲眼黑巫','0','1','1001151','0','0','0','0','0','0','600000','0','0','0'),
('800212','血赤骸虫','0','1','1001152','0','0','0','0','0','0','600000','0','0','0'),
('800213','深海影鲛','0','1','1001153','0','0','0','0','0','0','600000','0','0','0'),
('800214','裂谷山鹰','0','1','1001154','0','0','0','0','0','0','600000','0','0','0');



insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1001137','幽冥邪神·罗宾','0','2','1','6','1','0','1001137','3005','1003101;1003102;1003103;1003110;1003111;1003112','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001138','隐雾主宰·尼克','0','2','1','6','2','1','1001138','','900001;900002;900003;900004','2,1,3;0,1,1','0','0,1,2;0,2,1,3;0,1,1','0','0'),
('1001139','墓石领主·伊莱','0','2','1','6','2','1','1001139','','900201;900202;900203;900204','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001140','夜幕女爵·琳娜','0','1','1','6','1','0','1001140','','1003701;1003702;1003703;1003704','0,1,2,3','0','0,1,2,3','0','0'),
('1001141','阴魂祭司·特尔','0','2','1','6','1','0','1001141','1141','5201001;5201002;5201003','2,0,1,2','0','2,1,0,2;0,1,2','0','0'),
('1001142','密林女王·杜莎','0','2','2','6','1','1','1001142','','900301;900302;900303;900304','0,1,2,3;1,0,2,1','0','0,2,1,3;0,1,2;0,1,1;1,2,3;1,0,2,1','0','0'),
('1001143','暗渊战魂','0','0','1','6','1','0','1001143','','1003501;1003502;1003503;1003504','0,1,2,3','0','3,1,2;1,0,2,3;2,0,1,3','0','0'),
('1001144','禁咒巫使','0','2','1','6','1','41','1001144','1031','1005701;1005702;1005703;1005704','2,3;0,1,2','0','0,1,2;0,1;2,3','0','0'),
('1001145','游魂侍灵','0','2','1','6','2','1','1001145','','900101;900102;900103;900104','2,1,3;0,1,1','0','0,1,2;0,2,1,3;0,1,1','0','0'),
('1001146','巫蛊蔷薇','0','1','1','4','1','0','1001146','1031','1002201;1002202;1002203','0,1,2;1,0,1,2','0','0,1,2;1,0,1,0,2;0,1,1;1,0,1,2','0','0'),
('1001147','戈壁苍蝎','0','1','1','2','1','0','1001147','1061;1021','1002701;1002702;1002703','0,1,2;0,2','0','0,0,1,2;0,2;0,1,2','0','0'),
('1001148','怒海鲸魂','0','1','1','6','1','0','1001148','1021','1003301;1003302;1003303','0,1,2;0,0,2','0','0,1,2;1,0,1,0,2','0','0'),
('1001149','叛逃骑士','0','1','1','4','1','0','1001149','','5200301;5200302','1,0,0,1;0,1,1','0','0,1,1;1,0,0,1','0','0'),
('1001150','梦魇博士','0','1','1','4','1','0','1001150','1021','1001601;1001602;1001603','0,1,2','0','0,1,0,2;0,1,2','0','0'),
('1001151','盲眼黑巫','0','0','1','6','2','1','1001151','1031','1005801;1005802','0,0,1','0','0,0,1','0','0'),
('1001152','血赤骸虫','0','0','1','2','1','0','1001152','','1005501;1005502','0,0,1','0','0,0,1','0','0'),
('1001153','深海影鲛','0','0','1','5','1','0','1001153','','1004701;1004702','0,1,0;1,0,1,0','0','0,1;1,0,1,0;0,1,0;1,0,1','0','0'),
('1001154','裂谷山鹰','0','1','1','1','1','0','1001154','1051','1002501;1002502;1002503','0,1,0,2;1,0,1,2','0','0,1,2;1,0,1,0,2;0,1,1;1,0,1,2','0','0');

insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1001137','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001138','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001139','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001140','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001141','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001142','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001143','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001144','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001145','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001146','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001147','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001148','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001149','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001150','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001151','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001152','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001153','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1001154','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into share_boss(`id`,`monster_group_id`,`type`,`remain_time`,`min_get_rate`,`max_get_rate`,`min_level`,`max_level`,`reward1_id`,`reward2_id`,`reward3_id`,`reward4_id`,`reward5_id`,`reward6_id`,`reward7_id`,`reward8_id`) values
('49','800197','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('50','800198','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('51','800199','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('52','800200','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('53','800201','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('54','800202','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('55','800203','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('56','800204','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('57','800205','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('58','800206','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('59','800207','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('60','800208','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('61','800209','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('62','800210','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('63','800211','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('64','800212','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('65','800213','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0'),
('66','800214','2','10800','0','10000','0','50','19','19','19','0','0','0','0','0');



###################################################
#20190701[终焉誓约][功能脚本]TQD98117【终焉誓约】广播系统—广播系统总案_V1.00-SQL数据(林多娜)
#by:林多娜
#date:2019-07-01
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336715.aspx
###################################################
#注释部分
#delete from broadcast_type where id >= 1 and id <= 3;
#delete from system_broadcast where id >= 1 and id <= 7; 
#打开注释部分

###################################################

insert into broadcast_type(`id`,`type`,`audience`,`channel`,`monitor_id`,`activity_id`,`data1`) values
('1','1','6','0','2222','0','0'),
('2','1','6','0','2269','0','0'),
('3','1','6','0','2285','0','0');


insert into system_broadcast(`id`,`audience`,`channel`,`activation_time`,`invalid_time`,`loop_time`,`set_time`,`text`,`is_open`) values
('1','0','0','20190702000001','20190711235959','0','120000','现在是北京时间12点整','1'),
('2','0','0','20190702000001','20190711235959','0','120100','现在是北京时间12点1分','0'),
('3','2','1','20190702000001','20190711235959','0','000000;010000;020000;030000;040000;050000;060000','整点报时','1'),
('4','4','2','20190702000001','20190711235959','0','003000;013000;023000;033000;043000;053000;063000','半点报时','1'),
('5','6','3','20190702000001','20190711235959','60','0','每分钟报时','1'),
('6','8','4','20190702003000','20190711235959','1800','0','每半小时报时','1'),
('7','0','0','20190702000001','20190711235959','0','180000','多人副本开启','1');

###################################################
#20190701[终焉誓约][数据配置]王牌通缉玩法总案(苏亚玲)
#by:苏亚玲
#date:2019-07-01
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-336848.aspx
###################################################
#注释部分
#delete from poker_adapt_info where id >= 1 and id <= 594;
#delete from poker_overflow where id >= 1 and id <= 18;
#delete from poker_task where id >= 1 and id <= 72;
#delete from times_limit where id = 51;
#delete from dailyact where id = 10026;
#delete from syn_reward where id >= 10008 and id <= 10013;
#delete from config where id >= 155 and id <= 156;
#delete from itemtype where id = 19;
#打开注释部分

###################################################

INSERT INTO `config` (`id`, `type`, `type_id`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `param1`, `desc`) VALUES 
(155, 28, 1, 3, 3, 0, 0, 0, 0, 0, '', '王牌通缉保底次数'),
(156, 28, 2, 10026, 51, 0, 0, 0, 0, 0, '', '王牌通缉玩法信息');

INSERT INTO `times_limit` (`id`, `type`, `times`, `limit_tag`, `recover_time`, `refresh_time`, `type_desc`) VALUES 
(51, 51, 3, 0, 0, 0, '王牌通缉刷新次数');

INSERT INTO `dailyact` (`id`, `against_id`, `type`, `starttime`, `endtime`, `data1`, `data2`, `data3`, `day`) VALUES 
(10026, 0, 10, 10000, 61600, 0, 0, 0, 0);

insert into itemtype(`id`,`name`,`sort`,`amount_limit`,`flag`,`price`,`awardid`,`actionid`) values
('19','王牌积分','0','0','2','0','0','0');

insert into syn_reward(`id`,`type`,`data1`,`data2`,`data3`,`reward1_id`,`reward1_num`,`reward2_id`,`reward2_num`,`reward3_id`,`reward3_num`,`reward4_id`,`reward4_num`) values
('10008','7','0','1','600','1','50','0','0','0','0','0','0'),
('10009','7','0','2','700','1','100','0','0','0','0','0','0'),
('10010','7','0','3','800','1','150','0','0','0','0','0','0'),
('10011','7','0','4','900','1','200','0','0','0','0','0','0'),
('10012','7','0','5','1000','1','250','0','0','0','0','0','0'),
('10013','7','0','6','1200','1','300','0','0','0','0','0','0');


insert into poker_task(`id`,`taskgroup_id`,`task_id`,`time`,`get_infomation`,`condition1`,`data1`,`condition2`,`data2`,`condition3`,`data3`) values
('1','1','1','1','100','1','8000','2','1','5','2'),
('2','1','2','1','100','1','8000','3','5','6','1'),
('3','1','3','1','100','1','8000','4','4','7','1'),
('4','1','4','1','100','1','8000','8','4','9','5'),
('5','2','1','1','200','1','8000','2','1','5','2'),
('6','2','2','1','200','1','8000','3','5','6','1'),
('7','2','3','1','200','1','8000','4','4','7','1'),
('8','2','4','1','200','1','8000','8','4','9','5'),
('9','3','1','1','300','1','8000','2','1','5','2'),
('10','3','2','1','300','1','8000','3','5','6','1'),
('11','3','3','1','300','1','8000','4','4','7','1'),
('12','3','4','1','300','1','8000','8','4','9','5'),
('13','4','1','1','400','1','8000','2','1','5','2'),
('14','4','2','1','400','1','8000','3','5','6','1'),
('15','4','3','1','400','1','8000','4','4','7','1'),
('16','4','4','1','400','1','8000','8','4','9','5'),
('17','5','1','1','500','1','8000','2','1','5','2'),
('18','5','2','1','500','1','8000','3','5','6','1'),
('19','5','3','1','500','1','8000','4','4','7','1'),
('20','5','4','1','500','1','8000','8','4','9','5'),
('21','6','1','1','600','1','8000','2','1','5','2'),
('22','6','2','1','600','1','8000','3','5','6','1'),
('23','6','3','1','600','1','8000','4','4','7','1'),
('24','6','4','1','600','1','8000','8','4','9','5'),
('25','7','1','1','700','1','8000','2','1','5','2'),
('26','7','2','1','700','1','8000','3','5','6','1'),
('27','7','3','1','700','1','8000','4','4','7','1'),
('28','7','4','1','700','1','8000','8','4','9','5'),
('29','8','1','1','800','1','8000','2','1','5','2'),
('30','8','2','1','800','1','8000','3','5','6','1'),
('31','8','3','1','800','1','8000','4','4','7','1'),
('32','8','4','1','800','1','8000','8','4','9','5'),
('33','9','1','1','900','1','8000','2','1','5','2'),
('34','9','2','1','900','1','8000','3','5','6','1'),
('35','9','3','1','900','1','8000','4','4','7','1'),
('36','9','4','1','900','1','8000','8','4','9','5'),
('37','10','1','1','1000','1','8000','2','1','5','2'),
('38','10','2','1','1000','1','8000','3','5','6','1'),
('39','10','3','1','1000','1','8000','4','4','7','1'),
('40','10','4','1','1000','1','8000','8','4','9','5'),
('41','11','1','1','1100','1','8000','2','1','5','2'),
('42','11','2','1','1100','1','8000','3','5','6','1'),
('43','11','3','1','1100','1','8000','4','4','7','1'),
('44','11','4','1','1100','1','8000','8','4','9','5'),
('45','12','1','1','1200','1','8000','2','1','5','2'),
('46','12','2','1','1200','1','8000','3','5','6','1'),
('47','12','3','1','1200','1','8000','4','4','7','1'),
('48','12','4','1','1200','1','8000','8','4','9','5'),
('49','13','1','1','1300','1','8000','2','1','5','2'),
('50','13','2','1','1300','1','8000','3','5','6','1'),
('51','13','3','1','1300','1','8000','4','4','7','1'),
('52','13','4','1','1300','1','8000','8','4','9','5'),
('53','14','1','1','1400','1','8000','2','1','5','2'),
('54','14','2','1','1400','1','8000','3','5','6','1'),
('55','14','3','1','1400','1','8000','4','4','7','1'),
('56','14','4','1','1400','1','8000','8','4','9','5'),
('57','15','1','1','1500','1','8000','2','1','5','2'),
('58','15','2','1','1500','1','8000','3','5','6','1'),
('59','15','3','1','1500','1','8000','4','4','7','1'),
('60','15','4','1','1500','1','8000','8','4','9','5'),
('61','16','1','1','1600','1','8000','2','1','5','2'),
('62','16','2','1','1600','1','8000','3','5','6','1'),
('63','16','3','1','1600','1','8000','4','4','7','1'),
('64','16','4','1','1600','1','8000','8','4','9','5'),
('65','17','1','1','1700','1','8000','2','1','5','2'),
('66','17','2','1','1700','1','8000','3','5','6','1'),
('67','17','3','1','1700','1','8000','4','4','7','1'),
('68','17','4','1','1700','1','8000','8','4','9','5'),
('69','18','1','1','1800','1','8000','2','1','5','2'),
('70','18','2','1','1800','1','8000','3','5','6','1'),
('71','18','3','1','1800','1','8000','4','4','7','1'),
('72','18','4','1','1800','1','8000','8','4','9','5');


insert into poker_overflow(`id`,`poker_id`,`overflow`,`weight1`,`weight2`) values
('1','111','200','200','300'),
('2','112','200','200','300'),
('3','113','200','200','300'),
('4','114','200','200','300'),
('5','121','250','200','300'),
('6','122','250','200','300'),
('7','123','250','200','300'),
('8','124','250','200','300'),
('9','131','300','200','300'),
('10','132','300','200','300'),
('11','133','300','200','300'),
('12','134','300','200','300'),
('13','141','350','200','300'),
('14','142','350','200','300'),
('15','143','350','200','300'),
('16','144','350','200','300'),
('17','150','400','200','300'),
('18','160','400','200','300');

insert into poker_adapt_info(`id`,`adapt_level`,`poker_id`,`weight`,`boss_id`,`taskgroup_id`,`information`,`point`) values
('1','20','21','200','800214','1','100','200'),
('2','20','22','200','800214','1','100','200'),
('3','20','23','200','800214','1','100','200'),
('4','20','24','200','800214','1','100','200'),
('5','20','31','200','800213','2','100','200'),
('6','20','32','200','800213','2','100','200'),
('7','20','33','200','800213','2','100','200'),
('8','20','34','200','800213','2','100','200'),
('9','20','41','200','800212','3','100','200'),
('10','20','42','200','800212','3','100','200'),
('11','20','43','200','800212','3','100','200'),
('12','20','44','200','800212','3','100','200'),
('13','20','51','200','800211','4','100','200'),
('14','20','52','200','800211','4','100','200'),
('15','20','53','200','800211','4','100','200'),
('16','20','54','200','800211','4','100','200'),
('17','20','61','200','800210','5','100','200'),
('18','20','62','200','800210','5','100','200'),
('19','20','63','200','800210','5','100','200'),
('20','20','64','200','800210','5','100','200'),
('21','20','71','200','800209','6','100','200'),
('22','20','72','200','800209','6','100','200'),
('23','20','73','200','800209','6','100','200'),
('24','20','74','200','800209','6','100','200'),
('25','20','81','200','800208','7','100','200'),
('26','20','82','200','800208','7','100','200'),
('27','20','83','200','800208','7','100','200'),
('28','20','84','200','800208','7','100','200'),
('29','20','91','200','800207','8','100','200'),
('30','20','92','200','800207','8','100','200'),
('31','20','93','200','800207','8','100','200'),
('32','20','94','200','800207','8','100','200'),
('33','20','101','200','800206','9','100','200'),
('34','20','102','200','800206','9','100','200'),
('35','20','103','200','800206','9','100','200'),
('36','20','104','200','800206','9','100','200'),
('37','20','111','200','800205','10','100','200'),
('38','20','112','200','800205','10','100','200'),
('39','20','113','200','800205','10','100','200'),
('40','20','114','200','800205','10','100','200'),
('41','20','121','200','800204','11','100','200'),
('42','20','122','200','800204','11','100','200'),
('43','20','123','200','800204','11','100','200'),
('44','20','124','200','800204','11','100','200'),
('45','20','131','200','800203','12','100','200'),
('46','20','132','200','800203','12','100','200'),
('47','20','133','200','800203','12','100','200'),
('48','20','134','200','800203','12','100','200'),
('49','20','141','200','800199','16','100','200'),
('50','20','142','200','800200','15','100','200'),
('51','20','143','200','800201','14','100','200'),
('52','20','144','200','800202','13','100','200'),
('53','20','150','0','800198','17','100','200'),
('54','20','160','0','800197','18','100','200'),
('55','21','21','200','800214','1','150','250'),
('56','21','22','200','800214','1','150','250'),
('57','21','23','200','800214','1','150','250'),
('58','21','24','200','800214','1','150','250'),
('59','21','31','200','800213','2','150','250'),
('60','21','32','200','800213','2','150','250'),
('61','21','33','200','800213','2','150','250'),
('62','21','34','200','800213','2','150','250'),
('63','21','41','200','800212','3','150','250'),
('64','21','42','200','800212','3','150','250'),
('65','21','43','200','800212','3','150','250'),
('66','21','44','200','800212','3','150','250'),
('67','21','51','200','800211','4','150','250'),
('68','21','52','200','800211','4','150','250'),
('69','21','53','200','800211','4','150','250'),
('70','21','54','200','800211','4','150','250'),
('71','21','61','200','800210','5','150','250'),
('72','21','62','200','800210','5','150','250'),
('73','21','63','200','800210','5','150','250'),
('74','21','64','200','800210','5','150','250'),
('75','21','71','200','800209','6','150','250'),
('76','21','72','200','800209','6','150','250'),
('77','21','73','200','800209','6','150','250'),
('78','21','74','200','800209','6','150','250'),
('79','21','81','200','800208','7','150','250'),
('80','21','82','200','800208','7','150','250'),
('81','21','83','200','800208','7','150','250'),
('82','21','84','200','800208','7','150','250'),
('83','21','91','200','800207','8','150','250'),
('84','21','92','200','800207','8','150','250'),
('85','21','93','200','800207','8','150','250'),
('86','21','94','200','800207','8','150','250'),
('87','21','101','200','800206','9','150','250'),
('88','21','102','200','800206','9','150','250'),
('89','21','103','200','800206','9','150','250'),
('90','21','104','200','800206','9','150','250'),
('91','21','111','200','800205','10','150','250'),
('92','21','112','200','800205','10','150','250'),
('93','21','113','200','800205','10','150','250'),
('94','21','114','200','800205','10','150','250'),
('95','21','121','200','800204','11','150','250'),
('96','21','122','200','800204','11','150','250'),
('97','21','123','200','800204','11','150','250'),
('98','21','124','200','800204','11','150','250'),
('99','21','131','200','800203','12','150','250'),
('100','21','132','200','800203','12','150','250'),
('101','21','133','200','800203','12','150','250'),
('102','21','134','200','800203','12','150','250'),
('103','21','141','200','800199','16','150','250'),
('104','21','142','200','800200','15','150','250'),
('105','21','143','200','800201','14','150','250'),
('106','21','144','200','800202','13','150','250'),
('107','21','150','0','800198','17','150','250'),
('108','21','160','0','800197','18','150','250'),
('109','22','21','200','800214','1','200','300'),
('110','22','22','200','800214','1','200','300'),
('111','22','23','200','800214','1','200','300'),
('112','22','24','200','800214','1','200','300'),
('113','22','31','200','800213','2','200','300'),
('114','22','32','200','800213','2','200','300'),
('115','22','33','200','800213','2','200','300'),
('116','22','34','200','800213','2','200','300'),
('117','22','41','200','800212','3','200','300'),
('118','22','42','200','800212','3','200','300'),
('119','22','43','200','800212','3','200','300'),
('120','22','44','200','800212','3','200','300'),
('121','22','51','200','800211','4','200','300'),
('122','22','52','200','800211','4','200','300'),
('123','22','53','200','800211','4','200','300'),
('124','22','54','200','800211','4','200','300'),
('125','22','61','200','800210','5','200','300'),
('126','22','62','200','800210','5','200','300'),
('127','22','63','200','800210','5','200','300'),
('128','22','64','200','800210','5','200','300'),
('129','22','71','200','800209','6','200','300'),
('130','22','72','200','800209','6','200','300'),
('131','22','73','200','800209','6','200','300'),
('132','22','74','200','800209','6','200','300'),
('133','22','81','200','800208','7','200','300'),
('134','22','82','200','800208','7','200','300'),
('135','22','83','200','800208','7','200','300'),
('136','22','84','200','800208','7','200','300'),
('137','22','91','200','800207','8','200','300'),
('138','22','92','200','800207','8','200','300'),
('139','22','93','200','800207','8','200','300'),
('140','22','94','200','800207','8','200','300'),
('141','22','101','200','800206','9','200','300'),
('142','22','102','200','800206','9','200','300'),
('143','22','103','200','800206','9','200','300'),
('144','22','104','200','800206','9','200','300'),
('145','22','111','200','800205','10','200','300'),
('146','22','112','200','800205','10','200','300'),
('147','22','113','200','800205','10','200','300'),
('148','22','114','200','800205','10','200','300'),
('149','22','121','200','800204','11','200','300'),
('150','22','122','200','800204','11','200','300'),
('151','22','123','200','800204','11','200','300'),
('152','22','124','200','800204','11','200','300'),
('153','22','131','200','800203','12','200','300'),
('154','22','132','200','800203','12','200','300'),
('155','22','133','200','800203','12','200','300'),
('156','22','134','200','800203','12','200','300'),
('157','22','141','200','800199','16','200','300'),
('158','22','142','200','800200','15','200','300'),
('159','22','143','200','800201','14','200','300'),
('160','22','144','200','800202','13','200','300'),
('161','22','150','0','800198','17','200','300'),
('162','22','160','0','800197','18','200','300'),
('163','23','21','200','800214','1','250','350'),
('164','23','22','200','800214','1','250','350'),
('165','23','23','200','800214','1','250','350'),
('166','23','24','200','800214','1','250','350'),
('167','23','31','200','800213','2','250','350'),
('168','23','32','200','800213','2','250','350'),
('169','23','33','200','800213','2','250','350'),
('170','23','34','200','800213','2','250','350'),
('171','23','41','200','800212','3','250','350'),
('172','23','42','200','800212','3','250','350'),
('173','23','43','200','800212','3','250','350'),
('174','23','44','200','800212','3','250','350'),
('175','23','51','200','800211','4','250','350'),
('176','23','52','200','800211','4','250','350'),
('177','23','53','200','800211','4','250','350'),
('178','23','54','200','800211','4','250','350'),
('179','23','61','200','800210','5','250','350'),
('180','23','62','200','800210','5','250','350'),
('181','23','63','200','800210','5','250','350'),
('182','23','64','200','800210','5','250','350'),
('183','23','71','200','800209','6','250','350'),
('184','23','72','200','800209','6','250','350'),
('185','23','73','200','800209','6','250','350'),
('186','23','74','200','800209','6','250','350'),
('187','23','81','200','800208','7','250','350'),
('188','23','82','200','800208','7','250','350'),
('189','23','83','200','800208','7','250','350'),
('190','23','84','200','800208','7','250','350'),
('191','23','91','200','800207','8','250','350'),
('192','23','92','200','800207','8','250','350'),
('193','23','93','200','800207','8','250','350'),
('194','23','94','200','800207','8','250','350'),
('195','23','101','200','800206','9','250','350'),
('196','23','102','200','800206','9','250','350'),
('197','23','103','200','800206','9','250','350'),
('198','23','104','200','800206','9','250','350'),
('199','23','111','200','800205','10','250','350'),
('200','23','112','200','800205','10','250','350'),
('201','23','113','200','800205','10','250','350'),
('202','23','114','200','800205','10','250','350'),
('203','23','121','200','800204','11','250','350'),
('204','23','122','200','800204','11','250','350'),
('205','23','123','200','800204','11','250','350'),
('206','23','124','200','800204','11','250','350'),
('207','23','131','200','800203','12','250','350'),
('208','23','132','200','800203','12','250','350'),
('209','23','133','200','800203','12','250','350'),
('210','23','134','200','800203','12','250','350'),
('211','23','141','200','800199','16','250','350'),
('212','23','142','200','800200','15','250','350'),
('213','23','143','200','800201','14','250','350'),
('214','23','144','200','800202','13','250','350'),
('215','23','150','0','800198','17','250','350'),
('216','23','160','0','800197','18','250','350'),
('217','24','21','200','800214','1','300','400'),
('218','24','22','200','800214','1','300','400'),
('219','24','23','200','800214','1','300','400'),
('220','24','24','200','800214','1','300','400'),
('221','24','31','200','800213','2','300','400'),
('222','24','32','200','800213','2','300','400'),
('223','24','33','200','800213','2','300','400'),
('224','24','34','200','800213','2','300','400'),
('225','24','41','200','800212','3','300','400'),
('226','24','42','200','800212','3','300','400'),
('227','24','43','200','800212','3','300','400'),
('228','24','44','200','800212','3','300','400'),
('229','24','51','200','800211','4','300','400'),
('230','24','52','200','800211','4','300','400'),
('231','24','53','200','800211','4','300','400'),
('232','24','54','200','800211','4','300','400'),
('233','24','61','200','800210','5','300','400'),
('234','24','62','200','800210','5','300','400'),
('235','24','63','200','800210','5','300','400'),
('236','24','64','200','800210','5','300','400'),
('237','24','71','200','800209','6','300','400'),
('238','24','72','200','800209','6','300','400'),
('239','24','73','200','800209','6','300','400'),
('240','24','74','200','800209','6','300','400'),
('241','24','81','200','800208','7','300','400'),
('242','24','82','200','800208','7','300','400'),
('243','24','83','200','800208','7','300','400'),
('244','24','84','200','800208','7','300','400'),
('245','24','91','200','800207','8','300','400'),
('246','24','92','200','800207','8','300','400'),
('247','24','93','200','800207','8','300','400'),
('248','24','94','200','800207','8','300','400'),
('249','24','101','200','800206','9','300','400'),
('250','24','102','200','800206','9','300','400'),
('251','24','103','200','800206','9','300','400'),
('252','24','104','200','800206','9','300','400'),
('253','24','111','200','800205','10','300','400'),
('254','24','112','200','800205','10','300','400'),
('255','24','113','200','800205','10','300','400'),
('256','24','114','200','800205','10','300','400'),
('257','24','121','200','800204','11','300','400'),
('258','24','122','200','800204','11','300','400'),
('259','24','123','200','800204','11','300','400'),
('260','24','124','200','800204','11','300','400'),
('261','24','131','200','800203','12','300','400'),
('262','24','132','200','800203','12','300','400'),
('263','24','133','200','800203','12','300','400'),
('264','24','134','200','800203','12','300','400'),
('265','24','141','200','800199','16','300','400'),
('266','24','142','200','800200','15','300','400'),
('267','24','143','200','800201','14','300','400'),
('268','24','144','200','800202','13','300','400'),
('269','24','150','0','800198','17','300','400'),
('270','24','160','0','800197','18','300','400'),
('271','25','21','200','800214','1','350','450'),
('272','25','22','200','800214','1','350','450'),
('273','25','23','200','800214','1','350','450'),
('274','25','24','200','800214','1','350','450'),
('275','25','31','200','800213','2','350','450'),
('276','25','32','200','800213','2','350','450'),
('277','25','33','200','800213','2','350','450'),
('278','25','34','200','800213','2','350','450'),
('279','25','41','200','800212','3','350','450'),
('280','25','42','200','800212','3','350','450'),
('281','25','43','200','800212','3','350','450'),
('282','25','44','200','800212','3','350','450'),
('283','25','51','200','800211','4','350','450'),
('284','25','52','200','800211','4','350','450'),
('285','25','53','200','800211','4','350','450'),
('286','25','54','200','800211','4','350','450'),
('287','25','61','200','800210','5','350','450'),
('288','25','62','200','800210','5','350','450'),
('289','25','63','200','800210','5','350','450'),
('290','25','64','200','800210','5','350','450'),
('291','25','71','200','800209','6','350','450'),
('292','25','72','200','800209','6','350','450'),
('293','25','73','200','800209','6','350','450'),
('294','25','74','200','800209','6','350','450'),
('295','25','81','200','800208','7','350','450'),
('296','25','82','200','800208','7','350','450'),
('297','25','83','200','800208','7','350','450'),
('298','25','84','200','800208','7','350','450'),
('299','25','91','200','800207','8','350','450'),
('300','25','92','200','800207','8','350','450'),
('301','25','93','200','800207','8','350','450'),
('302','25','94','200','800207','8','350','450'),
('303','25','101','200','800206','9','350','450'),
('304','25','102','200','800206','9','350','450'),
('305','25','103','200','800206','9','350','450'),
('306','25','104','200','800206','9','350','450'),
('307','25','111','200','800205','10','350','450'),
('308','25','112','200','800205','10','350','450'),
('309','25','113','200','800205','10','350','450'),
('310','25','114','200','800205','10','350','450'),
('311','25','121','200','800204','11','350','450'),
('312','25','122','200','800204','11','350','450'),
('313','25','123','200','800204','11','350','450'),
('314','25','124','200','800204','11','350','450'),
('315','25','131','200','800203','12','350','450'),
('316','25','132','200','800203','12','350','450'),
('317','25','133','200','800203','12','350','450'),
('318','25','134','200','800203','12','350','450'),
('319','25','141','200','800199','16','350','450'),
('320','25','142','200','800200','15','350','450'),
('321','25','143','200','800201','14','350','450'),
('322','25','144','200','800202','13','350','450'),
('323','25','150','0','800198','17','350','450'),
('324','25','160','0','800197','18','350','450'),
('325','26','21','200','800214','1','400','500'),
('326','26','22','200','800214','1','400','500'),
('327','26','23','200','800214','1','400','500'),
('328','26','24','200','800214','1','400','500'),
('329','26','31','200','800213','2','400','500'),
('330','26','32','200','800213','2','400','500'),
('331','26','33','200','800213','2','400','500'),
('332','26','34','200','800213','2','400','500'),
('333','26','41','200','800212','3','400','500'),
('334','26','42','200','800212','3','400','500'),
('335','26','43','200','800212','3','400','500'),
('336','26','44','200','800212','3','400','500'),
('337','26','51','200','800211','4','400','500'),
('338','26','52','200','800211','4','400','500'),
('339','26','53','200','800211','4','400','500'),
('340','26','54','200','800211','4','400','500'),
('341','26','61','200','800210','5','400','500'),
('342','26','62','200','800210','5','400','500'),
('343','26','63','200','800210','5','400','500'),
('344','26','64','200','800210','5','400','500'),
('345','26','71','200','800209','6','400','500'),
('346','26','72','200','800209','6','400','500'),
('347','26','73','200','800209','6','400','500'),
('348','26','74','200','800209','6','400','500'),
('349','26','81','200','800208','7','400','500'),
('350','26','82','200','800208','7','400','500'),
('351','26','83','200','800208','7','400','500'),
('352','26','84','200','800208','7','400','500'),
('353','26','91','200','800207','8','400','500'),
('354','26','92','200','800207','8','400','500'),
('355','26','93','200','800207','8','400','500'),
('356','26','94','200','800207','8','400','500'),
('357','26','101','200','800206','9','400','500'),
('358','26','102','200','800206','9','400','500'),
('359','26','103','200','800206','9','400','500'),
('360','26','104','200','800206','9','400','500'),
('361','26','111','200','800205','10','400','500'),
('362','26','112','200','800205','10','400','500'),
('363','26','113','200','800205','10','400','500'),
('364','26','114','200','800205','10','400','500'),
('365','26','121','200','800204','11','400','500'),
('366','26','122','200','800204','11','400','500'),
('367','26','123','200','800204','11','400','500'),
('368','26','124','200','800204','11','400','500'),
('369','26','131','200','800203','12','400','500'),
('370','26','132','200','800203','12','400','500'),
('371','26','133','200','800203','12','400','500'),
('372','26','134','200','800203','12','400','500'),
('373','26','141','200','800199','16','400','500'),
('374','26','142','200','800200','15','400','500'),
('375','26','143','200','800201','14','400','500'),
('376','26','144','200','800202','13','400','500'),
('377','26','150','0','800198','17','400','500'),
('378','26','160','0','800197','18','400','500'),
('379','27','21','200','800214','1','450','550'),
('380','27','22','200','800214','1','450','550'),
('381','27','23','200','800214','1','450','550'),
('382','27','24','200','800214','1','450','550'),
('383','27','31','200','800213','2','450','550'),
('384','27','32','200','800213','2','450','550'),
('385','27','33','200','800213','2','450','550'),
('386','27','34','200','800213','2','450','550'),
('387','27','41','200','800212','3','450','550'),
('388','27','42','200','800212','3','450','550'),
('389','27','43','200','800212','3','450','550'),
('390','27','44','200','800212','3','450','550'),
('391','27','51','200','800211','4','450','550'),
('392','27','52','200','800211','4','450','550'),
('393','27','53','200','800211','4','450','550'),
('394','27','54','200','800211','4','450','550'),
('395','27','61','200','800210','5','450','550'),
('396','27','62','200','800210','5','450','550'),
('397','27','63','200','800210','5','450','550'),
('398','27','64','200','800210','5','450','550'),
('399','27','71','200','800209','6','450','550'),
('400','27','72','200','800209','6','450','550'),
('401','27','73','200','800209','6','450','550'),
('402','27','74','200','800209','6','450','550'),
('403','27','81','200','800208','7','450','550'),
('404','27','82','200','800208','7','450','550'),
('405','27','83','200','800208','7','450','550'),
('406','27','84','200','800208','7','450','550'),
('407','27','91','200','800207','8','450','550'),
('408','27','92','200','800207','8','450','550'),
('409','27','93','200','800207','8','450','550'),
('410','27','94','200','800207','8','450','550'),
('411','27','101','200','800206','9','450','550'),
('412','27','102','200','800206','9','450','550'),
('413','27','103','200','800206','9','450','550'),
('414','27','104','200','800206','9','450','550'),
('415','27','111','200','800205','10','450','550'),
('416','27','112','200','800205','10','450','550'),
('417','27','113','200','800205','10','450','550'),
('418','27','114','200','800205','10','450','550'),
('419','27','121','200','800204','11','450','550'),
('420','27','122','200','800204','11','450','550'),
('421','27','123','200','800204','11','450','550'),
('422','27','124','200','800204','11','450','550'),
('423','27','131','200','800203','12','450','550'),
('424','27','132','200','800203','12','450','550'),
('425','27','133','200','800203','12','450','550'),
('426','27','134','200','800203','12','450','550'),
('427','27','141','200','800199','16','450','550'),
('428','27','142','200','800200','15','450','550'),
('429','27','143','200','800201','14','450','550'),
('430','27','144','200','800202','13','450','550'),
('431','27','150','0','800198','17','450','550'),
('432','27','160','0','800197','18','450','550'),
('433','28','21','200','800214','1','500','600'),
('434','28','22','200','800214','1','500','600'),
('435','28','23','200','800214','1','500','600'),
('436','28','24','200','800214','1','500','600'),
('437','28','31','200','800213','2','500','600'),
('438','28','32','200','800213','2','500','600'),
('439','28','33','200','800213','2','500','600'),
('440','28','34','200','800213','2','500','600'),
('441','28','41','200','800212','3','500','600'),
('442','28','42','200','800212','3','500','600'),
('443','28','43','200','800212','3','500','600'),
('444','28','44','200','800212','3','500','600'),
('445','28','51','200','800211','4','500','600'),
('446','28','52','200','800211','4','500','600'),
('447','28','53','200','800211','4','500','600'),
('448','28','54','200','800211','4','500','600'),
('449','28','61','200','800210','5','500','600'),
('450','28','62','200','800210','5','500','600'),
('451','28','63','200','800210','5','500','600'),
('452','28','64','200','800210','5','500','600'),
('453','28','71','200','800209','6','500','600'),
('454','28','72','200','800209','6','500','600'),
('455','28','73','200','800209','6','500','600'),
('456','28','74','200','800209','6','500','600'),
('457','28','81','200','800208','7','500','600'),
('458','28','82','200','800208','7','500','600'),
('459','28','83','200','800208','7','500','600'),
('460','28','84','200','800208','7','500','600'),
('461','28','91','200','800207','8','500','600'),
('462','28','92','200','800207','8','500','600'),
('463','28','93','200','800207','8','500','600'),
('464','28','94','200','800207','8','500','600'),
('465','28','101','200','800206','9','500','600'),
('466','28','102','200','800206','9','500','600'),
('467','28','103','200','800206','9','500','600'),
('468','28','104','200','800206','9','500','600'),
('469','28','111','200','800205','10','500','600'),
('470','28','112','200','800205','10','500','600'),
('471','28','113','200','800205','10','500','600'),
('472','28','114','200','800205','10','500','600'),
('473','28','121','200','800204','11','500','600'),
('474','28','122','200','800204','11','500','600'),
('475','28','123','200','800204','11','500','600'),
('476','28','124','200','800204','11','500','600'),
('477','28','131','200','800203','12','500','600'),
('478','28','132','200','800203','12','500','600'),
('479','28','133','200','800203','12','500','600'),
('480','28','134','200','800203','12','500','600'),
('481','28','141','200','800199','16','500','600'),
('482','28','142','200','800200','15','500','600'),
('483','28','143','200','800201','14','500','600'),
('484','28','144','200','800202','13','500','600'),
('485','28','150','0','800198','17','500','600'),
('486','28','160','0','800197','18','500','600'),
('487','29','21','200','800214','1','550','650'),
('488','29','22','200','800214','1','550','650'),
('489','29','23','200','800214','1','550','650'),
('490','29','24','200','800214','1','550','650'),
('491','29','31','200','800213','2','550','650'),
('492','29','32','200','800213','2','550','650'),
('493','29','33','200','800213','2','550','650'),
('494','29','34','200','800213','2','550','650'),
('495','29','41','200','800212','3','550','650'),
('496','29','42','200','800212','3','550','650'),
('497','29','43','200','800212','3','550','650'),
('498','29','44','200','800212','3','550','650'),
('499','29','51','200','800211','4','550','650'),
('500','29','52','200','800211','4','550','650'),
('501','29','53','200','800211','4','550','650'),
('502','29','54','200','800211','4','550','650'),
('503','29','61','200','800210','5','550','650'),
('504','29','62','200','800210','5','550','650'),
('505','29','63','200','800210','5','550','650'),
('506','29','64','200','800210','5','550','650'),
('507','29','71','200','800209','6','550','650'),
('508','29','72','200','800209','6','550','650'),
('509','29','73','200','800209','6','550','650'),
('510','29','74','200','800209','6','550','650'),
('511','29','81','200','800208','7','550','650'),
('512','29','82','200','800208','7','550','650'),
('513','29','83','200','800208','7','550','650'),
('514','29','84','200','800208','7','550','650'),
('515','29','91','200','800207','8','550','650'),
('516','29','92','200','800207','8','550','650'),
('517','29','93','200','800207','8','550','650'),
('518','29','94','200','800207','8','550','650'),
('519','29','101','200','800206','9','550','650'),
('520','29','102','200','800206','9','550','650'),
('521','29','103','200','800206','9','550','650'),
('522','29','104','200','800206','9','550','650'),
('523','29','111','200','800205','10','550','650'),
('524','29','112','200','800205','10','550','650'),
('525','29','113','200','800205','10','550','650'),
('526','29','114','200','800205','10','550','650'),
('527','29','121','200','800204','11','550','650'),
('528','29','122','200','800204','11','550','650'),
('529','29','123','200','800204','11','550','650'),
('530','29','124','200','800204','11','550','650'),
('531','29','131','200','800203','12','550','650'),
('532','29','132','200','800203','12','550','650'),
('533','29','133','200','800203','12','550','650'),
('534','29','134','200','800203','12','550','650'),
('535','29','141','200','800199','16','550','650'),
('536','29','142','200','800200','15','550','650'),
('537','29','143','200','800201','14','550','650'),
('538','29','144','200','800202','13','550','650'),
('539','29','150','0','800198','17','550','650'),
('540','29','160','0','800197','18','550','650'),
('541','30','21','200','800214','1','600','700'),
('542','30','22','200','800214','1','600','700'),
('543','30','23','200','800214','1','600','700'),
('544','30','24','200','800214','1','600','700'),
('545','30','31','200','800213','2','600','700'),
('546','30','32','200','800213','2','600','700'),
('547','30','33','200','800213','2','600','700'),
('548','30','34','200','800213','2','600','700'),
('549','30','41','200','800212','3','600','700'),
('550','30','42','200','800212','3','600','700'),
('551','30','43','200','800212','3','600','700'),
('552','30','44','200','800212','3','600','700'),
('553','30','51','200','800211','4','600','700'),
('554','30','52','200','800211','4','600','700'),
('555','30','53','200','800211','4','600','700'),
('556','30','54','200','800211','4','600','700'),
('557','30','61','200','800210','5','600','700'),
('558','30','62','200','800210','5','600','700'),
('559','30','63','200','800210','5','600','700'),
('560','30','64','200','800210','5','600','700'),
('561','30','71','200','800209','6','600','700'),
('562','30','72','200','800209','6','600','700'),
('563','30','73','200','800209','6','600','700'),
('564','30','74','200','800209','6','600','700'),
('565','30','81','200','800208','7','600','700'),
('566','30','82','200','800208','7','600','700'),
('567','30','83','200','800208','7','600','700'),
('568','30','84','200','800208','7','600','700'),
('569','30','91','200','800207','8','600','700'),
('570','30','92','200','800207','8','600','700'),
('571','30','93','200','800207','8','600','700'),
('572','30','94','200','800207','8','600','700'),
('573','30','101','200','800206','9','600','700'),
('574','30','102','200','800206','9','600','700'),
('575','30','103','200','800206','9','600','700'),
('576','30','104','200','800206','9','600','700'),
('577','30','111','200','800205','10','600','700'),
('578','30','112','200','800205','10','600','700'),
('579','30','113','200','800205','10','600','700'),
('580','30','114','200','800205','10','600','700'),
('581','30','121','200','800204','11','600','700'),
('582','30','122','200','800204','11','600','700'),
('583','30','123','200','800204','11','600','700'),
('584','30','124','200','800204','11','600','700'),
('585','30','131','200','800203','12','600','700'),
('586','30','132','200','800203','12','600','700'),
('587','30','133','200','800203','12','600','700'),
('588','30','134','200','800203','12','600','700'),
('589','30','141','200','800199','16','600','700'),
('590','30','142','200','800200','15','600','700'),
('591','30','143','200','800201','14','600','700'),
('592','30','144','200','800202','13','600','700'),
('593','30','150','0','800198','17','600','700'),
('594','30','160','0','800197','18','600','700');

###################################################
#20190709[终焉誓约][任务脚本]修复bug佣兵工会1L到主城位子信息双端数据不同(倪祖伟)
#by:倪祖伟
#date:2019-07-09
###################################################
#注释部分
#打开注释部分
###################################################
UPDATE `gen_event` SET `position`='-27.90,554.02,93.83' WHERE `id`=2001652;

###################################################
#20190709[终焉誓约][数据配置]分享boss表ID优化(苏亚玲)
#by:苏亚玲
#date:2019-07-09
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339922.aspx
###################################################
#注释部分

#打开注释部分

###################################################

UPDATE `share_boss` SET `id`=800030 WHERE `monster_group_id`=800030;
UPDATE `share_boss` SET `id`=800029 WHERE `monster_group_id`=800029;
UPDATE `share_boss` SET `id`=800028 WHERE `monster_group_id`=800028;
UPDATE `share_boss` SET `id`=800027 WHERE `monster_group_id`=800027;
UPDATE `share_boss` SET `id`=800026 WHERE `monster_group_id`=800026;
UPDATE `share_boss` SET `id`=800025 WHERE `monster_group_id`=800025;
UPDATE `share_boss` SET `id`=800024 WHERE `monster_group_id`=800024;
UPDATE `share_boss` SET `id`=800023 WHERE `monster_group_id`=800023;
UPDATE `share_boss` SET `id`=800022 WHERE `monster_group_id`=800022;
UPDATE `share_boss` SET `id`=800021 WHERE `monster_group_id`=800021;
UPDATE `share_boss` SET `id`=800020 WHERE `monster_group_id`=800020;
UPDATE `share_boss` SET `id`=800019 WHERE `monster_group_id`=800019;
UPDATE `share_boss` SET `id`=800018 WHERE `monster_group_id`=800018;
UPDATE `share_boss` SET `id`=800017 WHERE `monster_group_id`=800017;
UPDATE `share_boss` SET `id`=800016 WHERE `monster_group_id`=800016;
UPDATE `share_boss` SET `id`=800015 WHERE `monster_group_id`=800015;
UPDATE `share_boss` SET `id`=800014 WHERE `monster_group_id`=800014;
UPDATE `share_boss` SET `id`=800013 WHERE `monster_group_id`=800013;
UPDATE `share_boss` SET `id`=800012 WHERE `monster_group_id`=800012;
UPDATE `share_boss` SET `id`=800011 WHERE `monster_group_id`=800011;
UPDATE `share_boss` SET `id`=800010 WHERE `monster_group_id`=800010;
UPDATE `share_boss` SET `id`=800009 WHERE `monster_group_id`=800009;
UPDATE `share_boss` SET `id`=800008 WHERE `monster_group_id`=800008;
UPDATE `share_boss` SET `id`=800007 WHERE `monster_group_id`=800007;
UPDATE `share_boss` SET `id`=800006 WHERE `monster_group_id`=800006;
UPDATE `share_boss` SET `id`=800005 WHERE `monster_group_id`=800005;
UPDATE `share_boss` SET `id`=800004 WHERE `monster_group_id`=800004;
UPDATE `share_boss` SET `id`=800003 WHERE `monster_group_id`=800003;
UPDATE `share_boss` SET `id`=800002 WHERE `monster_group_id`=800002;
UPDATE `share_boss` SET `id`=800001 WHERE `monster_group_id`=800001;
UPDATE `share_boss` SET `id`=800000 WHERE `monster_group_id`=800000;
UPDATE `share_boss` SET `id`=800079 WHERE `monster_group_id`=800079;
UPDATE `share_boss` SET `id`=800218 WHERE `monster_group_id`=800218;
UPDATE `share_boss` SET `id`=800217 WHERE `monster_group_id`=800217;
UPDATE `share_boss` SET `id`=800216 WHERE `monster_group_id`=800216;
UPDATE `share_boss` SET `id`=800215 WHERE `monster_group_id`=800215;
UPDATE `share_boss` SET `id`=800219 WHERE `monster_group_id`=800219;
UPDATE `share_boss` SET `id`=800220 WHERE `monster_group_id`=800220;
UPDATE `share_boss` SET `id`=800221 WHERE `monster_group_id`=800221;
UPDATE `share_boss` SET `id`=800222 WHERE `monster_group_id`=800222;
UPDATE `share_boss` SET `id`=800223 WHERE `monster_group_id`=800223;
UPDATE `share_boss` SET `id`=800224 WHERE `monster_group_id`=800224;
UPDATE `share_boss` SET `id`=800225 WHERE `monster_group_id`=800225;
UPDATE `share_boss` SET `id`=800226 WHERE `monster_group_id`=800226;
UPDATE `share_boss` SET `id`=800227 WHERE `monster_group_id`=800227;
UPDATE `share_boss` SET `id`=800228 WHERE `monster_group_id`=800228;
UPDATE `share_boss` SET `id`=800229 WHERE `monster_group_id`=800229;
UPDATE `share_boss` SET `id`=800230 WHERE `monster_group_id`=800230;
UPDATE `share_boss` SET `id`=800197 WHERE `monster_group_id`=800197;
UPDATE `share_boss` SET `id`=800198 WHERE `monster_group_id`=800198;
UPDATE `share_boss` SET `id`=800199 WHERE `monster_group_id`=800199;
UPDATE `share_boss` SET `id`=800200 WHERE `monster_group_id`=800200;
UPDATE `share_boss` SET `id`=800201 WHERE `monster_group_id`=800201;
UPDATE `share_boss` SET `id`=800202 WHERE `monster_group_id`=800202;
UPDATE `share_boss` SET `id`=800203 WHERE `monster_group_id`=800203;
UPDATE `share_boss` SET `id`=800204 WHERE `monster_group_id`=800204;
UPDATE `share_boss` SET `id`=800205 WHERE `monster_group_id`=800205;
UPDATE `share_boss` SET `id`=800206 WHERE `monster_group_id`=800206;
UPDATE `share_boss` SET `id`=800207 WHERE `monster_group_id`=800207;
UPDATE `share_boss` SET `id`=800208 WHERE `monster_group_id`=800208;
UPDATE `share_boss` SET `id`=800209 WHERE `monster_group_id`=800209;
UPDATE `share_boss` SET `id`=800210 WHERE `monster_group_id`=800210;
UPDATE `share_boss` SET `id`=800211 WHERE `monster_group_id`=800211;
UPDATE `share_boss` SET `id`=800212 WHERE `monster_group_id`=800212;
UPDATE `share_boss` SET `id`=800213 WHERE `monster_group_id`=800213;
UPDATE `share_boss` SET `id`=800214 WHERE `monster_group_id`=800214;

###################################################
#20190709[终焉誓约][任务脚本]不冬岛主线对白跳过配置(苏亚玲)
#by:苏亚玲
#date:2019-07-09
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339465.aspx
###################################################
#注释部分

#打开注释部分

###################################################

UPDATE `gen_event` SET `position`='0.57,-2.20,14.08' WHERE `id`=20050044;

###################################################
#20190710[终焉誓约][任务脚本]佣兵委托任务后续调整(苏亚玲)
#by:苏亚玲
#date:2019-07-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339888.aspx
###################################################
#注释部分

#打开注释部分

###################################################

UPDATE `gen_event` SET `position`='-221.49,0.10,-164.85', `rotation_y`=0.52 WHERE `id`=20030511;
###################################################
#20190709[终焉誓约][任务脚本]【终焉誓约】佣兵巡查任务相关调整修改(林多娜)
#by:林多娜
#date:2019-07-09
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339875.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update monster set attr_id =1000242, own_skills ="1002501;1002502;1002503", skill_que="0,1,0,2;1,0,1,2" ,skill_loop_que = "0,1,2;1,0,1,0,2;0,1,1;1,0,1,2" where id = 1000242;

update monster set own_skills ="1001501;1001502;1001503", skill_que="2,0,1" ,skill_loop_que = "0,1;0,1,2;0,1;2,0,1" where id in (9000158,9000211,9000225);

###################################################
#20190711[终焉誓约][数据配置]【魔族之心（多人）】BUG修改(林多娜)
#by:林多娜
#date:2019-07-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-338428.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update monster_group set name = "巨刃鹿角兽" where id = 200161;


###################################################
#20190710[终焉誓约][数据配置]任务-断线重连超时时间配置(孟志远)
#by:孟志远
#date:2019-07-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339725.aspx
###################################################
#注释部分
#delete from config where id = 157;
#打开注释部分

###################################################
insert into config(`id`,`type`,`type_id`,`data1`,`data2`,`data3`,`data4`,`data5`,`data6`,`data7`,`param1`,`desc`) values
('157','8','4','60','0','0','0','0','0','0','','断线重连超时时间');






###################################################
#20190710[终焉誓约][数据配置]任务-米兰达数值配置(李宏伟)
#by:李宏伟
#date:2019-07-10
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339144.aspx
###################################################
#注释部分
#DELETE FROM `special_effect`  WHERE `id` >= 11201 and `id` <= 11208;
#DELETE FROM `special_effect`  WHERE `id` >= 11230 and `id` <= 11240;
#DELETE FROM `special_effect`  WHERE `id` in(11291,1129101,1129102,1129103);
#DELETE FROM `special_effect`  WHERE `id` in(11292,1129201,1129202,1129203);
#DELETE FROM `special_effect`  WHERE `id` in(11293,1129301,1129302,1129303);

#DELETE FROM `status`  WHERE `id` in (103901,104001,104101,104501);

#打开注释部分
#米兰达技能更新
DELETE FROM `skill_pos`  WHERE `id` >= 112001 and `id` <= 112037;

DELETE FROM `skill_type`  WHERE `id` >= 112031 and `id` <= 112037;
DELETE FROM `skill_type`  WHERE `id` >= 112041 and `id` <= 112047;
DELETE FROM `skill_type`  WHERE `id` >= 112051 and `id` <= 112057;
DELETE FROM `skill_type`  WHERE `id` >= 112061 and `id` <= 112067;
DELETE FROM `skill_type`  WHERE `id` >= 112071 and `id` <= 112077;

DELETE FROM `skill_type`  WHERE `id` in(112081,112101,112111,112121,112131,112141,112151,112161,112162,112163);



###################################################

INSERT INTO `special_effect` (`id`, `name`, `percent`, `position`, `isalive`, `listen_actor`, `trigger_type`, `trigger_arg1`, `trigger_arg2`, `trigger_arg3`, `trigger_arg4`, `respond_actor`, `respond_type`, `respond_arg1`, `respond_arg2`, `respond_arg3`, `respond_arg4`) VALUES 
(11201,'',10000,1,1,10,31,2,0,0,0,10,40,23,6,10000,''),
(11202,'',10000,1,1,10,31,2,0,0,0,10,150,1,9000,0,''),
(11203,'',10000,1,1,10,44,22,0,0,0,10,151,3000,0,0,''),
(11204,'',10000,1,1,10,1,0,0,0,0,10,11,14,5,8000,''),
(11205,'',10000,1,1,10,1,0,0,0,0,41,99,11206,1,0,''),
(11206,'',10000,1,1,10,11,73,2,2000,0,10,35,0,5000,0,''),
(11207,'',10000,1,1,10,1,0,0,0,0,10,36,0,3000,0,''),
(11208,'',10000,1,1,20,40,0,0,0,0,10,21,104001,1,0,''),
(11230,'',10000,0,1,30,1,1,0,0,0,30,152,1,5,300,''),
(11231,'',10000,0,1,30,47,1,0,0,0,30,99,11232,0,0,''),
(11232,'',10000,1,1,10,31,2,0,0,0,10,11,72,0,100,''),
(11233,'',10000,0,0,10,1,0,0,0,0,10,11,72,0,300,''),
(11234,'',10000,1,1,10,31,2,0,0,0,10,40,23,1,2000,''),
(11235,'',10000,1,1,10,71,0,0,0,0,10,11,16,5,3000,''),
(11236,'',10000,1,1,10,2,1,0,0,0,10,21,104101,10,0,''),
(11237,'',10000,1,1,10,47,0,0,0,0,10,99,11238,0,0,''),
(11238,'',10000,1,1,10,31,2,0,0,0,10,114,1041,10,11239,''),
(11239,'',10000,1,1,10,1,0,0,0,0,41,57,5000,20,0,''),
(11240,'',10000,0,1,10,1,0,0,0,0,30,11,13,5,500,''),
(11291,'',10000,0,0,10,1,0,0,0,0,10,99,1129101,1129102,1129103,''),
(1129101,'',10000,0,0,10,40,21,0,0,0,10,11,13,5,1200,''),
(1129102,'',10000,0,0,10,40,21,0,0,0,10,99,1129201,0,0,''),
(1129103,'',10000,0,0,10,31,2,0,0,0,10,40,22,6,10000,''),
(11292,'',10000,0,0,10,1,0,0,0,0,10,99,1129201,1129202,1129203,''),
(1129201,'',10000,0,0,10,40,21,0,0,0,10,11,13,5,2000,''),
(1129202,'',10000,0,0,10,40,21,0,0,0,10,99,1129201,0,0,''),
(1129203,'',10000,0,0,10,31,2,0,0,0,10,40,22,6,10000,''),
(11293,'',10000,0,0,10,1,0,0,0,0,10,99,1129301,1129302,1129303,''),
(1129301,'',10000,0,0,10,40,21,0,0,0,10,11,13,5,3000,''),
(1129302,'',10000,0,0,10,40,21,0,0,0,10,99,1129201,0,0,''),
(1129303,'',10000,0,0,10,31,2,0,0,0,10,40,22,6,10000,'');




INSERT INTO `status` (`id`, `name`, `type_id`, `affect_faction`, `target_rule`, `duration`, `end_condition`, `end_data`, `trigger_interval`, `trigger_percent`, `ishelpful`, `override_id`, `max_superposition`, `clear`, `special_effects`, `parm1`, `parm2`, `parm3`, `attr_exp1`, `attr_class1`, `attr_value1`, `attr_exp2`, `attr_class2`, `attr_value2`, `attr_exp3`, `attr_class3`, `attr_value3`) VALUES 
(103901,'暴击buff',1039,1,0,0,13,1,0,10000,0,'1039',1,0,'',0,0,0,0,13,3000,0,0,0,0,0,0),
(104001,'暴击',1040,1,0,0,23,1,0,10000,0,'1040',1,0,'',0,0,0,0,13,500,0,0,0,0,0,0),
(104101,'伤害溅射',1041,1,0,0,0,0,0,10000,0,'',10,0,'',0,0,0,0,0,0,0,0,0,0,0,0),
(104501,'重击增幅',1045,1,0,0,11,1,0,10000,0,'',1,0,'',0,0,0,0,31,4000,0,0,0,0,0,0);


INSERT INTO `skill_pos` (`id`, `skill_id`, `level`, `show_time`, `realtime`, `status`, `dmg_odd`, `const_dmg`, `crit_bonus`, `ignore_phy_def`, `ignore_mgc_def`, `ignore_dodge`, `ignore_parry`, `element_type`) VALUES 
(112001,1120101,1,2000,1869,'',4000,0,0,0,0,0,0,0),
(112002,1120201,1,2000,2511,'',4000,0,0,0,0,0,0,0),
(112003,1120301,1,3000,2858,'',7000,0,0,0,0,0,0,0),
(112004,1120401,1,4000,4310,'',10000,0,0,0,0,0,0,0),
(112005,1120501,1,6000,6981,'',9000,0,0,0,0,0,0,0),
(112006,1120601,1,5000,6266,'',13000,0,0,0,0,0,0,0),
(112007,1120701,1,8000,10528,'',22000,0,0,0,0,1,1,0),
(112008,1120301,2,3000,2858,'',7600,0,0,0,0,0,0,0),
(112009,1120401,2,4000,4310,'',10800,0,0,0,0,0,0,0),
(112010,1120501,2,6000,6981,'',9700,0,0,0,0,0,0,0),
(112011,1120601,2,5000,6266,'',14000,0,0,0,0,0,0,0),
(112012,1120701,2,8000,10528,'',23700,0,0,0,0,1,1,0),
(112013,1120301,3,3000,2858,'',8200,0,0,0,0,0,0,0),
(112014,1120401,3,4000,4310,'',11600,0,0,0,0,0,0,0),
(112015,1120501,3,6000,6981,'',10400,0,0,0,0,0,0,0),
(112016,1120601,3,5000,6266,'',15000,0,0,0,0,0,0,0),
(112017,1120701,3,8000,10528,'',25400,0,0,0,0,1,1,0),
(112018,1120301,4,3000,2858,'',8800,0,0,0,0,0,0,0),
(112019,1120401,4,4000,4310,'',12400,0,0,0,0,0,0,0),
(112020,1120501,4,6000,6981,'',11100,0,0,0,0,0,0,0),
(112021,1120601,4,5000,6266,'',16000,0,0,0,0,0,0,0),
(112022,1120701,4,8000,10528,'',27100,0,0,0,0,1,1,0),
(112023,1120301,5,3000,2858,'',9400,0,0,0,0,0,0,0),
(112024,1120401,5,4000,4310,'',13200,0,0,0,0,0,0,0),
(112025,1120501,5,6000,6981,'',11800,0,0,0,0,0,0,0),
(112026,1120601,5,5000,6266,'',17000,0,0,0,0,0,0,0),
(112027,1120701,5,8000,10528,'',28800,0,0,0,0,1,1,0),
(112028,1120301,6,3000,2858,'',10000,0,0,0,0,0,0,0),
(112029,1120401,6,4000,4310,'',14000,0,0,0,0,0,0,0),
(112030,1120501,6,6000,6981,'',12500,0,0,0,0,0,0,0),
(112031,1120601,6,5000,6266,'',18000,0,0,0,0,0,0,0),
(112032,1120701,6,8000,10528,'',30500,0,0,0,0,1,1,0),
(112033,1120301,7,3000,2858,'',11200,0,0,0,0,0,0,0),
(112034,1120401,7,4000,4310,'',15600,0,0,0,0,0,0,0),
(112035,1120501,7,6000,6981,'',13900,0,0,0,0,0,0,0),
(112036,1120601,7,5000,6266,'',20000,0,0,0,0,0,0,0),
(112037,1120701,7,8000,10528,'',33900,0,0,0,0,1,1,0);



INSERT INTO `skill_type` (`id`, `name`, `skillmain_id`, `level`, `type`, `skill0_type`, `skill0_unicity`, `next_type`, `cd`, `affect_faction`, `target_rule`, `combos`, `cost_type`, `cost_data`, `use_time`, `count_type`, `count_data`, `status`, `status_start`, `special_effects`, `hp_cost`, `xp_cost`, `xp_revert`, `level_up`, `gold_require`, `item_require1`, `item_require1_num`, `item_require2`, `item_require2_num`, `item_require3`, `item_require3_num`, `item_require4`, `item_require4_num`, `level_require`, `qte`) VALUES 
(112031,'',11203,1,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,1,0,0,0,0,0,0,0,0,0,0,0),
(112032,'',11203,2,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,1,10000,3030013,1,0,0,0,0,0,0,0,0),
(112033,'',11203,3,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,1,50000,3030013,3,0,0,0,0,0,0,0,0),
(112034,'',11203,4,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,1,200000,3030013,5,3030014,2,0,0,0,0,0,0),
(112035,'',11203,5,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,1,1000000,3030013,5,3030014,5,0,0,0,0,0,0),
(112036,'',11203,6,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,0,0,0,0,0,0,0,0,0,0,0,0),
(112037,'',11203,7,21,0,0,'0',25000,0,0,'1120301',0,0,0,0,0,'',0,'11201',0,0,150,0,0,0,0,0,0,0,0,0,0,0,0),
(112041,'',11204,1,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,1,0,0,0,0,0,0,0,0,0,0,0),
(112042,'',11204,2,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,1,10000,3030013,1,0,0,0,0,0,0,0,0),
(112043,'',11204,3,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,1,50000,3030013,3,0,0,0,0,0,0,0,0),
(112044,'',11204,4,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,1,200000,3030013,5,3030014,2,0,0,0,0,0,0),
(112045,'',11204,5,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,1,1000000,3030013,5,3030014,5,0,0,0,0,0,0),
(112046,'',11204,6,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,0,0,0,0,0,0,0,0,0,0,0,0),
(112047,'',11204,7,22,0,0,'0',35000,0,0,'1120401',0,0,0,0,0,'',0,'11202;11203',0,0,150,0,0,0,0,0,0,0,0,0,0,0,0),
(112051,'',11205,1,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,1,0,0,0,0,0,0,0,0,0,0,0),
(112052,'',11205,2,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,1,10000,3030013,1,0,0,0,0,0,0,0,0),
(112053,'',11205,3,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,1,50000,3030013,3,0,0,0,0,0,0,0,0),
(112054,'',11205,4,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,1,200000,3030013,5,3030014,2,0,0,0,0,0,0),
(112055,'',11205,5,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,1,1000000,3030013,5,3030014,5,0,0,0,0,0,0),
(112056,'',11205,6,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,0,0,0,0,0,0,0,0,0,0,0,0),
(112057,'',11205,7,23,0,0,'0',45000,0,0,'1120501',0,0,0,0,0,'103901',1,'',0,0,100,0,0,0,0,0,0,0,0,0,0,0,0),
(112061,'',11206,1,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,1,0,0,0,0,0,0,0,0,0,0,0),
(112062,'',11206,2,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,1,10000,3030013,1,0,0,0,0,0,0,0,0),
(112063,'',11206,3,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,1,50000,3030013,3,0,0,0,0,0,0,0,0),
(112064,'',11206,4,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,1,200000,3030013,5,3030014,2,0,0,0,0,0,0),
(112065,'',11206,5,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,1,1000000,3030013,5,3030014,5,0,0,0,0,0,0),
(112066,'',11206,6,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,0,0,0,0,0,0,0,0,0,0,0,0),
(112067,'',11206,7,24,0,0,'0',50000,0,0,'1120601',0,0,0,0,0,'',0,'11204',0,0,200,0,0,0,0,0,0,0,0,0,0,0,0),
(112071,'',11207,1,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112072,'',11207,2,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,1,10000,3030013,1,0,0,0,0,0,0,0,0),
(112073,'',11207,3,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,1,50000,3030013,3,0,0,0,0,0,0,0,0),
(112074,'',11207,4,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,1,200000,3030013,5,3030014,2,0,0,0,0,0,0),
(112075,'',11207,5,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,1,1000000,3030013,5,3030014,5,0,0,0,0,0,0),
(112076,'',11207,6,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0),
(112077,'',11207,7,30,0,0,'1',0,0,1,'1120701',0,0,0,0,0,'',0,'11205',0,1000,0,0,0,0,0,0,0,0,0,0,0,0,0),
(112081,'',11208,1,70,0,0,'0',60000,0,0,'',0,0,0,0,0,'',0,'11207;11208',0,1000,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112101,'',11210,1,50,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11230;11231',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112111,'',11211,1,51,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11233',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112121,'',11212,1,52,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11234',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112131,'',11213,1,53,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11235',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112141,'',11214,1,54,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11236;11237',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112151,'',11215,1,55,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11240',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112161,'',11216,1,56,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11291',0,0,0,1,0,0,0,0,0,0,0,0,0,0,0),
(112162,'',11216,2,56,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11292',0,0,0,1,10000,3030013,1,0,0,0,0,0,0,0,0),
(112163,'',11216,3,56,0,0,'0',0,0,0,'',0,0,0,0,0,'',0,'11293',0,0,0,1,50000,3030013,3,0,0,0,0,0,0,0,0);


###################################################
#20190709[终焉誓约][任务脚本]游戏场景地标相关调整(黄业勤)
#by:黄业勤
#date:2019-07-09
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-339005.aspx
###################################################
#注释部分
#delete from gen_event where id = 20050340;
#delete from npc_group where id = 70041;
#打开注释部分
###################################################
UPDATE `gen_event` SET `position`='-154.13,0.15,-17.33',`rotation_y`=315 WHERE `id`=20030478;
UPDATE `gen_event` SET `position`='-142.73,2.76,-143.93', `rotation_y`=-25.35 WHERE `id`=20030484;
UPDATE `gen_event` SET `position`='1.15,0.03,-43.76' WHERE `id`=20030483;

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('20050340','零态模拟机','2005','1','70041','0','0','0','0','0','0','0','-41.09,10.90,-301.14','0','1');

insert into npc_group(`id`,`name`,`req_level`) values
('70041','零态模拟机','1');


###################################################
#20190712[终焉誓约][任务脚本]任务-5.3版本--传送阵和切屏点配置修改(林多娜)
#by:林多娜
#date:2019-07-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-340267.aspx
###################################################
#注释部分
#delete from npc_group where id in (54030,54031,57018);
#打开注释部分

###################################################

UPDATE `gen_event` SET `id`='1000200', `event_id`='54030' WHERE  `id`=11000001;

UPDATE `gen_event` SET `id`='20010253', `event_id`='54031' WHERE  `id`=12001001;

UPDATE `gen_event` SET `id`='1000201', `event_id`='57018' WHERE  `id`=10000001;

DELETE FROM `npc_group` WHERE  `id` in (11000001,12001001,10000001,54002,54003);


insert into npc_group(`id`,`name`,`req_level`) values
('54030','主城——雷鸣大陆','1'),
('54031','雷鸣大陆——主城','1'),
('57018','传送马车','1');
###################################################
#20190712[终焉誓约][任务脚本]ERP297827【终焉誓约】【新版日常副本】【金钱副本】6号副本--调整(林多娜)
#by:林多娜
#date:2019-07-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-337586.aspx
###################################################
#注释部分
#delete from attribute where id >= 1000927 and id <= 1000930;
#delete from monster where id >= 1000927 and id <= 1000930;
#delete from monster_group where id >= 200622 and id <= 200623;
#delete from monster_group where id >= 200625 and id <= 200629;
#delete from npc_group where id >= 40268 and id <= 40273;
#delete from game_map where id= 3125;
#delete from gen_event  where id >= 3125001 and id <= 3125012;
#delete from gen_event  where id >= 3125004 and id <= 3125016;

#delete from award_acquire where award_id in (1000518,1000519);

#delete from valve where id in (1113,1114);
#打开注释部分

###################################################
insert into attribute(`id`,`life`,`phy_atk`,`mgc_atk`,`phy_def`,`mgc_def`,`life_add`,`phy_atk_add`,`mgc_atk_add`,`phy_def_add`,`mgc_def_add`,`hit_rate`,`dodge_rate`,`critical_rate`,`critical_dmg`,`critical_def`,`parry_rate`,`parry_def`,`hitbreak_rate`,`hitback_xp`,`dmg_add`,`dmg_cut`,`ice_atk`,`fire_atk`,`dark_atk`,`light_atk`,`ice_def`,`fire_def`,`light_def`,`dark_def`) values
('1000927','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000928','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000929','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0'),
('1000930','10000','1000','1000','400','400','0','0','0','0','0','10000','0','1000','5000','0','500','2000','0','0','0','0','0','0','0','0','0','0','0','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000927','鹿角兽巡逻兵','0','0','1','1','1','0','1000927','','1003401;1003402','0,1,0;1,0,1,0','0','1,0,1,0,1;0,1,1;0,1,0,1;1,0,1','0','0'),
('1000928','鹿角兽巡逻兵','0','0','1','1','1','0','1000928','','1003401;1003402','0,1,0;1,0,1,0','0','1,0,1,0,1;0,1,1;0,1,0,1;1,0,1','0','0'),
('1000929','鹿角兽指挥官','0','1','1','1','1','1','1000929','','1002401;1002402','0,1,0;1,0,1,0','0','1,0,1,0,1;0,1,1;0,1,0,1;1,0,1','0','0'),
('1000930','鹿角兽指挥官','0','1','1','1','1','1','1000930','','1002401;1002402','0,1,0;1,0,1,0','0','1,0,1,0,1;0,1,1;0,1,0,1;1,0,1','0','0');


insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200622','鹿角兽巡逻兵','0','0','1000927','0','0','0','0','0','0','600000','0','0','0'),
('200623','鹿角兽指挥官','0','0','1000930','0','0','0','0','0','0','600000','0','0','0'),
#('200624','鹿角兽战士长','0','0','1000930','0','0','0','0','0','0','600000','0','0','0'),
('200625','鹿角兽巡逻兵','0','0','1000928','0','0','0','0','0','0','600000','0','0','0'),
('200626','鹿角兽巡逻兵','0','0','1000927','0','0','0','0','0','0','600000','0','0','0'),
('200627','鹿角兽指挥官','0','0','1000929','0','0','0','0','0','0','600000','0','0','0'),
('200628','鹿角兽巡逻兵','0','0','1000927','0','0','0','0','0','0','600000','0','0','0'),
('200629','鹿角兽巡逻兵','0','0','1000928','0','0','0','0','0','0','600000','0','0','0');


insert into npc_group(`id`,`name`,`req_level`) values
('40268','通关宝箱','1'),
('40269','宝箱','1'),
('40270','宝箱','1'),
('40271','宝箱','1'),
('40272','宝箱','1'),
('40273','宝箱','1');

insert into game_map(`id`,`name`,`group`,`type`,`map_attr`,`map_times`,`team_max`,`team_min`,`fire`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`time`) values
('3125','暗黑遗迹','1','5','0','18','0','0','0','0','0','0','0','0','2400');


insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3125001','鹿角兽巡逻兵','3125','2','200622','1','0','0','0','0','0','24','','0','1'),
('3125002','鹿角兽指挥官','3125','2','200623','2','0','0','0','0','0','24','','0','1'),
#('3125003','鹿角兽战士长','3125','2','200624','3','0','0','0','0','0','24','','0','1'),
('3125004','鹿角兽巡逻兵','3125','2','200625','4','0','0','0','0','0','24','','0','1'),
('3125005','鹿角兽巡逻兵','3125','2','200626','5','0','0','0','0','0','24','','0','1'),
('3125006','鹿角兽指挥官','3125','2','200627','6','0','0','0','0','0','24','','0','1'),
('3125007','鹿角兽巡逻兵','3125','2','200628','7','0','0','0','0','0','24','','0','1'),
('3125008','鹿角兽巡逻兵','3125','2','200629','8','0','0','0','0','0','24','','0','1'),
('3125009','烁金宝箱','3125','1','40273','0','0','0','0','0','0','0','-200.731,-21.17,-22.72','180','1'),
('3125010','烁金宝箱','3125','1','40269','0','0','0','0','0','0','0','-168.507,-21.21,-31.638','0','1'),
('3125011','烁金宝箱','3125','1','40270','0','0','0','0','0','0','0','-170.55,-21.17,4.85','180','1'),
('3125012','烁金宝箱','3125','1','40271','0','0','0','0','0','0','0','-137.728,-21.25,8.668','180','1'),
('3125013','烁金宝箱','3125','1','40272','0','0','0','0','0','0','0','-127.08,-21.25,-26.41','220','1'),
('3125014','圣晶宝箱','3125','1','40268','0','0','0','0','0','0','0','-137.91,-21.25,-33.04','0','1.5'),
('3125015','空气墙','3125','4','1113','0','0','0','0','0','0','0','-221.97,-22,-29.32','90','1'),
('3125016','机关墙','3125','4','1114','0','0','0','0','0','0','0','-164.14,-21,-28','0','1');


insert into award_acquire(`award_id`,`award_group`,`award_type`,`award_type_id`,`item_num`,`max_get_rate`,`min_get_rate`) values
('1000518','1','1','3','100000','10000','0'),
('1000519','1','1','3','50000','10000','0');

insert into valve(`id`,`valve_status`,`type`,`data1`,`data2`) values
('1113','0','1','0','0'),
('1114','0','1','0','0');


###################################################
#20190624[终焉誓约][任务脚本]【材料副本】4号副本--制作(张圆)
#by:张圆
#date:2019-06-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-337667.aspx
###################################################
#注释部分
#DELETE FROM valve where id = 1117;
#DELETE FROM game_map where id = 3134;
#DELETE FROM npc_group where id in (60442,60443,60444,20927,20928,20929,20930);
#DELETE FROM gen_event where id >= 3134001 and id <= 3134017;
#DELETE FROM award_acquire where award_id >= 1000560 and award_id <= 1000566;
#DELETE FROM itemtype where id = 7000361;
#打开注释部分

###################################################
INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(60442, '风动石', 1),
(60443, '流沙虫柩', 1),
(60444, '沙虫卵', 1),
(20927, '猎魔人阿比旦', 1),
(20928, '冒险者玛斯卡', 1),
(20929, '冒险者马苏拉', 1),
(20930, '冒险者哈克特', 1);

INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3134, '流沙虫巢', 1, 5, 0, 19, 0, 0, 0, 0, 0, 0, 0, 0, 1200);

INSERT INTO `valve` (`id`, `valve_status`, `type`, `data1`, `data2`) VALUES 
(1117, 0, 3, 0, 0);

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3134001, '猎魔人阿比旦', 3134, 1, 20927, 0, 0, 0, 0, 0, 0, 0, '47.66667,0.4147415,22', 120, 1),
(3134002, '冒险者玛斯卡', 3134, 1, 20928, 0, 1, 0, 0, 0, 0, 0, '33.4,0.0814085,43.5', 140, 1),
(3134003, '冒险者马苏拉', 3134, 1, 20929, 0, 1, 0, 0, 0, 0, 0, '16.5,0.0814085,62', 180, 1),
(3134004, '冒险者哈克特', 3134, 1, 20930, 0, 1, 0, 0, 0, 0, 0, '43.31,0.113575,45.26', 120, 1),
(3134005, '风动石', 3134, 1, 60442, 0, 0, 0, 0, 0, 0, 0, '53.57,0.1,26.72', 0, 1),
(3134006, '风动石', 3134, 1, 60442, 0, 0, 0, 0, 0, 0, 0, '41.7,0.1,31.7', 0, 1),
(3134007, '风动石', 3134, 1, 60442, 0, 0, 0, 0, 0, 0, 0, '48.02,0.1,44.7', 0, 1),
(3134008, '风动石', 3134, 1, 60442, 0, 0, 0, 0, 0, 0, 0, '31.82,0.1,39.09', 0, 1),
(3134009, '流沙虫柩', 3134, 1, 60443, 0, 0, 0, 0, 0, 0, 0, '48.16,0.1,27.05', 45, 1),
(3134010, '流沙虫柩', 3134, 1, 60443, 0, 0, 0, 0, 0, 0, 0, '35.5,0.1,49.3', 140, 1),
(3134011, '流沙虫柩', 3134, 1, 60443, 0, 0, 0, 0, 0, 0, 0, '26.7,0.13,43.1', 45, 1),
(3134012, '流沙虫柩', 3134, 1, 60443, 0, 0, 0, 0, 0, 0, 0, '8.9,0.1,61', 135, 1),
(3134013, '沙虫卵', 3134, 1, 60444, 0, 0, 0, 0, 0, 0, 0, '50.38,0.1,38.38', 0, 1),
(3134014, '沙虫卵', 3134, 1, 60444, 0, 0, 0, 0, 0, 0, 0, '36.97,0.1,35.02', 0, 1),
(3134015, '沙虫卵', 3134, 1, 60444, 0, 0, 0, 0, 0, 0, 0, '12.8,0.4,66.7', 0, 1),
(3134016, '沙虫卵', 3134, 1, 60444, 0, 0, 0, 0, 0, 0, 0, '9.6,0.1,55.2', 0, 1),
(3134017, '光墙', 3134, 4, 1117, 0, 0, 0, 0, 0, 0, 0, '38.9,0.1,50.5', 190, 1);

INSERT INTO `award_acquire` ( `award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
#虫卵采集奖励
(1000560, 1, 1, 2110001, 10, 5000, 0),
(1000560, 1, 1, 2110001, 12, 8000, 5000),
(1000560, 1, 1, 2110001, 15, 10000, 8000),
#箱子采集奖励
(1000561, 1, 1, 2110001, 10, 10000, 3000),
(1000561, 1, 1, 2110001, 12, 3000, 0),
#石头采集奖励
(1000562, 1, 1, 2110001, 10, 10000, 3000),
(1000562, 1, 1, 2110001, 12, 3000, 0),
#虫卵暴击奖励
(1000563, 1, 1, 2110001, 10, 5000, 0),
(1000563, 1, 1, 2110001, 10, 5000, 0),
(1000563, 1, 1, 2110001, 10, 5000, 0),
(1000563, 1, 1, 2110001, 12, 8000, 5000),
(1000563, 1, 1, 2110001, 12, 8000, 5000),
(1000563, 1, 1, 2110001, 12, 8000, 5000),
(1000563, 1, 1, 2110001, 15, 10000, 8000),
(1000563, 1, 1, 2110001, 15, 10000, 8000),
(1000563, 1, 1, 2110001, 15, 10000, 8000),
#冒险者的宝物
(1000564, 1, 1, 120013, 1, 10000, 5000),
(1000564, 1, 1, 120023, 1, 5000, 0),
(1000564, 1, 1, 2110001, 20, 10000, 0),
(1000564, 1, 1, 2110001, 10, 10000, 3000),
(1000564, 1, 1, 2110001, 12, 3000, 0),
#获得驱虫药
(1000565, 1, 1, 7000361, 1, 10000, 0),
(1000565, 1, 1, 2110001, 10, 10000, 3000),
(1000565, 1, 1, 2110001, 12, 3000, 0),
#获得驱虫药*5
(1000566, 1, 1, 7000361, 5, 10000, 0);

INSERT INTO `itemtype` (`id`, `name`, `sort`, `amount_limit`, `flag`, `price`, `awardid`, `actionid`) VALUES 
(7000361, '除虫喷雾', 8, 9999, 10, 100, 0, 0);

###################################################
#20190712[终焉誓约][数据配置]CBT1纳雅公审主线对白调整(张圆)V1.0
#by:张圆
#date:2019-0712
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-340220.aspx
###################################################
#注释部分

#打开注释部分

###################################################
update gen_event set rotation_y = -20 where id = 20040062;




###################################################
#20190619[终焉誓约][任务脚本]【新版日常副本】【金钱副本】8号副本(李宏伟)
#by:李宏伟
#date:2019-06-19
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-337588.aspx
###################################################
#注释部分
#DELETE FROM `award_acquire`  WHERE `award_id` in(1000528,1000529);
#DELETE FROM `game_map`  WHERE `id` = 3124;
#DELETE FROM `attribute` WHERE `id` >= 1000922 and `id` <= 1000926;
#DELETE FROM `monster` WHERE `id` >= 1000922 and `id` <= 1000926;
#DELETE FROM `monster_group`  WHERE `id` >= 200617 and `id` <= 200621;
#DELETE FROM `gen_event`  WHERE `id` >= 3124001 and `id` <= 3124016;
#DELETE FROM `npc_group`  WHERE `id` in(40266,40267);
#DELETE FROM `valve`  WHERE `id` in(1110,1111,1112);

#打开注释部分

###################################################

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000528, 1, 1, 3, 100000, 10000, 0),
(1000529, 1, 1, 3, 50000, 10000, 0);


INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3124, '右相秘宝', 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `attribute` (`id`, `life`, `phy_atk`, `mgc_atk`, `phy_def`, `mgc_def`, `life_add`, `phy_atk_add`, `mgc_atk_add`, `phy_def_add`, `mgc_def_add`, `hit_rate`, `dodge_rate`, `critical_rate`, `critical_dmg`, `critical_def`, `parry_rate`, `parry_def`, `hitbreak_rate`, `hitback_xp`, `dmg_add`, `dmg_cut`, `ice_atk`, `fire_atk`, `light_atk`, `dark_atk`, `ice_def`, `fire_def`, `light_def`, `dark_def`) VALUES 
(1000922, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000923, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000924, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000925, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000926, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `monster` (`id`, `name`, `attr_type`, `type`, `sex`, `family`, `profession`, `level`, `attr_id`, `special_effects`, `own_skills`, `skill_que`, `skill_vis`, `skill_loop_que`, `skill_que_vis`, `action_id`) VALUES 
(1000922, '主宰的魔族亡者', 0, 0, 1, 3, 1, 0, 1000922, '', '5200101;5200102', '0,1,0;1,0,1,0', 0, '0,1;1,0,1,0,1;0,1,0;1,0,1', 0, 0),
(1000923, '湮灭的魔族亡者', 0, 0, 1, 3, 1, 0, 1000923, '', '5200201;5200202', '0,0,1', 0, '0,0,1', 0, 0),
(1000924, '觉醒的魔族亡者', 0, 1, 1, 3, 1, 0, 1000924, '', '5200301;5200302', '1,0,0,1;0,1,1', 0, '0,1,1;1,0,0,1', 0, 0),
(1000925, '破败的魔族亡者', 0, 1, 1, 3, 1, 0, 1000925, '', '5200801;5200802;5200803', '0,1;0,0,2', 0, '0,1;0,0,2;0,1;0,1,2,2;0', 0, 0),
(1000926, '堕落的冒险者', 0, 0, 1, 3, 1, 0, 1000926, '', '1004001;1004002', '0,1,0;1,0,1,0', 0, '0,1;1,0,1,0,1;0,1,0;1,0,1', 0, 0);


INSERT INTO `monster_group` (`id`, `name`, `fight`, `multi_boss`, `monster`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `action_id`, `max_battle_time`, `battle_check`, `attack_status_id`, `fight_type`) VALUES 
(200617, '主宰的魔族亡者', 0, 0, '1000922', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200618, '湮灭的魔族亡者', 0, 0, '1000923', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200619, '觉醒的魔族亡者', 0, 0, '1000924', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200620, '破败的魔族亡者', 0, 0, '1000925', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200621, '堕落的冒险者', 0, 0, '1000926', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0);


INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3124001, '主宰的魔族亡者', 3124, 2, 200617, 1, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124002, '主宰的魔族亡者', 3124, 2, 200617, 2, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124003, '觉醒的魔族亡者', 3124, 2, 200619, 3, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124004, '破败的魔族亡者', 3124, 2, 200620, 4, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124005, '堕落的冒险者', 3124, 2, 200621, 5, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124006, '湮灭的魔族亡者', 3124, 2, 200618, 6, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124007, '湮灭的魔族亡者', 3124, 2, 200618, 7, 1, 0, 0, 0, 0, 24, '', 0, 1),
(3124008, '圣晶宝箱', 3124, 1, 40266, 0, 1, 0, 0, 0, 0, 0, '-56.1,-12.7,-57', 180, 1.5),
(3124009, '烁金宝箱', 3124, 1, 40267, 0, 1, 0, 0, 0, 0, 0, '-28.61,-4.2,-24.19', 90, 1),
(3124010, '烁金宝箱', 3124, 1, 40267, 0, 1, 0, 0, 0, 0, 0, '-9.21,-8.45,-31.54', 90, 1),
(3124011, '烁金宝箱', 3124, 1, 40267, 0, 1, 0, 0, 0, 0, 0, '-11.80,-4.12,-39.64', 180, 1),
(3124012, '烁金宝箱', 3124, 1, 40267, 0, 1, 0, 0, 0, 0, 0, '-12.21,-8.45,-71.29', 0, 1),
(3124013, '烁金宝箱', 3124, 1, 40267, 0, 1, 0, 0, 0, 0, 0, '-40.12,-12.62,-68.77', 90, 1),
(3124014, '空气墙', 3124, 4, 1110, 0, 1, 0, 0, 0, 0, 0, '-19.07,-9.46,-14.29', 180, 1),
(3124015, '空气墙', 3124, 4, 1111, 0, 1, 0, 0, 0, 0, 0, '-55.99,-12.32,-49.29', 90, 1),
(3124016, '空气墙', 3124, 4, 1112, 0, 1, 0, 0, 0, 0, 0, '-67.14,-13.41,-57.54', 90, 1);



INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40266, '圣晶宝箱', 1),
(40267, '烁金宝箱', 1);


INSERT INTO `valve` (`id`, `valve_status`, `type`, `data1`, `data2`) VALUES 
(1110, 0, 3, 0, 0),
(1111, 0, 3, 0, 0),
(1112, 0, 3, 0, 0);

###################################################
#20190711[终焉誓约][任务脚本] ERP295927【终焉誓约】【新版日常副本】【材料副本】1号副本--调整(林多娜)
#by:林多娜
#date:2019-07-11
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-335242.aspx
###################################################
#注释部分
#delete from game_map where id = 3130;
#delete from npc_group where id in (60427,60428,40278,20923,20924,20925,20935);
#delete from gen_event where id >= 3130001 and id <= 3130017;
#delete from itemtype where id IN (7000311);
#delete from award_acquire where award_id >= 1000536 and award_id <= 1000542;
#打开注释部分

###################################################

insert into game_map(`id`,`name`,`group`,`type`,`map_attr`,`map_times`,`team_max`,`team_min`,`fire`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`time`) values
('3130','矿石迷踪','1','5','0','19','0','0','0','0','0','0','0','0','2400');

insert into npc_group(`id`,`name`,`req_level`) values
('20923','采矿者戴普','1'),
('20924','采矿者瑞伊','1'),
('20925','采矿者里欧','1'),
('20935','矿长阿米努','1'),
('60427','黑曜矿','1'),
('60428','巨石','1'),
('40278','矿工箱','1');

INSERT INTO `itemtype` (`id`, `name`, `sort`, `amount_limit`, `flag`, `price`, `awardid`, `actionid`) VALUES 
(7000311, '精钢矿镐', 8, 9999, 10, 100, 0, 0);

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3130001','黑曜矿','3130','1','60427','0','0','0','0','0','0','0','13.8,0.95,8.85','0','1'),
('3130002','黑曜矿','3130','1','60427','0','0','0','0','0','0','0','26.7,1.31,12.3','0','1'),
('3130003','黑曜矿','3130','1','60427','0','0','0','0','0','0','0','17.74,1.25,6.22','0','1'),
('3130004','黑曜矿','3130','1','60427','0','0','0','0','0','0','0','-15.08,4,4.31','0','1'),
('3130005','巨石','3130','1','60428','0','0','0','0','0','0','0','13.18,1.08,15.43','0','1'),
('3130006','巨石','3130','1','60428','0','0','0','0','0','0','0','21.56,0.6,23','0','1'),
('3130007','巨石','3130','1','60428','0','0','0','0','0','0','0','-13,4,10.33','0','1'),
('3130008','巨石','3130','1','60428','0','0','0','0','0','0','0','-16.68,4,-1.6','0','1'),
('3130009','矿工箱','3130','1','40278','0','0','0','0','0','0','0','31.66,0.46,18.55','49','1'),
('3130010','矿工箱','3130','1','40278','0','0','0','0','0','0','0','17.78,0.19,27.33','160','1'),
('3130011','矿工箱','3130','1','40278','0','0','0','0','0','0','0','-0.27,1.76,15.66','155','1'),
('3130012','矿工箱','3130','1','40278','0','0','0','0','0','0','0','-9.75,3.41,0.40','-80','1'),
('3130013','采矿者戴普','3130','1','20923','0','1','0','0','0','0','0','14.71,0.16,6.2','36','1'),
('3130014','采矿者瑞伊','3130','1','20924','0','1','0','0','0','0','0','25.81,0.126,20.33','165','1'),
('3130015','采矿者里欧','3130','1','20925','0','1','0','0','0','0','0','-8.97,3.33,4.14','-85','1'),
('3130016','光墙','3130','4','1042','0','0','0','0','0','0','0','-13.1,1.8,-3.26','160','1'),
('3130017','矿长阿米努','3130','1','20935','0','0','0','0','0','0','0','24.23,0.31,-4.45','80','1');



insert into award_acquire(`award_id`,`award_group`,`award_type`,`award_type_id`,`item_num`,`max_get_rate`,`min_get_rate`) values
('1000536','1','1','2110001','10','7000','0'),
('1000536','1','1','2110001','12','10000','7000'),
('1000537','1','1','2110001','10','7000','0'),
('1000537','1','1','2110001','12','10000','7000'),
('1000537','1','1','7000311','1','10000','0'),
('1000538','1','1','2110001','10','5000','0'),
('1000538','1','1','2110001','12','8000','5000'),
('1000538','1','1','2110001','15','10000','8000'),
('1000539','1','1','2110001','10','5000','0'),
('1000539','1','1','2110001','10','5000','0'),
('1000539','1','1','2110001','10','5000','0'),
('1000539','1','1','2110001','12','8000','5000'),
('1000539','1','1','2110001','12','8000','5000'),
('1000539','1','1','2110001','12','8000','5000'),
('1000539','1','1','2110001','15','10000','8000'),
('1000539','1','1','2110001','15','10000','8000'),
('1000539','1','1','2110001','15','10000','8000'),
('1000540','1','1','2110001','10','7000','0'),
('1000540','1','1','2110001','12','10000','7000'),
('1000541','1','1','2110001','10','7000','0'),
('1000541','1','1','2110001','12','10000','7000'),
('1000541','1','1','120013','1','5000','0'),
('1000541','1','1','120023','1','10000','5000'),
('1000541','1','1','2110001','20','10000','0'),
('1000542','1','1','7000311','5','10000','0');

###################################################
#20190627[终焉誓约][任务脚本]【新版日常副本】【金钱副本】3号副本--最新版制作(倪祖伟)
#by:倪祖伟
#date:2019-06-27
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-335241.aspx
###################################################
#注释部分
#DELETE FROM `game_map` WHERE `id`=3137;
#DELETE FROM `gen_event` WHERE `id`>=3137001 and `id`<=3137012;
#DELETE FROM `monster_group` WHERE `id`>=200675 and `id`<=200681;
#DELETE FROM `monster` WHERE `id`>=1000992 and `id`<=1000998;
#DELETE FROM `npc_group` WHERE `id` in (40286,40287,40288,40289,40290);
#DELETE FROM `award_acquire` WHERE `award_id` in (1000591,1000592);
#打开注释部分

###################################################
INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3137, '恶狼宝窟', 1, 5, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 1200);

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3137001','烁金宝箱','3137','1','40286','0','1','0','0','0','0','0','-8.99,0.02,50.02','159.1','1'),
('3137002','烁金宝箱','3137','1','40287','0','1','0','0','0','0','0','2.728,0.02,100.311','195.4','1'),
('3137003','烁金宝箱','3137','1','40288','0','1','0','0','0','0','0','26.02,0.02,70.01','-44.75','1'),
('3137004','烁金宝箱','3137','1','40289','0','1','0','0','0','0','0','21.45,0.02,89.2301','139.1','1'),
('3137005','圣晶宝箱','3137','1','40290','0','1','0','0','0','0','0','50,0.06,102.99','-152.1','1.5'),
('3137006','狂妄的恶狼盗匪','3137','2','200675','1','1','0','0','0','0','53','','0','1'),
('3137007','勤恳的萤熊佣兵','3137','2','200676','2','1','0','0','0','0','53','','0','1'),
('3137008','贪婪的恶狼盗匪','3137','2','200677','3','1','0','0','0','0','53','','0','1'),
('3137009','狂妄的恶狼盗匪','3137','2','200678','4','1','0','0','0','0','53','','0','1'),
('3137010','勤恳的萤熊佣兵','3137','2','200679','5','1','0','0','0','0','53','','0','1'),
('3137011','狂妄的恶狼盗匪','3137','2','200680','6','1','0','0','0','0','53','','0','1'),
('3137012','勤恳的萤熊佣兵','3137','2','200681','7','1','0','0','0','0','53','','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40286, '烁金宝箱', 1),
(40287, '烁金宝箱', 1),
(40288, '烁金宝箱', 1),
(40289, '烁金宝箱', 1),
(40290, '圣晶宝箱', 1);

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200675','狂妄的恶狼盗匪','1','0','1000992','0','0','0','0','0','0','600000','0','1','0'),
('200676','勤恳的萤熊佣兵','1','0','1000993','0','0','0','0','0','0','600000','0','1','0'),
('200677','贪婪的恶狼盗匪','1','0','1000994','0','0','0','0','0','0','600000','0','0','0'),
('200678','狂妄的恶狼盗匪','1','0','1000995','0','0','0','0','0','0','600000','0','1','0'),
('200679','勤恳的萤熊佣兵','1','0','1000996','0','0','0','0','0','0','600000','0','1','0'),
('200680','狂妄的恶狼盗匪','1','0','1000997','0','0','0','0','0','0','600000','0','1','0'),
('200681','勤恳的萤熊佣兵','1','0','1000998','0','0','0','0','0','0','600000','0','1','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1000992','狂妄的恶狼盗匪','0','0','1','1','1','0','10023','1111','1002301;1002302','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1000993','勤恳的萤熊佣兵','0','0','1','1','1','0','10001','1111','1004901;1004902','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0'),
('1000994','贪婪的恶狼盗匪','0','0','1','1','1','0','10044','','1004401;1004402','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1000995','狂妄的恶狼盗匪','0','0','1','1','1','0','10023','1111','1002301;1002302','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1000996','勤恳的萤熊佣兵','0','0','1','1','1','0','10001','1111','1004901;1004902','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0'),
('1000997','狂妄的恶狼盗匪','0','0','1','1','1','0','10023','1111','1002301;1002302','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1000998','勤恳的萤熊佣兵','0','0','1','1','1','0','10001','1111','1004901;1004902','0,0,1;0,0,1','0','0,0,1;0,0,1','0','0');

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000591, 1, 1, 3, 50000, 10000, 0),
(1000592, 1, 1, 3, 100000, 10000, 0);

###################################################
#20190712[终焉誓约][数据配置]CBT1口袋岛主线对白和卡点调整(孟志远)
#by:孟志远
#date:2019-07-12
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-340219.aspx
###################################################
#注释部分
#delete from `task_index` where `taskid` = 10679;

#打开注释部分

###################################################
insert into `task_index` (`taskid`, `data_index`, `mask_index`) values 
(10679, 22, 8);

###################################################
#20190624[终焉誓约][任务脚本]【金钱副本】1号副本--最新版制作(张圆)
#by:张圆
#date:2019-06-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-335238.aspx
###################################################
#注释部分
#DELETE FROM npc_group where id in (30653,40282,40283);
#DELETE FROM monster where id in (1000954,1000955);
#DELETE FROM attribute where id in (1000954,1000955);
#DELETE FROM game_map where id = 3129;
#DELETE FROM monster_group where id in (200647,200648,200663,200664,200665,200666);
#DELETE FROM gen_event where id >= 3129001 and id <= 3129012;
#DELETE FROM award_acquire where award_id >= 1000552 and award_id <= 1000553;
#打开注释部分

###################################################
INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(30653, '动画陷阱', 1),
(40282, '烁金宝箱', 1),
(40283, '圣晶宝箱', 1);

INSERT INTO `monster` (`id`, `name`, `attr_type`, `type`, `sex`, `family`, `profession`, `level`, `attr_id`, `special_effects`, `own_skills`, `skill_que`, `skill_vis`, `skill_loop_que`, `skill_que_vis`, `action_id`) VALUES 
(1000954, '严谨的黑铠战卫', 0, 0, 1, 3, 1, 1, 1000954, '', '5200201;5200202', '0,0,1', 0, '0,0,1', 0, 0),
(1000955, '执着的黑铠战卫', 0, 0, 1, 3, 1, 1, 1000955, '', '5200301;5200302', '1,0,0,1;0,1,1', 0, '0,1,1;1,0,0,1', 0, 0);

INSERT INTO `attribute` (`id`, `life`, `phy_atk`, `mgc_atk`, `phy_def`, `mgc_def`, `life_add`, `phy_atk_add`, `mgc_atk_add`, `phy_def_add`, `mgc_def_add`, `hit_rate`, `dodge_rate`, `critical_rate`, `critical_dmg`, `critical_def`, `parry_rate`, `parry_def`, `hitbreak_rate`, `hitback_xp`, `dmg_add`, `dmg_cut`, `ice_atk`, `fire_atk`, `light_atk`, `dark_atk`, `ice_def`, `fire_def`, `light_def`, `dark_def`) VALUES 
(1000954, 52795, 8023, 8023, 8023, 8023, 0, 0, 0, 0, 0, 10000, 0, 0, 5000, 0, 0, 3000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000955, 52795, 8023, 8023, 8023, 8023, 0, 0, 0, 0, 0, 10000, 0, 0, 5000, 0, 0, 3000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `monster_group` (`id`, `name`, `fight`, `multi_boss`, `monster`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `action_id`, `max_battle_time`, `battle_check`, `attack_status_id`, `fight_type`) VALUES 
(200647, '严谨的黑铠战卫', 0, 0, '1000954', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200648, '执着的黑铠战卫', 0, 0, '1000955', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200663, '严谨的黑铠战卫', 0, 0, '1000954', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200664, '执着的黑铠战卫', 0, 0, '1000955', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200665, '严谨的黑铠战卫', 0, 0, '1000954', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200666, '执着的黑铠战卫', 0, 0, '1000955', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0);

INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3129, '立方函道', 1, 5, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 1200);

INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3129001, '动画陷阱', 3129, 1, 30653, 0, 1, 0, 0, 0, 0, 0, '0.39,0.01,5.10', 0, 1),
(3129002, '烁金宝箱', 3129, 1, 40282, 0, 0, 0, 0, 0, 0, 0, '8.20,0.01,16.81', 45, 1),
(3129003, '烁金宝箱', 3129, 1, 40282, 0, 0, 0, 0, 0, 0, 0, '-19.94,0.01,29.00', 90, 1),
(3129004, '烁金宝箱', 3129, 1, 40282, 0, 0, 0, 0, 0, 0, 0, '11.9,0.52,56', 315, 1),
(3129005, '烁金宝箱', 3129, 1, 40282, 0, 0, 0, 0, 0, 0, 0, '-11.70,0.71,67.14', 100, 1),
(3129006, '圣晶宝箱', 3129, 1, 40283, 0, 0, 0, 0, 0, 0, 0, '12.21,2.81,96.13', 200, 1.5),
(3129007, '严谨的黑铠战卫', 3129, 2, 200647, 1, 0, 0, 0, 0, 0, 0, '', 0, 1),
(3129008, '执着的黑铠战卫', 3129, 2, 200648, 2, 0, 0, 0, 0, 0, 0, '', 0, 1),
(3129009, '严谨的黑铠战卫', 3129, 2, 200663, 3, 0, 0, 0, 0, 0, 0, '', 0, 1),
(3129010, '执着的黑铠战卫', 3129, 2, 200664, 4, 0, 0, 0, 0, 0, 0, '', 0, 1),
(3129011, '严谨的黑铠战卫', 3129, 2, 200665, 5, 0, 0, 0, 0, 0, 0, '', 0, 1),
(3129012, '执着的黑铠战卫', 3129, 2, 200666, 6, 0, 0, 0, 0, 0, 0, '', 0, 1);

INSERT INTO `award_acquire` ( `award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000552, 1, 1, 3, 50000, 10000, 0),
(1000553, 1, 1, 3, 100000, 10000, 0);




###################################################
#20190624[终焉誓约][任务脚本]【新版日常副本】【金钱副本】10号副本(李宏伟)
#by:李宏伟
#date:2019-06-24
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-337590.aspx
###################################################
#注释部分
#DELETE FROM `award_acquire`  WHERE `award_id` in(1000534,1000535);
#DELETE FROM `game_map`  WHERE `id` = 3128;
#DELETE FROM `attribute` WHERE `id` >= 1000937 and `id` <= 1000940;
#DELETE FROM `monster` WHERE `id` >= 1000937 and `id` <= 1000940;
#DELETE FROM `monster_group`  WHERE `id` >= 200643 and `id` <= 200646;
#DELETE FROM `gen_event`  WHERE `id` >= 3128001 and `id` <= 3128016;
#DELETE FROM `npc_group`  WHERE `id` in(40276,40277);

#打开注释部分

###################################################

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000534, 1, 1, 3, 100000, 10000, 0),
(1000535, 1, 1, 3, 50000, 10000, 0);


INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3128, '哥布林藏宝洞', 1, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `attribute` (`id`, `life`, `phy_atk`, `mgc_atk`, `phy_def`, `mgc_def`, `life_add`, `phy_atk_add`, `mgc_atk_add`, `phy_def_add`, `mgc_def_add`, `hit_rate`, `dodge_rate`, `critical_rate`, `critical_dmg`, `critical_def`, `parry_rate`, `parry_def`, `hitbreak_rate`, `hitback_xp`, `dmg_add`, `dmg_cut`, `ice_atk`, `fire_atk`, `light_atk`, `dark_atk`, `ice_def`, `fire_def`, `light_def`, `dark_def`) VALUES 
(1000937, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000938, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000939, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1000940, 10000, 1000, 1000, 400, 400, 0, 0, 0, 0, 0, 10000, 0, 1000, 5000, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


INSERT INTO `monster` (`id`, `name`, `attr_type`, `type`, `sex`, `family`, `profession`, `level`, `attr_id`, `special_effects`, `own_skills`, `skill_que`, `skill_vis`, `skill_loop_que`, `skill_que_vis`, `action_id`) VALUES 
(1000937, '哥布林刺客', 0, 0, 1, 5, 1, 0, 1000937, '', '1000501;1000502', '0,1,1', 0, '0,1;0,1,1', 0, 0),
(1000938, '哥布林战士', 0, 0, 1, 5, 1, 0, 1000938, '', '1000701;1000702', '0,0,1', 0, '0,0,1', 0, 0),
(1000939, '哥布林哨兵', 0, 1, 1, 5, 1, 0, 1000939, '', '1000701;1000702', '0,0,1', 0, '0,0,1', 0, 0),
(1000940, '狂化哥布林', 0, 1, 1, 5, 1, 0, 1000940, '', '1000501;1000502', '0,1,1', 0, '0,1;0,1,1', 0, 0);


INSERT INTO `monster_group` (`id`, `name`, `fight`, `multi_boss`, `monster`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `action_id`, `max_battle_time`, `battle_check`, `attack_status_id`, `fight_type`) VALUES 
(200643, '哥布林刺客', 0, 0, '1000937', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200644, '哥布林战士', 0, 0, '1000938', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200645, '哥布林哨兵', 0, 0, '1000939', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0),
(200646, '狂化哥布林', 0, 0, '1000940', 0, 0, 0, 0, 0, 0, 600000, 0, 0, 0);


INSERT INTO `gen_event` (`id`, `name`, `mapid`, `event_type`, `event_id`, `path_id`, `flag`, `intask`, `story_id`, `life_time`, `level_id`, `battle_scene`, `position`, `rotation_y`, `scale`) VALUES 
(3128001, '哥布林刺客', 3128, 2, 200643, 1, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128002, '哥布林哨兵', 3128, 2, 200645, 2, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128003, '哥布林刺客', 3128, 2, 200643, 3, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128004, '哥布林哨兵', 3128, 2, 200645, 4, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128005, '哥布林战士', 3128, 2, 200644, 5, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128006, '哥布林战士', 3128, 2, 200644, 6, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128007, '狂化哥布林', 3128, 2, 200646, 7, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128008, '狂化哥布林', 3128, 2, 200646, 8, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128009, '狂化哥布林', 3128, 2, 200646, 9, 1, 0, 0, 0, 0, 53, '', 0, 1),
(3128010, '圣晶宝箱', 3128, 1, 40276, 0, 1, 0, 0, 0, 0, 0, '-49.23,0.04,41.04', 245, 1.5),
(3128011, '烁金宝箱', 3128, 1, 40277, 0, 1, 0, 0, 0, 0, 0, '-18.09,0.04,-4.49', 0, 1),
(3128012, '烁金宝箱', 3128, 1, 40277, 0, 1, 0, 0, 0, 0, 0, '-13.88,0.04,11.96', 25, 1),
(3128013, '烁金宝箱', 3128, 1, 40277, 0, 1, 0, 0, 0, 0, 0, '-43.24,0.04,22.25', 45, 1),
(3128014, '烁金宝箱', 3128, 1, 40277, 0, 1, 0, 0, 0, 0, 0, '-59.67,0.03,25.16', 130, 1),
(3128015, '烁金宝箱', 3128, 1, 40277, 0, 1, 0, 0, 0, 0, 0, '-76.99,0.03,15.40', 135, 1),
(3128016, '烁金宝箱', 3128, 1, 40277, 0, 1, 0, 0, 0, 0, 0, '-66.68,0.04,46.63', 135, 1);


INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40276, '圣晶宝箱', 1),
(40277, '烁金宝箱', 1);

###################################################
#20190627[终焉誓约][任务脚本]【新版日常副本】【金钱副本】7号副本(倪祖伟)
#by:倪祖伟
#date:2019-06-27
#论坛链接:http://forum.nderp.99.com/Forum/TopicList-337587.aspx
###################################################
#注释部分
#DELETE FROM `game_map` WHERE `id`=3138;
#DELETE FROM `gen_event` WHERE `id`>=3138001 and `id`<=3138012;
#DELETE FROM `monster_group` WHERE `id`>=200682 and `id`<=200687;
#DELETE FROM `monster` WHERE `id`>=1001131 and `id`<=1001136;
#DELETE FROM `npc_group` WHERE `id` in (40291,40292,40293,40294,40295,40295,40296);
#DELETE FROM `award_acquire` WHERE `award_id` in (1000593,1000594);
#打开注释部分

###################################################
INSERT INTO `game_map` (`id`, `name`, `group`, `type`, `map_attr`, `map_times`, `team_max`, `team_min`, `fire`, `money`, `user_exp`, `hero_exp`, `exp_ball`, `reward_id`, `time`) VALUES 
(3138, '怪医囚牢', 1, 5, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 1200);

insert into gen_event(`id`,`name`,`mapid`,`event_type`,`event_id`,`path_id`,`flag`,`intask`,`story_id`,`life_time`,`level_id`,`battle_scene`,`position`,`rotation_y`,`scale`) values
('3138001','烁金宝箱','3138','1','40291','0','1','0','0','0','0','0','66.71,-9.29,-0.11','139.08','1'),
('3138002','烁金宝箱','3138','1','40292','0','1','0','0','0','0','0','43.59,-9.046,-13.296','-9.38','1'),
('3138003','烁金宝箱','3138','1','40293','0','1','0','0','0','0','0','41.84,-9.04,-1.74','170.62','1'),
('3138004','烁金宝箱','3138','1','40294','0','1','0','0','0','0','0','34.16,-7.87,-8.6','81.49','1'),
('3138005','烁金宝箱','3138','1','40295','0','1','0','0','0','0','0','90.89,-9.18,27.65','274.08','1'),
('3138006','圣晶宝箱','3138','1','40296','0','1','0','0','0','0','0','88.25,-7.99,44.301','-165.96','1.5'),
('3138007','异化强化体','3138','2','200682','1','1','0','0','0','0','72','','0','1'),
('3138008','异化强化体','3138','2','200683','2','1','0','0','0','0','72','','0','1'),
('3138009','堕魔法师','3138','2','200684','3','1','0','0','0','0','72','','0','1'),
('3138010','狂化者布拉依','3138','2','200685','4','1','0','0','0','0','72','','0','1'),
('3138011','失落改造人','3138','2','200686','5','1','0','0','0','0','72','','0','1'),
('3138012','失落改造人','3138','2','200687','6','1','0','0','0','0','72','','0','1');

INSERT INTO `npc_group` (`id`, `name`, `req_level`) VALUES 
(40291, '烁金宝箱', 1),
(40292, '烁金宝箱', 1),
(40293, '烁金宝箱', 1),
(40294, '烁金宝箱', 1),
(40295, '烁金宝箱', 1),
(40296, '圣晶宝箱', 1);

insert into monster_group(`id`,`name`,`fight`,`multi_boss`,`monster`,`money`,`user_exp`,`hero_exp`,`exp_ball`,`reward_id`,`action_id`,`max_battle_time`,`battle_check`,`attack_status_id`,`fight_type`) values
('200682','异化强化体','1','0','1001131','0','0','0','0','0','0','600000','0','1','0'),
('200683','异化强化体','1','0','1001132','0','0','0','0','0','0','600000','0','1','0'),
('200684','堕魔法师','1','0','1001133','0','0','0','0','0','0','600000','0','0','0'),
('200685','狂化者布拉依','1','0','1001134','0','0','0','0','0','0','600000','0','1','0'),
('200686','失落改造人','1','0','1001135','0','0','0','0','0','0','600000','0','1','0'),
('200687','失落改造人','1','0','1001136','0','0','0','0','0','0','600000','0','1','0');

insert into monster(`id`,`name`,`attr_type`,`type`,`sex`,`family`,`profession`,`level`,`attr_id`,`special_effects`,`own_skills`,`skill_que`,`skill_vis`,`skill_loop_que`,`skill_que_vis`,`action_id`) values
('1001131','异化强化体','0','0','1','3','1','0','10019','','1001901;1001902','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1001132','异化强化体','0','0','1','3','1','0','10019','','1001901;1001902','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1001133','堕魔法师','0','1','1','3','1','0','10013','','1001301;1001302;1001303','0,1,0,2;1,0,1,2','0','0,1,2;1,0,1,0,2;0,1,1;1,0,1,2','0','0'),
('1001134','狂化者布拉依','0','1','1','6','1','0','10033','1021','1003301;1003302;1003303','0,1,2;0,0,2','0','0,1,2;1,0,1,0,2','0','0'),
('1001135','失落改造人','0','0','1','3','1','0','10001','','1004501;1004502','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0'),
('1001136','失落改造人','0','0','1','3','1','0','10001','','1004501;1004502','0,1,0;1,0,1,0','0','0,1;1,0,1,0,1;0,1,0;1,0,1','0','0');

INSERT INTO `award_acquire` (`award_id`, `award_group`, `award_type`, `award_type_id`, `item_num`, `max_get_rate`, `min_get_rate`) VALUES 
(1000593, 1, 1, 3, 50000, 10000, 0),
(1000594, 1, 1, 3, 100000, 10000, 0);



