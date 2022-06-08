#soil enzyme #protocol #from excel to R #30 samples_4controls
#clear memory
rm(list = ls())

#compiled data input #create a separate csv file of the raw and compiled data
#setwd("C:/Users/ayushg7.AUTH/Desktop/Ayush/enzyme study")
data <- read.csv("C:/Users/ayush/Dropbox/Ayush_TAMU/enzyme study/jacob/R/input_csv/JPR1_10-25-19.1.csv")


#extracting each sample and controls
#sample 1
s1_bgluc <- data [c(1:8), c(2:3)]
s1_bgluc <- rbind (s1_bgluc$b.gluc, s1_bgluc$b.gluc.1)
s1_nag <- data [c(1:8), c(4:5)]
s1_nag <- rbind (s1_nag$NAG, s1_nag$NAG.1)
s1_phos <- data [c(1:8), c(6:7)]
s1_phos <- rbind (s1_phos$Phos, s1_phos$Phos.1)
s1_hr1_coef_emis_10 <- data[c(1:8),8]
s1_hr1_coef_emis_25 <- data[c(1:8),9]
s1_hr1_coef_emis_50 <- data[c(1:8),10]
s1_hr1_coef_emis_100 <- data[c(1:8),11]
s1_hr1_homogenate_blank <- data [c(1:8), c(12:13)]
s1_hr1_homogenate_blank <- rbind(s1_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s1_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 2
s2_bgluc <- data [c(10:17), c(2:3)]
s2_bgluc <- rbind (s2_bgluc$b.gluc, s2_bgluc$b.gluc.1)
s2_nag <- data [c(10:17), c(4:5)]
s2_nag <- rbind (s2_nag$NAG, s2_nag$NAG.1)
s2_phos <- data [c(10:17), c(6:7)]
s2_phos <- rbind (s2_phos$Phos, s2_phos$Phos.1)
s2_hr1_coef_emis_10 <- data[c(10:17),8]
s2_hr1_coef_emis_25 <- data[c(10:17),9]
s2_hr1_coef_emis_50 <- data[c(10:17),10]
s2_hr1_coef_emis_100 <- data[c(10:17),11]
s2_hr1_homogenate_blank <- data [c(10:17), c(12:13)]
s2_hr1_homogenate_blank <- rbind(s2_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s2_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)


#sample 3
s3_bgluc <- data [c(19:26), c(2:3)]
s3_bgluc <- rbind (s3_bgluc$b.gluc, s3_bgluc$b.gluc.1)
s3_nag <- data [c(19:26), c(4:5)]
s3_nag <- rbind (s3_nag$NAG, s3_nag$NAG.1)
s3_phos <- data [c(19:26), c(6:7)]
s3_phos <- rbind (s3_phos$Phos, s3_phos$Phos.1)
s3_hr1_coef_emis_10 <- data[c(19:26),8]
s3_hr1_coef_emis_25 <- data[c(19:26),9]
s3_hr1_coef_emis_50 <- data[c(19:26),10]
s3_hr1_coef_emis_100 <- data[c(19:26),11]
s3_hr1_homogenate_blank <- data [c(19:26), c(12:13)]
s3_hr1_homogenate_blank <- rbind(s3_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s3_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 4
s4_bgluc <- data [c(28:35), c(2:3)]
s4_bgluc <- rbind (s4_bgluc$b.gluc, s4_bgluc$b.gluc.1)
s4_nag <- data [c(28:35), c(4:5)]
s4_nag <- rbind (s4_nag$NAG, s4_nag$NAG.1)
s4_phos <- data [c(28:35), c(6:7)]
s4_phos <- rbind (s4_phos$Phos, s4_phos$Phos.1)
s4_hr1_coef_emis_10 <- data[c(28:35),8]
s4_hr1_coef_emis_25 <- data[c(28:35),9]
s4_hr1_coef_emis_50 <- data[c(28:35),10]
s4_hr1_coef_emis_100 <- data[c(28:35),11]
s4_hr1_homogenate_blank <- data [c(28:35), c(12:13)]
s4_hr1_homogenate_blank <- rbind(s4_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s4_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 5
s5_bgluc <- data [c(37:44), c(2:3)]
s5_bgluc <- rbind (s5_bgluc$b.gluc, s5_bgluc$b.gluc.1)
s5_nag <- data [c(37:44), c(4:5)]
s5_nag <- rbind (s5_nag$NAG, s5_nag$NAG.1)
s5_phos <- data [c(37:44), c(6:7)]
s5_phos <- rbind (s5_phos$Phos, s5_phos$Phos.1)
s5_hr1_coef_emis_10 <- data[c(37:44),8]
s5_hr1_coef_emis_25 <- data[c(37:44),9]
s5_hr1_coef_emis_50 <- data[c(37:44),10]
s5_hr1_coef_emis_100 <- data[c(37:44),11]
s5_hr1_homogenate_blank <- data [c(37:44), c(12:13)]
s5_hr1_homogenate_blank <- rbind(s5_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s5_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 6
s6_bgluc <- data [c(46:53), c(2:3)]
s6_bgluc <- rbind (s6_bgluc$b.gluc, s6_bgluc$b.gluc.1)
s6_nag <- data [c(46:53), c(4:5)]
s6_nag <- rbind (s6_nag$NAG, s6_nag$NAG.1)
s6_phos <- data [c(46:53), c(6:7)]
s6_phos <- rbind (s6_phos$Phos, s6_phos$Phos.1)
s6_hr1_coef_emis_10 <- data[c(46:53),8]
s6_hr1_coef_emis_25 <- data[c(46:53),9]
s6_hr1_coef_emis_50 <- data[c(46:53),10]
s6_hr1_coef_emis_100 <- data[c(46:53),11]
s6_hr1_homogenate_blank <- data [c(46:53), c(12:13)]
s6_hr1_homogenate_blank <- rbind(s6_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s6_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 7
s7_bgluc <- data [c(55:62), c(2:3)]
s7_bgluc <- rbind (s7_bgluc$b.gluc, s7_bgluc$b.gluc.1)
s7_nag <- data [c(55:62), c(4:5)]
s7_nag <- rbind (s7_nag$NAG, s7_nag$NAG.1)
s7_phos <- data [c(55:62), c(6:7)]
s7_phos <- rbind (s7_phos$Phos, s7_phos$Phos.1)
s7_hr1_coef_emis_10 <- data[c(55:62),8]
s7_hr1_coef_emis_25 <- data[c(55:62),9]
s7_hr1_coef_emis_50 <- data[c(55:62),10]
s7_hr1_coef_emis_100 <- data[c(55:62),11]
s7_hr1_homogenate_blank <- data [c(55:62), c(12:13)]
s7_hr1_homogenate_blank <- rbind(s7_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s7_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 8
s8_bgluc <- data [c(64:71), c(2:3)]
s8_bgluc <- rbind (s8_bgluc$b.gluc, s8_bgluc$b.gluc.1)
s8_nag <- data [c(64:71), c(4:5)]
s8_nag <- rbind (s8_nag$NAG, s8_nag$NAG.1)
s8_phos <- data [c(64:71), c(6:7)]
s8_phos <- rbind (s8_phos$Phos, s8_phos$Phos.1)
s8_hr1_coef_emis_10 <- data[c(64:71),8]
s8_hr1_coef_emis_25 <- data[c(64:71),9]
s8_hr1_coef_emis_50 <- data[c(64:71),10]
s8_hr1_coef_emis_100 <- data[c(64:71),11]
s8_hr1_homogenate_blank <- data [c(64:71), c(12:13)]
s8_hr1_homogenate_blank <- rbind(s8_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s8_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 9
s9_bgluc <- data [c(73:80), c(2:3)]
s9_bgluc <- rbind (s9_bgluc$b.gluc, s9_bgluc$b.gluc.1)
s9_nag <- data [c(73:80), c(4:5)]
s9_nag <- rbind (s9_nag$NAG, s9_nag$NAG.1)
s9_phos <- data [c(73:80), c(6:7)]
s9_phos <- rbind (s9_phos$Phos, s9_phos$Phos.1)
s9_hr1_coef_emis_10 <- data[c(73:80),8]
s9_hr1_coef_emis_25 <- data[c(73:80),9]
s9_hr1_coef_emis_50 <- data[c(73:80),10]
s9_hr1_coef_emis_100 <- data[c(73:80),11]
s9_hr1_homogenate_blank <- data [c(73:80), c(12:13)]
s9_hr1_homogenate_blank <- rbind(s9_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s9_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 10
s10_bgluc <- data [c(82:89), c(2:3)]
s10_bgluc <- rbind (s10_bgluc$b.gluc, s10_bgluc$b.gluc.1)
s10_nag <- data [c(82:89), c(4:5)]
s10_nag <- rbind (s10_nag$NAG, s10_nag$NAG.1)
s10_phos <- data [c(82:89), c(6:7)]
s10_phos <- rbind (s10_phos$Phos, s10_phos$Phos.1)
s10_hr1_coef_emis_10 <- data[c(82:89),8]
s10_hr1_coef_emis_25 <- data[c(82:89),9]
s10_hr1_coef_emis_50 <- data[c(82:89),10]
s10_hr1_coef_emis_100 <- data[c(82:89),11]
s10_hr1_homogenate_blank <- data [c(82:89), c(12:13)]
s10_hr1_homogenate_blank <- rbind(s10_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s10_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 11
s11_bgluc <- data [c(91:98), c(2:3)]
s11_bgluc <- rbind (s11_bgluc$b.gluc, s11_bgluc$b.gluc.1)
s11_nag <- data [c(91:98), c(4:5)]
s11_nag <- rbind (s11_nag$NAG, s11_nag$NAG.1)
s11_phos <- data [c(91:98), c(6:7)]
s11_phos <- rbind (s11_phos$Phos, s11_phos$Phos.1)
s11_hr1_coef_emis_10 <- data[c(91:98),8]
s11_hr1_coef_emis_25 <- data[c(91:98),9]
s11_hr1_coef_emis_50 <- data[c(91:98),10]
s11_hr1_coef_emis_100 <- data[c(91:98),11]
s11_hr1_homogenate_blank <- data [c(91:98), c(12:13)]
s11_hr1_homogenate_blank <- rbind(s11_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s11_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 12
s12_bgluc <- data [c(100:107), c(2:3)]
s12_bgluc <- rbind (s12_bgluc$b.gluc, s12_bgluc$b.gluc.1)
s12_nag <- data [c(100:107), c(4:5)]
s12_nag <- rbind (s12_nag$NAG, s12_nag$NAG.1)
s12_phos <- data [c(100:107), c(6:7)]
s12_phos <- rbind (s12_phos$Phos, s12_phos$Phos.1)
s12_hr1_coef_emis_10 <- data[c(100:107),8]
s12_hr1_coef_emis_25 <- data[c(100:107),9]
s12_hr1_coef_emis_50 <- data[c(100:107),10]
s12_hr1_coef_emis_100 <- data[c(100:107),11]
s12_hr1_homogenate_blank <- data [c(100:107), c(12:13)]
s12_hr1_homogenate_blank <- rbind(s12_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s12_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 13
s13_bgluc <- data [c(109:116), c(2:3)]
s13_bgluc <- rbind (s13_bgluc$b.gluc, s13_bgluc$b.gluc.1)
s13_nag <- data [c(109:116), c(4:5)]
s13_nag <- rbind (s13_nag$NAG, s13_nag$NAG.1)
s13_phos <- data [c(109:116), c(6:7)]
s13_phos <- rbind (s13_phos$Phos, s13_phos$Phos.1)
s13_hr1_coef_emis_10 <- data[c(109:116),8]
s13_hr1_coef_emis_25 <- data[c(109:116),9]
s13_hr1_coef_emis_50 <- data[c(109:116),10]
s13_hr1_coef_emis_100 <- data[c(109:116),11]
s13_hr1_homogenate_blank <- data [c(109:116), c(12:13)]
s13_hr1_homogenate_blank <- rbind(s13_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s13_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 14
s14_bgluc <- data [c(118:125), c(2:3)]
s14_bgluc <- rbind (s14_bgluc$b.gluc, s14_bgluc$b.gluc.1)
s14_nag <- data [c(118:125), c(4:5)]
s14_nag <- rbind (s14_nag$NAG, s14_nag$NAG.1)
s14_phos <- data [c(118:125), c(6:7)]
s14_phos <- rbind (s14_phos$Phos, s14_phos$Phos.1)
s14_hr1_coef_emis_10 <- data[c(118:125),8]
s14_hr1_coef_emis_25 <- data[c(118:125),9]
s14_hr1_coef_emis_50 <- data[c(118:125),10]
s14_hr1_coef_emis_100 <- data[c(118:125),11]
s14_hr1_homogenate_blank <- data [c(118:125), c(12:13)]
s14_hr1_homogenate_blank <- rbind(s14_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s14_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 15
s15_bgluc <- data [c(127:134), c(2:3)]
s15_bgluc <- rbind (s15_bgluc$b.gluc, s15_bgluc$b.gluc.1)
s15_nag <- data [c(127:134), c(4:5)]
s15_nag <- rbind (s15_nag$NAG, s15_nag$NAG.1)
s15_phos <- data [c(127:134), c(6:7)]
s15_phos <- rbind (s15_phos$Phos, s15_phos$Phos.1)
s15_hr1_coef_emis_10 <- data[c(127:134),8]
s15_hr1_coef_emis_25 <- data[c(127:134),9]
s15_hr1_coef_emis_50 <- data[c(127:134),10]
s15_hr1_coef_emis_100 <- data[c(127:134),11]
s15_hr1_homogenate_blank <- data [c(127:134), c(12:13)]
s15_hr1_homogenate_blank <- rbind(s15_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s15_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 16
s16_bgluc <- data [c(136:143), c(2:3)]
s16_bgluc <- rbind (s16_bgluc$b.gluc, s16_bgluc$b.gluc.1)
s16_nag <- data [c(136:143), c(4:5)]
s16_nag <- rbind (s16_nag$NAG, s16_nag$NAG.1)
s16_phos <- data [c(136:143), c(6:7)]
s16_phos <- rbind (s16_phos$Phos, s16_phos$Phos.1)
s16_hr1_coef_emis_10 <- data[c(136:143),8]
s16_hr1_coef_emis_25 <- data[c(136:143),9]
s16_hr1_coef_emis_50 <- data[c(136:143),10]
s16_hr1_coef_emis_100 <- data[c(136:143),11]
s16_hr1_homogenate_blank <- data [c(136:143), c(12:13)]
s16_hr1_homogenate_blank <- rbind(s16_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s16_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 17
s17_bgluc <- data [c(145:152), c(2:3)]
s17_bgluc <- rbind (s17_bgluc$b.gluc, s17_bgluc$b.gluc.1)
s17_nag <- data [c(145:152), c(4:5)]
s17_nag <- rbind (s17_nag$NAG, s17_nag$NAG.1)
s17_phos <- data [c(145:152), c(6:7)]
s17_phos <- rbind (s17_phos$Phos, s17_phos$Phos.1)
s17_hr1_coef_emis_10 <- data[c(145:152),8]
s17_hr1_coef_emis_25 <- data[c(145:152),9]
s17_hr1_coef_emis_50 <- data[c(145:152),10]
s17_hr1_coef_emis_100 <- data[c(145:152),11]
s17_hr1_homogenate_blank <- data [c(145:152), c(12:13)]
s17_hr1_homogenate_blank <- rbind(s17_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s17_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 18
s18_bgluc <- data [c(154:161), c(2:3)]
s18_bgluc <- rbind (s18_bgluc$b.gluc, s18_bgluc$b.gluc.1)
s18_nag <- data [c(154:161), c(4:5)]
s18_nag <- rbind (s18_nag$NAG, s18_nag$NAG.1)
s18_phos <- data [c(154:161), c(6:7)]
s18_phos <- rbind (s18_phos$Phos, s18_phos$Phos.1)
s18_hr1_coef_emis_10 <- data[c(154:161),8]
s18_hr1_coef_emis_25 <- data[c(154:161),9]
s18_hr1_coef_emis_50 <- data[c(154:161),10]
s18_hr1_coef_emis_100 <- data[c(154:161),11]
s18_hr1_homogenate_blank <- data [c(154:161), c(12:13)]
s18_hr1_homogenate_blank <- rbind(s18_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s18_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 19
s19_bgluc <- data [c(163:170), c(2:3)]
s19_bgluc <- rbind (s19_bgluc$b.gluc, s19_bgluc$b.gluc.1)
s19_nag <- data [c(163:170), c(4:5)]
s19_nag <- rbind (s19_nag$NAG, s19_nag$NAG.1)
s19_phos <- data [c(163:170), c(6:7)]
s19_phos <- rbind (s19_phos$Phos, s19_phos$Phos.1)
s19_hr1_coef_emis_10 <- data[c(163:170),8]
s19_hr1_coef_emis_25 <- data[c(163:170),9]
s19_hr1_coef_emis_50 <- data[c(163:170),10]
s19_hr1_coef_emis_100 <- data[c(163:170),11]
s19_hr1_homogenate_blank <- data [c(163:170), c(12:13)]
s19_hr1_homogenate_blank <- rbind(s19_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s19_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 20
s20_bgluc <- data [c(172:179), c(2:3)]
s20_bgluc <- rbind (s20_bgluc$b.gluc, s20_bgluc$b.gluc.1)
s20_nag <- data [c(172:179), c(4:5)]
s20_nag <- rbind (s20_nag$NAG, s20_nag$NAG.1)
s20_phos <- data [c(172:179), c(6:7)]
s20_phos <- rbind (s20_phos$Phos, s20_phos$Phos.1)
s20_hr1_coef_emis_10 <- data[c(172:179),8]
s20_hr1_coef_emis_25 <- data[c(172:179),9]
s20_hr1_coef_emis_50 <- data[c(172:179),10]
s20_hr1_coef_emis_100 <- data[c(172:179),11]
s20_hr1_homogenate_blank <- data [c(172:179), c(12:13)]
s20_hr1_homogenate_blank <- rbind(s20_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s20_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 21
s21_bgluc <- data [c(181:188), c(2:3)]
s21_bgluc <- rbind (s21_bgluc$b.gluc, s21_bgluc$b.gluc.1)
s21_nag <- data [c(181:188), c(4:5)]
s21_nag <- rbind (s21_nag$NAG, s21_nag$NAG.1)
s21_phos <- data [c(181:188), c(6:7)]
s21_phos <- rbind (s21_phos$Phos, s21_phos$Phos.1)
s21_hr1_coef_emis_10 <- data[c(181:188),8]
s21_hr1_coef_emis_25 <- data[c(181:188),9]
s21_hr1_coef_emis_50 <- data[c(181:188),10]
s21_hr1_coef_emis_100 <- data[c(181:188),11]
s21_hr1_homogenate_blank <- data [c(181:188), c(12:13)]
s21_hr1_homogenate_blank <- rbind(s21_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s21_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 22
s22_bgluc <- data [c(190:197), c(2:3)]
s22_bgluc <- rbind (s22_bgluc$b.gluc, s22_bgluc$b.gluc.1)
s22_nag <- data [c(190:197), c(4:5)]
s22_nag <- rbind (s22_nag$NAG, s22_nag$NAG.1)
s22_phos <- data [c(190:197), c(6:7)]
s22_phos <- rbind (s22_phos$Phos, s22_phos$Phos.1)
s22_hr1_coef_emis_10 <- data[c(190:197),8]
s22_hr1_coef_emis_25 <- data[c(190:197),9]
s22_hr1_coef_emis_50 <- data[c(190:197),10]
s22_hr1_coef_emis_100 <- data[c(190:197),11]
s22_hr1_homogenate_blank <- data [c(190:197), c(12:13)]
s22_hr1_homogenate_blank <- rbind(s22_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s22_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 23
s23_bgluc <- data [c(199:206), c(2:3)]
s23_bgluc <- rbind (s23_bgluc$b.gluc, s23_bgluc$b.gluc.1)
s23_nag <- data [c(199:206), c(4:5)]
s23_nag <- rbind (s23_nag$NAG, s23_nag$NAG.1)
s23_phos <- data [c(199:206), c(6:7)]
s23_phos <- rbind (s23_phos$Phos, s23_phos$Phos.1)
s23_hr1_coef_emis_10 <- data[c(199:206),8]
s23_hr1_coef_emis_25 <- data[c(199:206),9]
s23_hr1_coef_emis_50 <- data[c(199:206),10]
s23_hr1_coef_emis_100 <- data[c(199:206),11]
s23_hr1_homogenate_blank <- data [c(199:206), c(12:13)]
s23_hr1_homogenate_blank <- rbind(s23_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s23_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 24
s24_bgluc <- data [c(208:215), c(2:3)]
s24_bgluc <- rbind (s24_bgluc$b.gluc, s24_bgluc$b.gluc.1)
s24_nag <- data [c(208:215), c(4:5)]
s24_nag <- rbind (s24_nag$NAG, s24_nag$NAG.1)
s24_phos <- data [c(208:215), c(6:7)]
s24_phos <- rbind (s24_phos$Phos, s24_phos$Phos.1)
s24_hr1_coef_emis_10 <- data[c(208:215),8]
s24_hr1_coef_emis_25 <- data[c(208:215),9]
s24_hr1_coef_emis_50 <- data[c(208:215),10]
s24_hr1_coef_emis_100 <- data[c(208:215),11]
s24_hr1_homogenate_blank <- data [c(208:215), c(12:13)]
s24_hr1_homogenate_blank <- rbind(s24_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s24_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 25
s25_bgluc <- data [c(217:224), c(2:3)]
s25_bgluc <- rbind (s25_bgluc$b.gluc, s25_bgluc$b.gluc.1)
s25_nag <- data [c(217:224), c(4:5)]
s25_nag <- rbind (s25_nag$NAG, s25_nag$NAG.1)
s25_phos <- data [c(217:224), c(6:7)]
s25_phos <- rbind (s25_phos$Phos, s25_phos$Phos.1)
s25_hr1_coef_emis_10 <- data[c(217:224),8]
s25_hr1_coef_emis_25 <- data[c(217:224),9]
s25_hr1_coef_emis_50 <- data[c(217:224),10]
s25_hr1_coef_emis_100 <- data[c(217:224),11]
s25_hr1_homogenate_blank <- data [c(217:224), c(12:13)]
s25_hr1_homogenate_blank <- rbind(s25_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s25_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 26
s26_bgluc <- data [c(226:233), c(2:3)]
s26_bgluc <- rbind (s26_bgluc$b.gluc, s26_bgluc$b.gluc.1)
s26_nag <- data [c(226:233), c(4:5)]
s26_nag <- rbind (s26_nag$NAG, s26_nag$NAG.1)
s26_phos <- data [c(226:233), c(6:7)]
s26_phos <- rbind (s26_phos$Phos, s26_phos$Phos.1)
s26_hr1_coef_emis_10 <- data[c(226:233),8]
s26_hr1_coef_emis_25 <- data[c(226:233),9]
s26_hr1_coef_emis_50 <- data[c(226:233),10]
s26_hr1_coef_emis_100 <- data[c(226:233),11]
s26_hr1_homogenate_blank <- data [c(226:233), c(12:13)]
s26_hr1_homogenate_blank <- rbind(s26_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s26_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 27
s27_bgluc <- data [c(235:242), c(2:3)]
s27_bgluc <- rbind (s27_bgluc$b.gluc, s27_bgluc$b.gluc.1)
s27_nag <- data [c(235:242), c(4:5)]
s27_nag <- rbind (s27_nag$NAG, s27_nag$NAG.1)
s27_phos <- data [c(235:242), c(6:7)]
s27_phos <- rbind (s27_phos$Phos, s27_phos$Phos.1)
s27_hr1_coef_emis_10 <- data[c(235:242),8]
s27_hr1_coef_emis_25 <- data[c(235:242),9]
s27_hr1_coef_emis_50 <- data[c(235:242),10]
s27_hr1_coef_emis_100 <- data[c(235:242),11]
s27_hr1_homogenate_blank <- data [c(235:242), c(12:13)]
s27_hr1_homogenate_blank <- rbind(s27_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s27_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 28
s28_bgluc <- data [c(244:251), c(2:3)]
s28_bgluc <- rbind (s28_bgluc$b.gluc, s28_bgluc$b.gluc.1)
s28_nag <- data [c(244:251), c(4:5)]
s28_nag <- rbind (s28_nag$NAG, s28_nag$NAG.1)
s28_phos <- data [c(244:251), c(6:7)]
s28_phos <- rbind (s28_phos$Phos, s28_phos$Phos.1)
s28_hr1_coef_emis_10 <- data[c(244:251),8]
s28_hr1_coef_emis_25 <- data[c(244:251),9]
s28_hr1_coef_emis_50 <- data[c(244:251),10]
s28_hr1_coef_emis_100 <- data[c(244:251),11]
s28_hr1_homogenate_blank <- data [c(244:251), c(12:13)]
s28_hr1_homogenate_blank <- rbind(s28_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s28_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 29
s29_bgluc <- data [c(253:260), c(2:3)]
s29_bgluc <- rbind (s29_bgluc$b.gluc, s29_bgluc$b.gluc.1)
s29_nag <- data [c(253:260), c(4:5)]
s29_nag <- rbind (s29_nag$NAG, s29_nag$NAG.1)
s29_phos <- data [c(253:260), c(6:7)]
s29_phos <- rbind (s29_phos$Phos, s29_phos$Phos.1)
s29_hr1_coef_emis_10 <- data[c(253:260),8]
s29_hr1_coef_emis_25 <- data[c(253:260),9]
s29_hr1_coef_emis_50 <- data[c(253:260),10]
s29_hr1_coef_emis_100 <- data[c(253:260),11]
s29_hr1_homogenate_blank <- data [c(253:260), c(12:13)]
s29_hr1_homogenate_blank <- rbind(s29_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s29_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#sample 30
s30_bgluc <- data [c(262:269), c(2:3)]
s30_bgluc <- rbind (s30_bgluc$b.gluc, s30_bgluc$b.gluc.1)
s30_nag <- data [c(262:269), c(4:5)]
s30_nag <- rbind (s30_nag$NAG, s30_nag$NAG.1)
s30_phos <- data [c(262:269), c(6:7)]
s30_phos <- rbind (s30_phos$Phos, s30_phos$Phos.1)
s30_hr1_coef_emis_10 <- data[c(262:269),8]
s30_hr1_coef_emis_25 <- data[c(262:269),9]
s30_hr1_coef_emis_50 <- data[c(262:269),10]
s30_hr1_coef_emis_100 <- data[c(262:269),11]
s30_hr1_homogenate_blank <- data [c(262:269), c(12:13)]
s30_hr1_homogenate_blank <- rbind(s30_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, s30_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#control 1
c1_bgluc <- data [c(271:278), c(2:3)]
c1_bgluc <- rbind (c1_bgluc$b.gluc, c1_bgluc$b.gluc.1)
c1_nag <- data [c(271:278), c(4:5)]
c1_nag <- rbind (c1_nag$NAG, c1_nag$NAG.1)
c1_phos <- data [c(271:278), c(6:7)]
c1_phos <- rbind (c1_phos$Phos, c1_phos$Phos.1)
c1_hr1_coef_emis_10 <- data[c(271:278),8]
c1_hr1_coef_emis_25 <- data[c(271:278),9]
c1_hr1_coef_emis_50 <- data[c(271:278),10]
c1_hr1_coef_emis_100 <- data[c(271:278),11]
c1_hr1_homogenate_blank <- data [c(271:278), c(12:13)]
c1_hr1_homogenate_blank <- rbind(c1_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, c1_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#control 2
c2_bgluc <- data [c(280:287), c(2:3)]
c2_bgluc <- rbind (c2_bgluc$b.gluc, c2_bgluc$b.gluc.1)
c2_nag <- data [c(280:287), c(4:5)]
c2_nag <- rbind (c2_nag$NAG, c2_nag$NAG.1)
c2_phos <- data [c(280:287), c(6:7)]
c2_phos <- rbind (c2_phos$Phos, c2_phos$Phos.1)
c2_hr1_coef_emis_10 <- data[c(280:287),8]
c2_hr1_coef_emis_25 <- data[c(280:287),9]
c2_hr1_coef_emis_50 <- data[c(280:287),10]
c2_hr1_coef_emis_100 <- data[c(280:287),11]
c2_hr1_homogenate_blank <- data [c(280:287), c(12:13)]
c2_hr1_homogenate_blank <- rbind(c2_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, c2_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#control 3
c3_bgluc <- data [c(289:296), c(2:3)]
c3_bgluc <- rbind (c3_bgluc$b.gluc, c3_bgluc$b.gluc.1)
c3_nag <- data [c(289:296), c(4:5)]
c3_nag <- rbind (c3_nag$NAG, c3_nag$NAG.1)
c3_phos <- data [c(289:296), c(6:7)]
c3_phos <- rbind (c3_phos$Phos, c3_phos$Phos.1)
c3_hr1_coef_emis_10 <- data[c(289:296),8]
c3_hr1_coef_emis_25 <- data[c(289:296),9]
c3_hr1_coef_emis_50 <- data[c(289:296),10]
c3_hr1_coef_emis_100 <- data[c(289:296),11]
c3_hr1_homogenate_blank <- data [c(289:296), c(12:13)]
c3_hr1_homogenate_blank <- rbind(c3_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, c3_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

#control 4
c4_bgluc <- data [c(298:305), c(2:3)]
c4_bgluc <- rbind (c4_bgluc$b.gluc, c4_bgluc$b.gluc.1)
c4_nag <- data [c(298:305), c(4:5)]
c4_nag <- rbind (c4_nag$NAG, c4_nag$NAG.1)
c4_phos <- data [c(298:305), c(6:7)]
c4_phos <- rbind (c4_phos$Phos, c4_phos$Phos.1)
c4_hr1_coef_emis_10 <- data[c(298:305),8]
c4_hr1_coef_emis_25 <- data[c(298:305),9]
c4_hr1_coef_emis_50 <- data[c(298:305),10]
c4_hr1_coef_emis_100 <- data[c(298:305),11]
c4_hr1_homogenate_blank <- data [c(298:305), c(12:13)]
c4_hr1_homogenate_blank <- rbind(c4_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK, c4_hr1_homogenate_blank$X1.hr.HOMOGENATE.BLANK.1)

###################################################################################################################
#detecting, removing outliers and getting the final averages
###################################################################################################################

######################################
#function to remove outliers
######################################

remove_outliers <- function(x, na.rm = TRUE,...){
  
  qnt <- quantile (x, probs = c(.25, .75), na.rm = na.rm,...)
  
  H <- 1.5 * IQR (x, na.rm = na.rm)
  
  y <- x
  y[x < (qnt[1] - H)] <- NA
  y[x > (qnt[2] + H)] <- NA
x <- y

#get rid of NAs
x[!is.na(x)]
  
  }
#####################################
#function closed
#####################################

#removing outliers and obtaining the averages
#sample 1
s1_bgluc_final <- remove_outliers(s1_bgluc)
s1_bgluc_average <- mean(s1_bgluc_final)

s1_nag_final <- remove_outliers(s1_nag)
s1_nag_average <- mean(s1_nag_final)

s1_phos_final <- remove_outliers(s1_phos)
s1_phos_average <- mean(s1_phos_final)

s1_hr1_coef_emis_10_final <- remove_outliers(s1_hr1_coef_emis_10)
s1_hr1_coef_emis_10_average <- mean(s1_hr1_coef_emis_10_final)

s1_hr1_coef_emis_25_final <- remove_outliers(s1_hr1_coef_emis_25)
s1_hr1_coef_emis_25_average <- mean(s1_hr1_coef_emis_25_final)

s1_hr1_coef_emis_50_final <- remove_outliers(s1_hr1_coef_emis_50)
s1_hr1_coef_emis_50_average <- mean(s1_hr1_coef_emis_50_final)

s1_hr1_coef_emis_100_final <- remove_outliers(s1_hr1_coef_emis_100)
s1_hr1_coef_emis_100_average <- mean(s1_hr1_coef_emis_100_final)

s1_hr1_homogenate_blank_final <- remove_outliers(s1_hr1_homogenate_blank)
s1_hr1_homogenate_blank_average <- mean(s1_hr1_homogenate_blank_final)

#sample 2
s2_bgluc_final <- remove_outliers(s2_bgluc)
s2_bgluc_average <- mean(s2_bgluc_final)

s2_nag_final <- remove_outliers(s2_nag)
s2_nag_average <- mean(s2_nag_final)

s2_phos_final <- remove_outliers(s2_phos)
s2_phos_average <- mean(s2_phos_final)

s2_hr1_coef_emis_10_final <- remove_outliers(s2_hr1_coef_emis_10)
s2_hr1_coef_emis_10_average <- mean(s2_hr1_coef_emis_10_final)

s2_hr1_coef_emis_25_final <- remove_outliers(s2_hr1_coef_emis_25)
s2_hr1_coef_emis_25_average <- mean(s2_hr1_coef_emis_25_final)

s2_hr1_coef_emis_50_final <- remove_outliers(s2_hr1_coef_emis_50)
s2_hr1_coef_emis_50_average <- mean(s2_hr1_coef_emis_50_final)

s2_hr1_coef_emis_100_final <- remove_outliers(s2_hr1_coef_emis_100)
s2_hr1_coef_emis_100_average <- mean(s2_hr1_coef_emis_100_final)

s2_hr1_homogenate_blank_final <- remove_outliers(s2_hr1_homogenate_blank)
s2_hr1_homogenate_blank_average <- mean(s2_hr1_homogenate_blank_final)

#sample 3
s3_bgluc_final <- remove_outliers(s3_bgluc)
s3_bgluc_average <- mean(s3_bgluc_final)

s3_nag_final <- remove_outliers(s3_nag)
s3_nag_average <- mean(s3_nag_final)

s3_phos_final <- remove_outliers(s3_phos)
s3_phos_average <- mean(s3_phos_final)

s3_hr1_coef_emis_10_final <- remove_outliers(s3_hr1_coef_emis_10)
s3_hr1_coef_emis_10_average <- mean(s3_hr1_coef_emis_10_final)

s3_hr1_coef_emis_25_final <- remove_outliers(s3_hr1_coef_emis_25)
s3_hr1_coef_emis_25_average <- mean(s3_hr1_coef_emis_25_final)

s3_hr1_coef_emis_50_final <- remove_outliers(s3_hr1_coef_emis_50)
s3_hr1_coef_emis_50_average <- mean(s3_hr1_coef_emis_50_final)

s3_hr1_coef_emis_100_final <- remove_outliers(s3_hr1_coef_emis_100)
s3_hr1_coef_emis_100_average <- mean(s3_hr1_coef_emis_100_final)

s3_hr1_homogenate_blank_final <- remove_outliers(s3_hr1_homogenate_blank)
s3_hr1_homogenate_blank_average <- mean(s3_hr1_homogenate_blank_final)

#sample 4
s4_bgluc_final <- remove_outliers(s4_bgluc)
s4_bgluc_average <- mean(s4_bgluc_final)

s4_nag_final <- remove_outliers(s4_nag)
s4_nag_average <- mean(s4_nag_final)

s4_phos_final <- remove_outliers(s4_phos)
s4_phos_average <- mean(s4_phos_final)

s4_hr1_coef_emis_10_final <- remove_outliers(s4_hr1_coef_emis_10)
s4_hr1_coef_emis_10_average <- mean(s4_hr1_coef_emis_10_final)

s4_hr1_coef_emis_25_final <- remove_outliers(s4_hr1_coef_emis_25)
s4_hr1_coef_emis_25_average <- mean(s4_hr1_coef_emis_25_final)

s4_hr1_coef_emis_50_final <- remove_outliers(s4_hr1_coef_emis_50)
s4_hr1_coef_emis_50_average <- mean(s4_hr1_coef_emis_50_final)

s4_hr1_coef_emis_100_final <- remove_outliers(s4_hr1_coef_emis_100)
s4_hr1_coef_emis_100_average <- mean(s4_hr1_coef_emis_100_final)

s4_hr1_homogenate_blank_final <- remove_outliers(s4_hr1_homogenate_blank)
s4_hr1_homogenate_blank_average <- mean(s4_hr1_homogenate_blank_final)

#sample 5
s5_bgluc_final <- remove_outliers(s5_bgluc)
s5_bgluc_average <- mean(s5_bgluc_final)

s5_nag_final <- remove_outliers(s5_nag)
s5_nag_average <- mean(s5_nag_final)

s5_phos_final <- remove_outliers(s5_phos)
s5_phos_average <- mean(s5_phos_final)

s5_hr1_coef_emis_10_final <- remove_outliers(s5_hr1_coef_emis_10)
s5_hr1_coef_emis_10_average <- mean(s5_hr1_coef_emis_10_final)

s5_hr1_coef_emis_25_final <- remove_outliers(s5_hr1_coef_emis_25)
s5_hr1_coef_emis_25_average <- mean(s5_hr1_coef_emis_25_final)

s5_hr1_coef_emis_50_final <- remove_outliers(s5_hr1_coef_emis_50)
s5_hr1_coef_emis_50_average <- mean(s5_hr1_coef_emis_50_final)

s5_hr1_coef_emis_100_final <- remove_outliers(s5_hr1_coef_emis_100)
s5_hr1_coef_emis_100_average <- mean(s5_hr1_coef_emis_100_final)

s5_hr1_homogenate_blank_final <- remove_outliers(s5_hr1_homogenate_blank)
s5_hr1_homogenate_blank_average <- mean(s5_hr1_homogenate_blank_final)

#sample 6
s6_bgluc_final <- remove_outliers(s6_bgluc)
s6_bgluc_average <- mean(s6_bgluc_final)

s6_nag_final <- remove_outliers(s6_nag)
s6_nag_average <- mean(s6_nag_final)

s6_phos_final <- remove_outliers(s6_phos)
s6_phos_average <- mean(s6_phos_final)

s6_hr1_coef_emis_10_final <- remove_outliers(s6_hr1_coef_emis_10)
s6_hr1_coef_emis_10_average <- mean(s6_hr1_coef_emis_10_final)

s6_hr1_coef_emis_25_final <- remove_outliers(s6_hr1_coef_emis_25)
s6_hr1_coef_emis_25_average <- mean(s6_hr1_coef_emis_25_final)

s6_hr1_coef_emis_50_final <- remove_outliers(s6_hr1_coef_emis_50)
s6_hr1_coef_emis_50_average <- mean(s6_hr1_coef_emis_50_final)

s6_hr1_coef_emis_100_final <- remove_outliers(s6_hr1_coef_emis_100)
s6_hr1_coef_emis_100_average <- mean(s6_hr1_coef_emis_100_final)

s6_hr1_homogenate_blank_final <- remove_outliers(s6_hr1_homogenate_blank)
s6_hr1_homogenate_blank_average <- mean(s6_hr1_homogenate_blank_final)

#sample 7
s7_bgluc_final <- remove_outliers(s7_bgluc)
s7_bgluc_average <- mean(s7_bgluc_final)

s7_nag_final <- remove_outliers(s7_nag)
s7_nag_average <- mean(s7_nag_final)

s7_phos_final <- remove_outliers(s7_phos)
s7_phos_average <- mean(s7_phos_final)

s7_hr1_coef_emis_10_final <- remove_outliers(s7_hr1_coef_emis_10)
s7_hr1_coef_emis_10_average <- mean(s7_hr1_coef_emis_10_final)

s7_hr1_coef_emis_25_final <- remove_outliers(s7_hr1_coef_emis_25)
s7_hr1_coef_emis_25_average <- mean(s7_hr1_coef_emis_25_final)

s7_hr1_coef_emis_50_final <- remove_outliers(s7_hr1_coef_emis_50)
s7_hr1_coef_emis_50_average <- mean(s7_hr1_coef_emis_50_final)

s7_hr1_coef_emis_100_final <- remove_outliers(s7_hr1_coef_emis_100)
s7_hr1_coef_emis_100_average <- mean(s7_hr1_coef_emis_100_final)

s7_hr1_homogenate_blank_final <- remove_outliers(s7_hr1_homogenate_blank)
s7_hr1_homogenate_blank_average <- mean(s7_hr1_homogenate_blank_final)

#sample 8
s8_bgluc_final <- remove_outliers(s8_bgluc)
s8_bgluc_average <- mean(s8_bgluc_final)

s8_nag_final <- remove_outliers(s8_nag)
s8_nag_average <- mean(s8_nag_final)

s8_phos_final <- remove_outliers(s8_phos)
s8_phos_average <- mean(s8_phos_final)

s8_hr1_coef_emis_10_final <- remove_outliers(s8_hr1_coef_emis_10)
s8_hr1_coef_emis_10_average <- mean(s8_hr1_coef_emis_10_final)

s8_hr1_coef_emis_25_final <- remove_outliers(s8_hr1_coef_emis_25)
s8_hr1_coef_emis_25_average <- mean(s8_hr1_coef_emis_25_final)

s8_hr1_coef_emis_50_final <- remove_outliers(s8_hr1_coef_emis_50)
s8_hr1_coef_emis_50_average <- mean(s8_hr1_coef_emis_50_final)

s8_hr1_coef_emis_100_final <- remove_outliers(s8_hr1_coef_emis_100)
s8_hr1_coef_emis_100_average <- mean(s8_hr1_coef_emis_100_final)

s8_hr1_homogenate_blank_final <- remove_outliers(s8_hr1_homogenate_blank)
s8_hr1_homogenate_blank_average <- mean(s8_hr1_homogenate_blank_final)

#sample 9
s9_bgluc_final <- remove_outliers(s9_bgluc)
s9_bgluc_average <- mean(s9_bgluc_final)

s9_nag_final <- remove_outliers(s9_nag)
s9_nag_average <- mean(s9_nag_final)

s9_phos_final <- remove_outliers(s9_phos)
s9_phos_average <- mean(s9_phos_final)

s9_hr1_coef_emis_10_final <- remove_outliers(s9_hr1_coef_emis_10)
s9_hr1_coef_emis_10_average <- mean(s9_hr1_coef_emis_10_final)

s9_hr1_coef_emis_25_final <- remove_outliers(s9_hr1_coef_emis_25)
s9_hr1_coef_emis_25_average <- mean(s9_hr1_coef_emis_25_final)

s9_hr1_coef_emis_50_final <- remove_outliers(s9_hr1_coef_emis_50)
s9_hr1_coef_emis_50_average <- mean(s9_hr1_coef_emis_50_final)

s9_hr1_coef_emis_100_final <- remove_outliers(s9_hr1_coef_emis_100)
s9_hr1_coef_emis_100_average <- mean(s9_hr1_coef_emis_100_final)

s9_hr1_homogenate_blank_final <- remove_outliers(s9_hr1_homogenate_blank)
s9_hr1_homogenate_blank_average <- mean(s9_hr1_homogenate_blank_final)

#sample 10
s10_bgluc_final <- remove_outliers(s10_bgluc)
s10_bgluc_average <- mean(s10_bgluc_final)

s10_nag_final <- remove_outliers(s10_nag)
s10_nag_average <- mean(s10_nag_final)

s10_phos_final <- remove_outliers(s10_phos)
s10_phos_average <- mean(s10_phos_final)

s10_hr1_coef_emis_10_final <- remove_outliers(s10_hr1_coef_emis_10)
s10_hr1_coef_emis_10_average <- mean(s10_hr1_coef_emis_10_final)

s10_hr1_coef_emis_25_final <- remove_outliers(s10_hr1_coef_emis_25)
s10_hr1_coef_emis_25_average <- mean(s10_hr1_coef_emis_25_final)

s10_hr1_coef_emis_50_final <- remove_outliers(s10_hr1_coef_emis_50)
s10_hr1_coef_emis_50_average <- mean(s10_hr1_coef_emis_50_final)

s10_hr1_coef_emis_100_final <- remove_outliers(s10_hr1_coef_emis_100)
s10_hr1_coef_emis_100_average <- mean(s10_hr1_coef_emis_100_final)

s10_hr1_homogenate_blank_final <- remove_outliers(s10_hr1_homogenate_blank)
s10_hr1_homogenate_blank_average <- mean(s10_hr1_homogenate_blank_final)

#sample 11
s11_bgluc_final <- remove_outliers(s11_bgluc)
s11_bgluc_average <- mean(s11_bgluc_final)

s11_nag_final <- remove_outliers(s11_nag)
s11_nag_average <- mean(s11_nag_final)

s11_phos_final <- remove_outliers(s11_phos)
s11_phos_average <- mean(s11_phos_final)

s11_hr1_coef_emis_10_final <- remove_outliers(s11_hr1_coef_emis_10)
s11_hr1_coef_emis_10_average <- mean(s11_hr1_coef_emis_10_final)

s11_hr1_coef_emis_25_final <- remove_outliers(s11_hr1_coef_emis_25)
s11_hr1_coef_emis_25_average <- mean(s11_hr1_coef_emis_25_final)

s11_hr1_coef_emis_50_final <- remove_outliers(s11_hr1_coef_emis_50)
s11_hr1_coef_emis_50_average <- mean(s11_hr1_coef_emis_50_final)

s11_hr1_coef_emis_100_final <- remove_outliers(s11_hr1_coef_emis_100)
s11_hr1_coef_emis_100_average <- mean(s11_hr1_coef_emis_100_final)

s11_hr1_homogenate_blank_final <- remove_outliers(s11_hr1_homogenate_blank)
s11_hr1_homogenate_blank_average <- mean(s11_hr1_homogenate_blank_final)

#sample 12
s12_bgluc_final <- remove_outliers(s12_bgluc)
s12_bgluc_average <- mean(s12_bgluc_final)

s12_nag_final <- remove_outliers(s12_nag)
s12_nag_average <- mean(s12_nag_final)

s12_phos_final <- remove_outliers(s12_phos)
s12_phos_average <- mean(s12_phos_final)

s12_hr1_coef_emis_10_final <- remove_outliers(s12_hr1_coef_emis_10)
s12_hr1_coef_emis_10_average <- mean(s12_hr1_coef_emis_10_final)

s12_hr1_coef_emis_25_final <- remove_outliers(s12_hr1_coef_emis_25)
s12_hr1_coef_emis_25_average <- mean(s12_hr1_coef_emis_25_final)

s12_hr1_coef_emis_50_final <- remove_outliers(s12_hr1_coef_emis_50)
s12_hr1_coef_emis_50_average <- mean(s12_hr1_coef_emis_50_final)

s12_hr1_coef_emis_100_final <- remove_outliers(s12_hr1_coef_emis_100)
s12_hr1_coef_emis_100_average <- mean(s12_hr1_coef_emis_100_final)

s12_hr1_homogenate_blank_final <- remove_outliers(s12_hr1_homogenate_blank)
s12_hr1_homogenate_blank_average <- mean(s12_hr1_homogenate_blank_final)

#sample 13
s13_bgluc_final <- remove_outliers(s13_bgluc)
s13_bgluc_average <- mean(s13_bgluc_final)

s13_nag_final <- remove_outliers(s13_nag)
s13_nag_average <- mean(s13_nag_final)

s13_phos_final <- remove_outliers(s13_phos)
s13_phos_average <- mean(s13_phos_final)

s13_hr1_coef_emis_10_final <- remove_outliers(s13_hr1_coef_emis_10)
s13_hr1_coef_emis_10_average <- mean(s13_hr1_coef_emis_10_final)

s13_hr1_coef_emis_25_final <- remove_outliers(s13_hr1_coef_emis_25)
s13_hr1_coef_emis_25_average <- mean(s13_hr1_coef_emis_25_final)

s13_hr1_coef_emis_50_final <- remove_outliers(s13_hr1_coef_emis_50)
s13_hr1_coef_emis_50_average <- mean(s13_hr1_coef_emis_50_final)

s13_hr1_coef_emis_100_final <- remove_outliers(s13_hr1_coef_emis_100)
s13_hr1_coef_emis_100_average <- mean(s13_hr1_coef_emis_100_final)

s13_hr1_homogenate_blank_final <- remove_outliers(s13_hr1_homogenate_blank)
s13_hr1_homogenate_blank_average <- mean(s13_hr1_homogenate_blank_final)

#sample 14
s14_bgluc_final <- remove_outliers(s14_bgluc)
s14_bgluc_average <- mean(s14_bgluc_final)

s14_nag_final <- remove_outliers(s14_nag)
s14_nag_average <- mean(s14_nag_final)

s14_phos_final <- remove_outliers(s14_phos)
s14_phos_average <- mean(s14_phos_final)

s14_hr1_coef_emis_10_final <- remove_outliers(s14_hr1_coef_emis_10)
s14_hr1_coef_emis_10_average <- mean(s14_hr1_coef_emis_10_final)

s14_hr1_coef_emis_25_final <- remove_outliers(s14_hr1_coef_emis_25)
s14_hr1_coef_emis_25_average <- mean(s14_hr1_coef_emis_25_final)

s14_hr1_coef_emis_50_final <- remove_outliers(s14_hr1_coef_emis_50)
s14_hr1_coef_emis_50_average <- mean(s14_hr1_coef_emis_50_final)

s14_hr1_coef_emis_100_final <- remove_outliers(s14_hr1_coef_emis_100)
s14_hr1_coef_emis_100_average <- mean(s14_hr1_coef_emis_100_final)

s14_hr1_homogenate_blank_final <- remove_outliers(s14_hr1_homogenate_blank)
s14_hr1_homogenate_blank_average <- mean(s14_hr1_homogenate_blank_final)

#sample 15
s15_bgluc_final <- remove_outliers(s15_bgluc)
s15_bgluc_average <- mean(s15_bgluc_final)

s15_nag_final <- remove_outliers(s15_nag)
s15_nag_average <- mean(s15_nag_final)

s15_phos_final <- remove_outliers(s15_phos)
s15_phos_average <- mean(s15_phos_final)

s15_hr1_coef_emis_10_final <- remove_outliers(s15_hr1_coef_emis_10)
s15_hr1_coef_emis_10_average <- mean(s15_hr1_coef_emis_10_final)

s15_hr1_coef_emis_25_final <- remove_outliers(s15_hr1_coef_emis_25)
s15_hr1_coef_emis_25_average <- mean(s15_hr1_coef_emis_25_final)

s15_hr1_coef_emis_50_final <- remove_outliers(s15_hr1_coef_emis_50)
s15_hr1_coef_emis_50_average <- mean(s15_hr1_coef_emis_50_final)

s15_hr1_coef_emis_100_final <- remove_outliers(s15_hr1_coef_emis_100)
s15_hr1_coef_emis_100_average <- mean(s15_hr1_coef_emis_100_final)

s15_hr1_homogenate_blank_final <- remove_outliers(s15_hr1_homogenate_blank)
s15_hr1_homogenate_blank_average <- mean(s15_hr1_homogenate_blank_final)

#sample 16
s16_bgluc_final <- remove_outliers(s16_bgluc)
s16_bgluc_average <- mean(s16_bgluc_final)

s16_nag_final <- remove_outliers(s16_nag)
s16_nag_average <- mean(s16_nag_final)

s16_phos_final <- remove_outliers(s16_phos)
s16_phos_average <- mean(s16_phos_final)

s16_hr1_coef_emis_10_final <- remove_outliers(s16_hr1_coef_emis_10)
s16_hr1_coef_emis_10_average <- mean(s16_hr1_coef_emis_10_final)

s16_hr1_coef_emis_25_final <- remove_outliers(s16_hr1_coef_emis_25)
s16_hr1_coef_emis_25_average <- mean(s16_hr1_coef_emis_25_final)

s16_hr1_coef_emis_50_final <- remove_outliers(s16_hr1_coef_emis_50)
s16_hr1_coef_emis_50_average <- mean(s16_hr1_coef_emis_50_final)

s16_hr1_coef_emis_100_final <- remove_outliers(s16_hr1_coef_emis_100)
s16_hr1_coef_emis_100_average <- mean(s16_hr1_coef_emis_100_final)

s16_hr1_homogenate_blank_final <- remove_outliers(s16_hr1_homogenate_blank)
s16_hr1_homogenate_blank_average <- mean(s16_hr1_homogenate_blank_final)

#sample 17
s17_bgluc_final <- remove_outliers(s17_bgluc)
s17_bgluc_average <- mean(s17_bgluc_final)

s17_nag_final <- remove_outliers(s17_nag)
s17_nag_average <- mean(s17_nag_final)

s17_phos_final <- remove_outliers(s17_phos)
s17_phos_average <- mean(s17_phos_final)

s17_hr1_coef_emis_10_final <- remove_outliers(s17_hr1_coef_emis_10)
s17_hr1_coef_emis_10_average <- mean(s17_hr1_coef_emis_10_final)

s17_hr1_coef_emis_25_final <- remove_outliers(s17_hr1_coef_emis_25)
s17_hr1_coef_emis_25_average <- mean(s17_hr1_coef_emis_25_final)

s17_hr1_coef_emis_50_final <- remove_outliers(s17_hr1_coef_emis_50)
s17_hr1_coef_emis_50_average <- mean(s17_hr1_coef_emis_50_final)

s17_hr1_coef_emis_100_final <- remove_outliers(s17_hr1_coef_emis_100)
s17_hr1_coef_emis_100_average <- mean(s17_hr1_coef_emis_100_final)

s17_hr1_homogenate_blank_final <- remove_outliers(s17_hr1_homogenate_blank)
s17_hr1_homogenate_blank_average <- mean(s17_hr1_homogenate_blank_final)

#sample 18
s18_bgluc_final <- remove_outliers(s18_bgluc)
s18_bgluc_average <- mean(s18_bgluc_final)

s18_nag_final <- remove_outliers(s18_nag)
s18_nag_average <- mean(s18_nag_final)

s18_phos_final <- remove_outliers(s18_phos)
s18_phos_average <- mean(s18_phos_final)

s18_hr1_coef_emis_10_final <- remove_outliers(s18_hr1_coef_emis_10)
s18_hr1_coef_emis_10_average <- mean(s18_hr1_coef_emis_10_final)

s18_hr1_coef_emis_25_final <- remove_outliers(s18_hr1_coef_emis_25)
s18_hr1_coef_emis_25_average <- mean(s18_hr1_coef_emis_25_final)

s18_hr1_coef_emis_50_final <- remove_outliers(s18_hr1_coef_emis_50)
s18_hr1_coef_emis_50_average <- mean(s18_hr1_coef_emis_50_final)

s18_hr1_coef_emis_100_final <- remove_outliers(s18_hr1_coef_emis_100)
s18_hr1_coef_emis_100_average <- mean(s18_hr1_coef_emis_100_final)

s18_hr1_homogenate_blank_final <- remove_outliers(s18_hr1_homogenate_blank)
s18_hr1_homogenate_blank_average <- mean(s18_hr1_homogenate_blank_final)

#sample 19
s19_bgluc_final <- remove_outliers(s19_bgluc)
s19_bgluc_average <- mean(s19_bgluc_final)

s19_nag_final <- remove_outliers(s19_nag)
s19_nag_average <- mean(s19_nag_final)

s19_phos_final <- remove_outliers(s19_phos)
s19_phos_average <- mean(s19_phos_final)

s19_hr1_coef_emis_10_final <- remove_outliers(s19_hr1_coef_emis_10)
s19_hr1_coef_emis_10_average <- mean(s19_hr1_coef_emis_10_final)

s19_hr1_coef_emis_25_final <- remove_outliers(s19_hr1_coef_emis_25)
s19_hr1_coef_emis_25_average <- mean(s19_hr1_coef_emis_25_final)

s19_hr1_coef_emis_50_final <- remove_outliers(s19_hr1_coef_emis_50)
s19_hr1_coef_emis_50_average <- mean(s19_hr1_coef_emis_50_final)

s19_hr1_coef_emis_100_final <- remove_outliers(s19_hr1_coef_emis_100)
s19_hr1_coef_emis_100_average <- mean(s19_hr1_coef_emis_100_final)

s19_hr1_homogenate_blank_final <- remove_outliers(s19_hr1_homogenate_blank)
s19_hr1_homogenate_blank_average <- mean(s19_hr1_homogenate_blank_final)

#sample 20
s20_bgluc_final <- remove_outliers(s20_bgluc)
s20_bgluc_average <- mean(s20_bgluc_final)

s20_nag_final <- remove_outliers(s20_nag)
s20_nag_average <- mean(s20_nag_final)

s20_phos_final <- remove_outliers(s20_phos)
s20_phos_average <- mean(s20_phos_final)

s20_hr1_coef_emis_10_final <- remove_outliers(s20_hr1_coef_emis_10)
s20_hr1_coef_emis_10_average <- mean(s20_hr1_coef_emis_10_final)

s20_hr1_coef_emis_25_final <- remove_outliers(s20_hr1_coef_emis_25)
s20_hr1_coef_emis_25_average <- mean(s20_hr1_coef_emis_25_final)

s20_hr1_coef_emis_50_final <- remove_outliers(s20_hr1_coef_emis_50)
s20_hr1_coef_emis_50_average <- mean(s20_hr1_coef_emis_50_final)

s20_hr1_coef_emis_100_final <- remove_outliers(s20_hr1_coef_emis_100)
s20_hr1_coef_emis_100_average <- mean(s20_hr1_coef_emis_100_final)

s20_hr1_homogenate_blank_final <- remove_outliers(s20_hr1_homogenate_blank)
s20_hr1_homogenate_blank_average <- mean(s20_hr1_homogenate_blank_final)

#sample 21
s21_bgluc_final <- remove_outliers(s21_bgluc)
s21_bgluc_average <- mean(s21_bgluc_final)

s21_nag_final <- remove_outliers(s21_nag)
s21_nag_average <- mean(s21_nag_final)

s21_phos_final <- remove_outliers(s21_phos)
s21_phos_average <- mean(s21_phos_final)

s21_hr1_coef_emis_10_final <- remove_outliers(s21_hr1_coef_emis_10)
s21_hr1_coef_emis_10_average <- mean(s21_hr1_coef_emis_10_final)

s21_hr1_coef_emis_25_final <- remove_outliers(s21_hr1_coef_emis_25)
s21_hr1_coef_emis_25_average <- mean(s21_hr1_coef_emis_25_final)

s21_hr1_coef_emis_50_final <- remove_outliers(s21_hr1_coef_emis_50)
s21_hr1_coef_emis_50_average <- mean(s21_hr1_coef_emis_50_final)

s21_hr1_coef_emis_100_final <- remove_outliers(s21_hr1_coef_emis_100)
s21_hr1_coef_emis_100_average <- mean(s21_hr1_coef_emis_100_final)

s21_hr1_homogenate_blank_final <- remove_outliers(s21_hr1_homogenate_blank)
s21_hr1_homogenate_blank_average <- mean(s21_hr1_homogenate_blank_final)

#sample 22
s22_bgluc_final <- remove_outliers(s22_bgluc)
s22_bgluc_average <- mean(s22_bgluc_final)

s22_nag_final <- remove_outliers(s22_nag)
s22_nag_average <- mean(s22_nag_final)

s22_phos_final <- remove_outliers(s22_phos)
s22_phos_average <- mean(s22_phos_final)

s22_hr1_coef_emis_10_final <- remove_outliers(s22_hr1_coef_emis_10)
s22_hr1_coef_emis_10_average <- mean(s22_hr1_coef_emis_10_final)

s22_hr1_coef_emis_25_final <- remove_outliers(s22_hr1_coef_emis_25)
s22_hr1_coef_emis_25_average <- mean(s22_hr1_coef_emis_25_final)

s22_hr1_coef_emis_50_final <- remove_outliers(s22_hr1_coef_emis_50)
s22_hr1_coef_emis_50_average <- mean(s22_hr1_coef_emis_50_final)

s22_hr1_coef_emis_100_final <- remove_outliers(s22_hr1_coef_emis_100)
s22_hr1_coef_emis_100_average <- mean(s22_hr1_coef_emis_100_final)

s22_hr1_homogenate_blank_final <- remove_outliers(s22_hr1_homogenate_blank)
s22_hr1_homogenate_blank_average <- mean(s22_hr1_homogenate_blank_final)

#sample 23
s23_bgluc_final <- remove_outliers(s23_bgluc)
s23_bgluc_average <- mean(s23_bgluc_final)

s23_nag_final <- remove_outliers(s23_nag)
s23_nag_average <- mean(s23_nag_final)

s23_phos_final <- remove_outliers(s23_phos)
s23_phos_average <- mean(s23_phos_final)

s23_hr1_coef_emis_10_final <- remove_outliers(s23_hr1_coef_emis_10)
s23_hr1_coef_emis_10_average <- mean(s23_hr1_coef_emis_10_final)

s23_hr1_coef_emis_25_final <- remove_outliers(s23_hr1_coef_emis_25)
s23_hr1_coef_emis_25_average <- mean(s23_hr1_coef_emis_25_final)

s23_hr1_coef_emis_50_final <- remove_outliers(s23_hr1_coef_emis_50)
s23_hr1_coef_emis_50_average <- mean(s23_hr1_coef_emis_50_final)

s23_hr1_coef_emis_100_final <- remove_outliers(s23_hr1_coef_emis_100)
s23_hr1_coef_emis_100_average <- mean(s23_hr1_coef_emis_100_final)

s23_hr1_homogenate_blank_final <- remove_outliers(s23_hr1_homogenate_blank)
s23_hr1_homogenate_blank_average <- mean(s23_hr1_homogenate_blank_final)

#sample 24
s24_bgluc_final <- remove_outliers(s24_bgluc)
s24_bgluc_average <- mean(s24_bgluc_final)

s24_nag_final <- remove_outliers(s24_nag)
s24_nag_average <- mean(s24_nag_final)

s24_phos_final <- remove_outliers(s24_phos)
s24_phos_average <- mean(s24_phos_final)

s24_hr1_coef_emis_10_final <- remove_outliers(s24_hr1_coef_emis_10)
s24_hr1_coef_emis_10_average <- mean(s24_hr1_coef_emis_10_final)

s24_hr1_coef_emis_25_final <- remove_outliers(s24_hr1_coef_emis_25)
s24_hr1_coef_emis_25_average <- mean(s24_hr1_coef_emis_25_final)

s24_hr1_coef_emis_50_final <- remove_outliers(s24_hr1_coef_emis_50)
s24_hr1_coef_emis_50_average <- mean(s24_hr1_coef_emis_50_final)

s24_hr1_coef_emis_100_final <- remove_outliers(s24_hr1_coef_emis_100)
s24_hr1_coef_emis_100_average <- mean(s24_hr1_coef_emis_100_final)

s24_hr1_homogenate_blank_final <- remove_outliers(s24_hr1_homogenate_blank)
s24_hr1_homogenate_blank_average <- mean(s24_hr1_homogenate_blank_final)

#sample 25
s25_bgluc_final <- remove_outliers(s25_bgluc)
s25_bgluc_average <- mean(s25_bgluc_final)

s25_nag_final <- remove_outliers(s25_nag)
s25_nag_average <- mean(s25_nag_final)

s25_phos_final <- remove_outliers(s25_phos)
s25_phos_average <- mean(s25_phos_final)

s25_hr1_coef_emis_10_final <- remove_outliers(s25_hr1_coef_emis_10)
s25_hr1_coef_emis_10_average <- mean(s25_hr1_coef_emis_10_final)

s25_hr1_coef_emis_25_final <- remove_outliers(s25_hr1_coef_emis_25)
s25_hr1_coef_emis_25_average <- mean(s25_hr1_coef_emis_25_final)

s25_hr1_coef_emis_50_final <- remove_outliers(s25_hr1_coef_emis_50)
s25_hr1_coef_emis_50_average <- mean(s25_hr1_coef_emis_50_final)

s25_hr1_coef_emis_100_final <- remove_outliers(s25_hr1_coef_emis_100)
s25_hr1_coef_emis_100_average <- mean(s25_hr1_coef_emis_100_final)

s25_hr1_homogenate_blank_final <- remove_outliers(s25_hr1_homogenate_blank)
s25_hr1_homogenate_blank_average <- mean(s25_hr1_homogenate_blank_final)

#sample 26
s26_bgluc_final <- remove_outliers(s26_bgluc)
s26_bgluc_average <- mean(s26_bgluc_final)

s26_nag_final <- remove_outliers(s26_nag)
s26_nag_average <- mean(s26_nag_final)

s26_phos_final <- remove_outliers(s26_phos)
s26_phos_average <- mean(s26_phos_final)

s26_hr1_coef_emis_10_final <- remove_outliers(s26_hr1_coef_emis_10)
s26_hr1_coef_emis_10_average <- mean(s26_hr1_coef_emis_10_final)

s26_hr1_coef_emis_25_final <- remove_outliers(s26_hr1_coef_emis_25)
s26_hr1_coef_emis_25_average <- mean(s26_hr1_coef_emis_25_final)

s26_hr1_coef_emis_50_final <- remove_outliers(s26_hr1_coef_emis_50)
s26_hr1_coef_emis_50_average <- mean(s26_hr1_coef_emis_50_final)

s26_hr1_coef_emis_100_final <- remove_outliers(s26_hr1_coef_emis_100)
s26_hr1_coef_emis_100_average <- mean(s26_hr1_coef_emis_100_final)

s26_hr1_homogenate_blank_final <- remove_outliers(s26_hr1_homogenate_blank)
s26_hr1_homogenate_blank_average <- mean(s26_hr1_homogenate_blank_final)

#sample 27
s27_bgluc_final <- remove_outliers(s27_bgluc)
s27_bgluc_average <- mean(s27_bgluc_final)

s27_nag_final <- remove_outliers(s27_nag)
s27_nag_average <- mean(s27_nag_final)

s27_phos_final <- remove_outliers(s27_phos)
s27_phos_average <- mean(s27_phos_final)

s27_hr1_coef_emis_10_final <- remove_outliers(s27_hr1_coef_emis_10)
s27_hr1_coef_emis_10_average <- mean(s27_hr1_coef_emis_10_final)

s27_hr1_coef_emis_25_final <- remove_outliers(s27_hr1_coef_emis_25)
s27_hr1_coef_emis_25_average <- mean(s27_hr1_coef_emis_25_final)

s27_hr1_coef_emis_50_final <- remove_outliers(s27_hr1_coef_emis_50)
s27_hr1_coef_emis_50_average <- mean(s27_hr1_coef_emis_50_final)

s27_hr1_coef_emis_100_final <- remove_outliers(s27_hr1_coef_emis_100)
s27_hr1_coef_emis_100_average <- mean(s27_hr1_coef_emis_100_final)

s27_hr1_homogenate_blank_final <- remove_outliers(s27_hr1_homogenate_blank)
s27_hr1_homogenate_blank_average <- mean(s27_hr1_homogenate_blank_final)

#sample 28
s28_bgluc_final <- remove_outliers(s28_bgluc)
s28_bgluc_average <- mean(s28_bgluc_final)

s28_nag_final <- remove_outliers(s28_nag)
s28_nag_average <- mean(s28_nag_final)

s28_phos_final <- remove_outliers(s28_phos)
s28_phos_average <- mean(s28_phos_final)

s28_hr1_coef_emis_10_final <- remove_outliers(s28_hr1_coef_emis_10)
s28_hr1_coef_emis_10_average <- mean(s28_hr1_coef_emis_10_final)

s28_hr1_coef_emis_25_final <- remove_outliers(s28_hr1_coef_emis_25)
s28_hr1_coef_emis_25_average <- mean(s28_hr1_coef_emis_25_final)

s28_hr1_coef_emis_50_final <- remove_outliers(s28_hr1_coef_emis_50)
s28_hr1_coef_emis_50_average <- mean(s28_hr1_coef_emis_50_final)

s28_hr1_coef_emis_100_final <- remove_outliers(s28_hr1_coef_emis_100)
s28_hr1_coef_emis_100_average <- mean(s28_hr1_coef_emis_100_final)

s28_hr1_homogenate_blank_final <- remove_outliers(s28_hr1_homogenate_blank)
s28_hr1_homogenate_blank_average <- mean(s28_hr1_homogenate_blank_final)

#sample 29
s29_bgluc_final <- remove_outliers(s29_bgluc)
s29_bgluc_average <- mean(s29_bgluc_final)

s29_nag_final <- remove_outliers(s29_nag)
s29_nag_average <- mean(s29_nag_final)

s29_phos_final <- remove_outliers(s29_phos)
s29_phos_average <- mean(s29_phos_final)

s29_hr1_coef_emis_10_final <- remove_outliers(s29_hr1_coef_emis_10)
s29_hr1_coef_emis_10_average <- mean(s29_hr1_coef_emis_10_final)

s29_hr1_coef_emis_25_final <- remove_outliers(s29_hr1_coef_emis_25)
s29_hr1_coef_emis_25_average <- mean(s29_hr1_coef_emis_25_final)

s29_hr1_coef_emis_50_final <- remove_outliers(s29_hr1_coef_emis_50)
s29_hr1_coef_emis_50_average <- mean(s29_hr1_coef_emis_50_final)

s29_hr1_coef_emis_100_final <- remove_outliers(s29_hr1_coef_emis_100)
s29_hr1_coef_emis_100_average <- mean(s29_hr1_coef_emis_100_final)

s29_hr1_homogenate_blank_final <- remove_outliers(s29_hr1_homogenate_blank)
s29_hr1_homogenate_blank_average <- mean(s29_hr1_homogenate_blank_final)

#sample 30
s30_bgluc_final <- remove_outliers(s30_bgluc)
s30_bgluc_average <- mean(s30_bgluc_final)

s30_nag_final <- remove_outliers(s30_nag)
s30_nag_average <- mean(s30_nag_final)

s30_phos_final <- remove_outliers(s30_phos)
s30_phos_average <- mean(s30_phos_final)

s30_hr1_coef_emis_10_final <- remove_outliers(s30_hr1_coef_emis_10)
s30_hr1_coef_emis_10_average <- mean(s30_hr1_coef_emis_10_final)

s30_hr1_coef_emis_25_final <- remove_outliers(s30_hr1_coef_emis_25)
s30_hr1_coef_emis_25_average <- mean(s30_hr1_coef_emis_25_final)

s30_hr1_coef_emis_50_final <- remove_outliers(s30_hr1_coef_emis_50)
s30_hr1_coef_emis_50_average <- mean(s30_hr1_coef_emis_50_final)

s30_hr1_coef_emis_100_final <- remove_outliers(s30_hr1_coef_emis_100)
s30_hr1_coef_emis_100_average <- mean(s30_hr1_coef_emis_100_final)

s30_hr1_homogenate_blank_final <- remove_outliers(s30_hr1_homogenate_blank)
s30_hr1_homogenate_blank_average <- mean(s30_hr1_homogenate_blank_final)

#control 1
c1_bgluc_final <- remove_outliers(c1_bgluc)
c1_bgluc_average <- mean(c1_bgluc_final)

c1_nag_final <- remove_outliers(c1_nag)
c1_nag_average <- mean(c1_nag_final)

c1_phos_final <- remove_outliers(c1_phos)
c1_phos_average <- mean(c1_phos_final)

c1_hr1_coef_emis_10_final <- remove_outliers(c1_hr1_coef_emis_10)
c1_hr1_coef_emis_10_average <- mean(c1_hr1_coef_emis_10_final)

c1_hr1_coef_emis_25_final <- remove_outliers(c1_hr1_coef_emis_25)
c1_hr1_coef_emis_25_average <- mean(c1_hr1_coef_emis_25_final)

c1_hr1_coef_emis_50_final <- remove_outliers(c1_hr1_coef_emis_50)
c1_hr1_coef_emis_50_average <- mean(c1_hr1_coef_emis_50_final)

c1_hr1_coef_emis_100_final <- remove_outliers(c1_hr1_coef_emis_100)
c1_hr1_coef_emis_100_average <- mean(c1_hr1_coef_emis_100_final)

c1_hr1_homogenate_blank_final <- remove_outliers(c1_hr1_homogenate_blank)
c1_hr1_homogenate_blank_average <- mean(c1_hr1_homogenate_blank_final)

#control 2
c2_bgluc_final <- remove_outliers(c2_bgluc)
c2_bgluc_average <- mean(c2_bgluc_final)

c2_nag_final <- remove_outliers(c2_nag)
c2_nag_average <- mean(c2_nag_final)

c2_phos_final <- remove_outliers(c2_phos)
c2_phos_average <- mean(c2_phos_final)

c2_hr1_coef_emis_10_final <- remove_outliers(c2_hr1_coef_emis_10)
c2_hr1_coef_emis_10_average <- mean(c2_hr1_coef_emis_10_final)

c2_hr1_coef_emis_25_final <- remove_outliers(c2_hr1_coef_emis_25)
c2_hr1_coef_emis_25_average <- mean(c2_hr1_coef_emis_25_final)

c2_hr1_coef_emis_50_final <- remove_outliers(c2_hr1_coef_emis_50)
c2_hr1_coef_emis_50_average <- mean(c2_hr1_coef_emis_50_final)

c2_hr1_coef_emis_100_final <- remove_outliers(c2_hr1_coef_emis_100)
c2_hr1_coef_emis_100_average <- mean(c2_hr1_coef_emis_100_final)

c2_hr1_homogenate_blank_final <- remove_outliers(c2_hr1_homogenate_blank)
c2_hr1_homogenate_blank_average <- mean(c2_hr1_homogenate_blank_final)

#control 3
c3_bgluc_final <- remove_outliers(c3_bgluc)
c3_bgluc_average <- mean(c3_bgluc_final)

c3_nag_final <- remove_outliers(c3_nag)
c3_nag_average <- mean(c3_nag_final)

c3_phos_final <- remove_outliers(c3_phos)
c3_phos_average <- mean(c3_phos_final)

c3_hr1_coef_emis_10_final <- remove_outliers(c3_hr1_coef_emis_10)
c3_hr1_coef_emis_10_average <- mean(c3_hr1_coef_emis_10_final)

c3_hr1_coef_emis_25_final <- remove_outliers(c3_hr1_coef_emis_25)
c3_hr1_coef_emis_25_average <- mean(c3_hr1_coef_emis_25_final)

c3_hr1_coef_emis_50_final <- remove_outliers(c3_hr1_coef_emis_50)
c3_hr1_coef_emis_50_average <- mean(c3_hr1_coef_emis_50_final)

c3_hr1_coef_emis_100_final <- remove_outliers(c3_hr1_coef_emis_100)
c3_hr1_coef_emis_100_average <- mean(c3_hr1_coef_emis_100_final)

c3_hr1_homogenate_blank_final <- remove_outliers(c3_hr1_homogenate_blank)
c3_hr1_homogenate_blank_average <- mean(c3_hr1_homogenate_blank_final)

#control 4
c4_bgluc_final <- remove_outliers(c4_bgluc)
c4_bgluc_average <- mean(c4_bgluc_final)

c4_nag_final <- remove_outliers(c4_nag)
c4_nag_average <- mean(c4_nag_final)

c4_phos_final <- remove_outliers(c4_phos)
c4_phos_average <- mean(c4_phos_final)

c4_hr1_coef_emis_10_final <- remove_outliers(c4_hr1_coef_emis_10)
c4_hr1_coef_emis_10_average <- mean(c4_hr1_coef_emis_10_final)

c4_hr1_coef_emis_25_final <- remove_outliers(c4_hr1_coef_emis_25)
c4_hr1_coef_emis_25_average <- mean(c4_hr1_coef_emis_25_final)

c4_hr1_coef_emis_50_final <- remove_outliers(c4_hr1_coef_emis_50)
c4_hr1_coef_emis_50_average <- mean(c4_hr1_coef_emis_50_final)

c4_hr1_coef_emis_100_final <- remove_outliers(c4_hr1_coef_emis_100)
c4_hr1_coef_emis_100_average <- mean(c4_hr1_coef_emis_100_final)

c4_hr1_homogenate_blank_final <- remove_outliers(c4_hr1_homogenate_blank)
c4_hr1_homogenate_blank_average <- mean(c4_hr1_homogenate_blank_final)
#################################################################################
#calculating averages of the controls for all enzymes, MUB standards and blank
#################################################################################

bgluc_control_final <- rbind(c1_bgluc_average,c2_bgluc_average,c3_bgluc_average, c4_bgluc_average)
bgluc_control_average <- mean(bgluc_control_final)

nag_control_final <- rbind(c1_nag_average,c2_nag_average, c3_nag_average, c4_nag_average)
nag_control_average <- mean(nag_control_final)

phos_control_final <- rbind(c1_phos_average,c2_phos_average, c3_phos_average, c4_phos_average)
phos_control_average <- mean(phos_control_final)

hr1_coef_emis_10_control_final <- rbind(c1_hr1_coef_emis_10_average,c2_hr1_coef_emis_10_average, c3_hr1_coef_emis_10_average
                                        ,c4_hr1_coef_emis_10_average)
hr1_coef_emis_10_control_average <- mean(hr1_coef_emis_10_control_final)

hr1_coef_emis_25_control_final <- rbind(c1_hr1_coef_emis_25_average,c2_hr1_coef_emis_25_average,c3_hr1_coef_emis_25_average,
                                        c4_hr1_coef_emis_25_average)
hr1_coef_emis_25_control_average <- mean(hr1_coef_emis_25_control_final)

hr1_coef_emis_50_control_final <- rbind(c1_hr1_coef_emis_50_average,c2_hr1_coef_emis_50_average,c3_hr1_coef_emis_50_average,
                                        c4_hr1_coef_emis_50_average)
hr1_coef_emis_50_control_average <- mean(hr1_coef_emis_50_control_final)

hr1_coef_emis_100_control_final <- rbind(c1_hr1_coef_emis_100_average,c2_hr1_coef_emis_100_average,c3_hr1_coef_emis_100_average,
                                         c4_hr1_coef_emis_100_average)
hr1_coef_emis_100_control_average <- mean(hr1_coef_emis_100_control_final)

hr1_homogenate_blank_control_final <- rbind (c1_hr1_homogenate_blank_average, c2_hr1_homogenate_blank_average,c3_hr1_homogenate_blank_average
                                             , c4_hr1_homogenate_blank_average)
hr1_homogenate_blank_control_average <- mean (hr1_homogenate_blank_control_final)

#########################################################
#slope calculatios
############################################################

#x values for slope calculation

slope_x <- c(10,25,50,100)


#y values for slope with homogenate calculation

slope_y_s1 <- rbind(s1_hr1_coef_emis_10_average, s1_hr1_coef_emis_25_average,
                    s1_hr1_coef_emis_50_average, s1_hr1_coef_emis_100_average)
slope_y_s2 <- rbind(s2_hr1_coef_emis_10_average, s2_hr1_coef_emis_25_average,
                    s2_hr1_coef_emis_50_average, s2_hr1_coef_emis_100_average)
slope_y_s3 <- rbind(s3_hr1_coef_emis_10_average, s3_hr1_coef_emis_25_average,
                    s3_hr1_coef_emis_50_average, s3_hr1_coef_emis_100_average)
slope_y_s4 <- rbind(s4_hr1_coef_emis_10_average, s4_hr1_coef_emis_25_average,
                    s4_hr1_coef_emis_50_average, s4_hr1_coef_emis_100_average)
slope_y_s5 <- rbind(s5_hr1_coef_emis_10_average, s5_hr1_coef_emis_25_average,
                    s5_hr1_coef_emis_50_average, s5_hr1_coef_emis_100_average)
slope_y_s6 <- rbind(s6_hr1_coef_emis_10_average, s6_hr1_coef_emis_25_average,
                    s6_hr1_coef_emis_50_average, s6_hr1_coef_emis_100_average)
slope_y_s7 <- rbind(s7_hr1_coef_emis_10_average, s7_hr1_coef_emis_25_average,
                    s7_hr1_coef_emis_50_average, s7_hr1_coef_emis_100_average)
slope_y_s8 <- rbind(s8_hr1_coef_emis_10_average, s8_hr1_coef_emis_25_average,
                    s8_hr1_coef_emis_50_average, s8_hr1_coef_emis_100_average)
slope_y_s9 <- rbind(s9_hr1_coef_emis_10_average, s9_hr1_coef_emis_25_average,
                    s9_hr1_coef_emis_50_average, s9_hr1_coef_emis_100_average)
slope_y_s10 <- rbind(s10_hr1_coef_emis_10_average, s10_hr1_coef_emis_25_average,
                    s10_hr1_coef_emis_50_average, s10_hr1_coef_emis_100_average)
slope_y_s11 <- rbind(s11_hr1_coef_emis_10_average, s11_hr1_coef_emis_25_average,
                    s11_hr1_coef_emis_50_average, s11_hr1_coef_emis_100_average)
slope_y_s12 <- rbind(s12_hr1_coef_emis_10_average, s12_hr1_coef_emis_25_average,
                    s12_hr1_coef_emis_50_average, s12_hr1_coef_emis_100_average)
slope_y_s13 <- rbind(s13_hr1_coef_emis_10_average, s13_hr1_coef_emis_25_average,
                    s13_hr1_coef_emis_50_average, s13_hr1_coef_emis_100_average)
slope_y_s14 <- rbind(s14_hr1_coef_emis_10_average, s14_hr1_coef_emis_25_average,
                    s14_hr1_coef_emis_50_average, s14_hr1_coef_emis_100_average)
slope_y_s15 <- rbind(s15_hr1_coef_emis_10_average, s15_hr1_coef_emis_25_average,
                    s15_hr1_coef_emis_50_average, s15_hr1_coef_emis_100_average)
slope_y_s16 <- rbind(s16_hr1_coef_emis_10_average, s16_hr1_coef_emis_25_average,
                    s16_hr1_coef_emis_50_average, s16_hr1_coef_emis_100_average)
slope_y_s17 <- rbind(s17_hr1_coef_emis_10_average, s17_hr1_coef_emis_25_average,
                    s17_hr1_coef_emis_50_average, s17_hr1_coef_emis_100_average)
slope_y_s18 <- rbind(s18_hr1_coef_emis_10_average, s18_hr1_coef_emis_25_average,
                    s18_hr1_coef_emis_50_average, s18_hr1_coef_emis_100_average)
slope_y_s19 <- rbind(s19_hr1_coef_emis_10_average, s19_hr1_coef_emis_25_average,
                    s19_hr1_coef_emis_50_average, s19_hr1_coef_emis_100_average)
slope_y_s20 <- rbind(s20_hr1_coef_emis_10_average, s20_hr1_coef_emis_25_average,
                    s20_hr1_coef_emis_50_average, s20_hr1_coef_emis_100_average)
slope_y_s21 <- rbind(s21_hr1_coef_emis_10_average, s21_hr1_coef_emis_25_average,
                     s21_hr1_coef_emis_50_average, s21_hr1_coef_emis_100_average)
slope_y_s22 <- rbind(s22_hr1_coef_emis_10_average, s22_hr1_coef_emis_25_average,
                     s22_hr1_coef_emis_50_average, s22_hr1_coef_emis_100_average)
slope_y_s23 <- rbind(s23_hr1_coef_emis_10_average, s23_hr1_coef_emis_25_average,
                     s23_hr1_coef_emis_50_average, s23_hr1_coef_emis_100_average)
slope_y_s24 <- rbind(s24_hr1_coef_emis_10_average, s24_hr1_coef_emis_25_average,
                     s24_hr1_coef_emis_50_average, s24_hr1_coef_emis_100_average)
slope_y_s25 <- rbind(s25_hr1_coef_emis_10_average, s25_hr1_coef_emis_25_average,
                     s25_hr1_coef_emis_50_average, s25_hr1_coef_emis_100_average)
slope_y_s26 <- rbind(s26_hr1_coef_emis_10_average, s26_hr1_coef_emis_25_average,
                     s26_hr1_coef_emis_50_average, s26_hr1_coef_emis_100_average)
slope_y_s27 <- rbind(s27_hr1_coef_emis_10_average, s27_hr1_coef_emis_25_average,
                     s27_hr1_coef_emis_50_average, s27_hr1_coef_emis_100_average)
slope_y_s28 <- rbind(s28_hr1_coef_emis_10_average, s28_hr1_coef_emis_25_average,
                     s28_hr1_coef_emis_50_average, s28_hr1_coef_emis_100_average)
slope_y_s29 <- rbind(s29_hr1_coef_emis_10_average, s29_hr1_coef_emis_25_average,
                     s29_hr1_coef_emis_50_average, s29_hr1_coef_emis_100_average)
slope_y_s30 <- rbind(s30_hr1_coef_emis_10_average, s30_hr1_coef_emis_25_average,
                     s30_hr1_coef_emis_50_average, s30_hr1_coef_emis_100_average)


#y values for slope with buffer calculation
slope_y_allcontrols <- rbind (hr1_coef_emis_10_control_average, hr1_coef_emis_25_control_average,
                              hr1_coef_emis_50_control_average,hr1_coef_emis_100_control_average)

#slope calculation for with homogenate

s1_fit.lm <- lm(slope_y_s1 ~ slope_x)
s1_slope <- coef(s1_fit.lm)[[2]]


s2_fit.lm <- lm(slope_y_s2 ~ slope_x)
s2_slope <- coef(s2_fit.lm)[[2]]

s3_fit.lm <- lm(slope_y_s3 ~ slope_x)
s3_slope <- coef(s3_fit.lm)[[2]]

s4_fit.lm <- lm(slope_y_s4 ~ slope_x)
s4_slope <- coef(s4_fit.lm)[[2]]

s5_fit.lm <- lm(slope_y_s5 ~ slope_x)
s5_slope <- coef(s5_fit.lm)[[2]]

s6_fit.lm <- lm(slope_y_s6 ~ slope_x)
s6_slope <- coef(s6_fit.lm)[[2]]

s7_fit.lm <- lm(slope_y_s7 ~ slope_x)
s7_slope <- coef(s7_fit.lm)[[2]]

s8_fit.lm <- lm(slope_y_s8 ~ slope_x)
s8_slope <- coef(s8_fit.lm)[[2]]

s9_fit.lm <- lm(slope_y_s9 ~ slope_x)
s9_slope <- coef(s9_fit.lm)[[2]]

s10_fit.lm <- lm(slope_y_s10 ~ slope_x)
s10_slope <- coef(s10_fit.lm)[[2]]

s11_fit.lm <- lm(slope_y_s11 ~ slope_x)
s11_slope <- coef(s11_fit.lm)[[2]]

s12_fit.lm <- lm(slope_y_s12 ~ slope_x)
s12_slope <- coef(s12_fit.lm)[[2]]

s13_fit.lm <- lm(slope_y_s13 ~ slope_x)
s13_slope <- coef(s13_fit.lm)[[2]]

s14_fit.lm <- lm(slope_y_s14 ~ slope_x)
s14_slope <- coef(s14_fit.lm)[[2]]

s15_fit.lm <- lm(slope_y_s15 ~ slope_x)
s15_slope <- coef(s15_fit.lm)[[2]]

s16_fit.lm <- lm(slope_y_s16 ~ slope_x)
s16_slope <- coef(s16_fit.lm)[[2]]

s17_fit.lm <- lm(slope_y_s17 ~ slope_x)
s17_slope <- coef(s17_fit.lm)[[2]]

s18_fit.lm <- lm(slope_y_s18 ~ slope_x)
s18_slope <- coef(s18_fit.lm)[[2]]

s18_fit.lm <- lm(slope_y_s18 ~ slope_x)
s18_slope <- coef(s18_fit.lm)[[2]]

s19_fit.lm <- lm(slope_y_s19 ~ slope_x)
s19_slope <- coef(s19_fit.lm)[[2]]

s20_fit.lm <- lm(slope_y_s20 ~ slope_x)
s20_slope <- coef(s20_fit.lm)[[2]]

s21_fit.lm <- lm(slope_y_s21 ~ slope_x)
s21_slope <- coef(s21_fit.lm)[[2]]

s22_fit.lm <- lm(slope_y_s22 ~ slope_x)
s22_slope <- coef(s22_fit.lm)[[2]]

s23_fit.lm <- lm(slope_y_s23 ~ slope_x)
s23_slope <- coef(s23_fit.lm)[[2]]

s24_fit.lm <- lm(slope_y_s24 ~ slope_x)
s24_slope <- coef(s24_fit.lm)[[2]]

s25_fit.lm <- lm(slope_y_s25 ~ slope_x)
s25_slope <- coef(s25_fit.lm)[[2]]

s26_fit.lm <- lm(slope_y_s26 ~ slope_x)
s26_slope <- coef(s26_fit.lm)[[2]]

s27_fit.lm <- lm(slope_y_s27 ~ slope_x)
s27_slope <- coef(s27_fit.lm)[[2]]

s28_fit.lm <- lm(slope_y_s28 ~ slope_x)
s28_slope <- coef(s28_fit.lm)[[2]]

s29_fit.lm <- lm(slope_y_s29 ~ slope_x)
s29_slope <- coef(s29_fit.lm)[[2]]

s30_fit.lm <- lm(slope_y_s30 ~ slope_x)
s30_slope <- coef(s30_fit.lm)[[2]]

#Checking fit for calibration curve
s1_fit <- summary(s1_fit.lm)[[9]]
s2_fit <- summary(s2_fit.lm)[[9]]
s3_fit <- summary(s3_fit.lm)[[9]]
s4_fit <- summary(s4_fit.lm)[[9]]
s5_fit <- summary(s5_fit.lm)[[9]]
s6_fit <- summary(s6_fit.lm)[[9]]
s7_fit <- summary(s7_fit.lm)[[9]]
s8_fit <- summary(s8_fit.lm)[[9]]
s9_fit <- summary(s9_fit.lm)[[9]]
s10_fit <- summary(s10_fit.lm)[[9]]
s11_fit <- summary(s11_fit.lm)[[9]]
s12_fit <- summary(s12_fit.lm)[[9]]
s13_fit <- summary(s13_fit.lm)[[9]]
s14_fit <- summary(s14_fit.lm)[[9]]
s15_fit <- summary(s15_fit.lm)[[9]]
s16_fit <- summary(s16_fit.lm)[[9]]
s17_fit <- summary(s17_fit.lm)[[9]]
s18_fit <- summary(s18_fit.lm)[[9]]
s19_fit <- summary(s19_fit.lm)[[9]]
s20_fit <- summary(s20_fit.lm)[[9]]
s21_fit <- summary(s21_fit.lm)[[9]]
s22_fit <- summary(s22_fit.lm)[[9]]
s23_fit <- summary(s23_fit.lm)[[9]]
s24_fit <- summary(s24_fit.lm)[[9]]
s25_fit <- summary(s25_fit.lm)[[9]]
s26_fit <- summary(s26_fit.lm)[[9]]
s27_fit <- summary(s27_fit.lm)[[9]]
s28_fit <- summary(s28_fit.lm)[[9]]
s29_fit <- summary(s29_fit.lm)[[9]]
s30_fit <- summary(s30_fit.lm)[[9]]

#slope calculation for with buffer #control plate

slope_buffer_fit.lm <- lm (slope_y_allcontrols ~ slope_x)
buffer_slope <- coef(slope_buffer_fit.lm)[[2]]

#testing the fit for buffer
buffer_fit <- summary(slope_buffer_fit.lm)[[9]]

#Calulation of quench coefficient (qc)

s1_qc <- s1_slope/ buffer_slope
s2_qc <- s2_slope/ buffer_slope
s3_qc <- s3_slope/ buffer_slope
s4_qc <- s4_slope/ buffer_slope
s5_qc <- s5_slope/ buffer_slope
s6_qc <- s6_slope/ buffer_slope
s7_qc <- s7_slope/ buffer_slope
s8_qc <- s8_slope/ buffer_slope
s9_qc <- s9_slope/ buffer_slope
s10_qc <- s10_slope/ buffer_slope
s11_qc <- s11_slope/ buffer_slope
s12_qc <- s12_slope/ buffer_slope
s13_qc <- s13_slope/ buffer_slope
s14_qc <- s14_slope/ buffer_slope
s15_qc <- s15_slope/ buffer_slope
s16_qc <- s16_slope/ buffer_slope
s17_qc <- s17_slope/ buffer_slope
s18_qc <- s18_slope/ buffer_slope
s19_qc <- s19_slope/ buffer_slope
s20_qc <- s20_slope/ buffer_slope
s21_qc <- s21_slope/ buffer_slope
s22_qc <- s22_slope/ buffer_slope
s23_qc <- s23_slope/ buffer_slope
s24_qc <- s24_slope/ buffer_slope
s25_qc <- s25_slope/ buffer_slope
s26_qc <- s26_slope/ buffer_slope
s27_qc <- s27_slope/ buffer_slope
s28_qc <- s28_slope/ buffer_slope
s29_qc <- s29_slope/ buffer_slope
s30_qc <- s30_slope/ buffer_slope

#calculation for emission coefficient (ec)

s1_ec <-s1_slope/0.25
s2_ec <-s2_slope/0.25
s3_ec <-s3_slope/0.25
s4_ec <-s4_slope/0.25
s5_ec <-s5_slope/0.25
s6_ec <-s6_slope/0.25
s7_ec <-s7_slope/0.25
s8_ec <-s8_slope/0.25
s9_ec <-s9_slope/0.25
s10_ec <-s10_slope/0.25
s11_ec <-s11_slope/0.25
s12_ec <-s12_slope/0.25
s13_ec <-s13_slope/0.25
s14_ec <-s14_slope/0.25
s15_ec <-s15_slope/0.25
s16_ec <-s16_slope/0.25
s17_ec <-s17_slope/0.25
s18_ec <-s18_slope/0.25
s19_ec <-s19_slope/0.25
s20_ec <-s20_slope/0.25
s21_ec <-s21_slope/0.25
s22_ec <-s22_slope/0.25
s23_ec <-s23_slope/0.25
s24_ec <-s24_slope/0.25
s25_ec <-s25_slope/0.25
s26_ec <-s26_slope/0.25
s27_ec <-s27_slope/0.25
s28_ec <-s28_slope/0.25
s29_ec <-s29_slope/0.25
s30_ec <-s30_slope/0.25

#Net flourescence calculation

#Net flour =[((enzyme average value - homogenate blank)/quench coefficient)-(averaged controls for that enzyme 
#                                                                    - average controls for homogenate balnk)]

#Bgluc

s1_bgluc_flour <- ((s1_bgluc_average - s1_hr1_homogenate_blank_average)/ s1_qc) - 
               (bgluc_control_average - hr1_homogenate_blank_control_average)
s2_bgluc_flour <- ((s2_bgluc_average - s2_hr1_homogenate_blank_average)/ s2_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s3_bgluc_flour <- ((s3_bgluc_average - s3_hr1_homogenate_blank_average)/ s3_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s4_bgluc_flour <- ((s4_bgluc_average - s4_hr1_homogenate_blank_average)/ s4_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s5_bgluc_flour <- ((s5_bgluc_average - s5_hr1_homogenate_blank_average)/ s5_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s6_bgluc_flour <- ((s6_bgluc_average - s6_hr1_homogenate_blank_average)/ s6_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s7_bgluc_flour <- ((s7_bgluc_average - s7_hr1_homogenate_blank_average)/ s7_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s8_bgluc_flour <- ((s8_bgluc_average - s8_hr1_homogenate_blank_average)/ s8_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s9_bgluc_flour <- ((s9_bgluc_average - s9_hr1_homogenate_blank_average)/ s9_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s10_bgluc_flour <- ((s10_bgluc_average - s10_hr1_homogenate_blank_average)/ s10_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s11_bgluc_flour <- ((s11_bgluc_average - s11_hr1_homogenate_blank_average)/ s11_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s12_bgluc_flour <- ((s12_bgluc_average - s12_hr1_homogenate_blank_average)/ s12_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s13_bgluc_flour <- ((s13_bgluc_average - s13_hr1_homogenate_blank_average)/ s13_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s14_bgluc_flour <- ((s14_bgluc_average - s14_hr1_homogenate_blank_average)/ s14_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s15_bgluc_flour <- ((s15_bgluc_average - s15_hr1_homogenate_blank_average)/ s15_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s16_bgluc_flour <- ((s16_bgluc_average - s16_hr1_homogenate_blank_average)/ s16_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s17_bgluc_flour <- ((s17_bgluc_average - s17_hr1_homogenate_blank_average)/ s17_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s18_bgluc_flour <- ((s18_bgluc_average - s18_hr1_homogenate_blank_average)/ s18_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s19_bgluc_flour <- ((s19_bgluc_average - s19_hr1_homogenate_blank_average)/ s19_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s20_bgluc_flour <- ((s20_bgluc_average - s20_hr1_homogenate_blank_average)/ s20_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s21_bgluc_flour <- ((s21_bgluc_average - s21_hr1_homogenate_blank_average)/ s21_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s22_bgluc_flour <- ((s22_bgluc_average - s22_hr1_homogenate_blank_average)/ s22_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s23_bgluc_flour <- ((s23_bgluc_average - s23_hr1_homogenate_blank_average)/ s23_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s24_bgluc_flour <- ((s24_bgluc_average - s24_hr1_homogenate_blank_average)/ s24_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s25_bgluc_flour <- ((s25_bgluc_average - s25_hr1_homogenate_blank_average)/ s25_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s26_bgluc_flour <- ((s26_bgluc_average - s26_hr1_homogenate_blank_average)/ s26_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s27_bgluc_flour <- ((s27_bgluc_average - s27_hr1_homogenate_blank_average)/ s27_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s28_bgluc_flour <- ((s28_bgluc_average - s28_hr1_homogenate_blank_average)/ s28_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s29_bgluc_flour <- ((s29_bgluc_average - s29_hr1_homogenate_blank_average)/ s29_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)
s30_bgluc_flour <- ((s30_bgluc_average - s30_hr1_homogenate_blank_average)/ s30_qc) - 
  (bgluc_control_average - hr1_homogenate_blank_control_average)

#NAG
s1_nag_flour <- ((s1_nag_average - s1_hr1_homogenate_blank_average)/ s1_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s2_nag_flour <- ((s2_nag_average - s2_hr1_homogenate_blank_average)/ s2_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s3_nag_flour <- ((s3_nag_average - s3_hr1_homogenate_blank_average)/ s3_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s4_nag_flour <- ((s4_nag_average - s4_hr1_homogenate_blank_average)/ s4_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s5_nag_flour <- ((s5_nag_average - s5_hr1_homogenate_blank_average)/ s5_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s6_nag_flour <- ((s6_nag_average - s6_hr1_homogenate_blank_average)/ s6_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s7_nag_flour <- ((s7_nag_average - s7_hr1_homogenate_blank_average)/ s7_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s8_nag_flour <- ((s8_nag_average - s8_hr1_homogenate_blank_average)/ s8_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s9_nag_flour <- ((s9_nag_average - s9_hr1_homogenate_blank_average)/ s9_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s10_nag_flour <- ((s10_nag_average - s10_hr1_homogenate_blank_average)/ s10_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s11_nag_flour <- ((s11_nag_average - s11_hr1_homogenate_blank_average)/ s11_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s12_nag_flour <- ((s12_nag_average - s12_hr1_homogenate_blank_average)/ s12_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s13_nag_flour <- ((s13_nag_average - s13_hr1_homogenate_blank_average)/ s13_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s14_nag_flour <- ((s14_nag_average - s14_hr1_homogenate_blank_average)/ s14_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s15_nag_flour <- ((s15_nag_average - s15_hr1_homogenate_blank_average)/ s15_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s16_nag_flour <- ((s16_nag_average - s16_hr1_homogenate_blank_average)/ s16_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s17_nag_flour <- ((s17_nag_average - s17_hr1_homogenate_blank_average)/ s17_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s18_nag_flour <- ((s18_nag_average - s18_hr1_homogenate_blank_average)/ s18_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s19_nag_flour <- ((s19_nag_average - s19_hr1_homogenate_blank_average)/ s19_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s20_nag_flour <- ((s20_nag_average - s20_hr1_homogenate_blank_average)/ s20_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s21_nag_flour <- ((s21_nag_average - s21_hr1_homogenate_blank_average)/ s21_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s22_nag_flour <- ((s22_nag_average - s22_hr1_homogenate_blank_average)/ s22_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s23_nag_flour <- ((s23_nag_average - s23_hr1_homogenate_blank_average)/ s23_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s24_nag_flour <- ((s24_nag_average - s24_hr1_homogenate_blank_average)/ s24_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s25_nag_flour <- ((s25_nag_average - s25_hr1_homogenate_blank_average)/ s25_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s26_nag_flour <- ((s26_nag_average - s26_hr1_homogenate_blank_average)/ s26_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s27_nag_flour <- ((s27_nag_average - s27_hr1_homogenate_blank_average)/ s27_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s28_nag_flour <- ((s28_nag_average - s28_hr1_homogenate_blank_average)/ s28_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s29_nag_flour <- ((s29_nag_average - s29_hr1_homogenate_blank_average)/ s29_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)
s30_nag_flour <- ((s30_nag_average - s30_hr1_homogenate_blank_average)/ s30_qc) - 
  (nag_control_average - hr1_homogenate_blank_control_average)

#phos

s1_phos_flour <- ((s1_phos_average - s1_hr1_homogenate_blank_average)/ s1_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s2_phos_flour <- ((s2_phos_average - s2_hr1_homogenate_blank_average)/ s2_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s3_phos_flour <- ((s3_phos_average - s3_hr1_homogenate_blank_average)/ s3_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s4_phos_flour <- ((s4_phos_average - s4_hr1_homogenate_blank_average)/ s4_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s5_phos_flour <- ((s5_phos_average - s5_hr1_homogenate_blank_average)/ s5_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s6_phos_flour <- ((s6_phos_average - s6_hr1_homogenate_blank_average)/ s6_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s7_phos_flour <- ((s7_phos_average - s7_hr1_homogenate_blank_average)/ s7_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s8_phos_flour <- ((s8_phos_average - s8_hr1_homogenate_blank_average)/ s8_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s9_phos_flour <- ((s9_phos_average - s9_hr1_homogenate_blank_average)/ s9_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s10_phos_flour <- ((s10_phos_average - s10_hr1_homogenate_blank_average)/ s10_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s11_phos_flour <- ((s11_phos_average - s11_hr1_homogenate_blank_average)/ s11_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s12_phos_flour <- ((s12_phos_average - s12_hr1_homogenate_blank_average)/ s12_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s13_phos_flour <- ((s13_phos_average - s13_hr1_homogenate_blank_average)/ s13_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s14_phos_flour <- ((s14_phos_average - s14_hr1_homogenate_blank_average)/ s14_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s15_phos_flour <- ((s15_phos_average - s15_hr1_homogenate_blank_average)/ s15_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s16_phos_flour <- ((s16_phos_average - s16_hr1_homogenate_blank_average)/ s16_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s17_phos_flour <- ((s17_phos_average - s17_hr1_homogenate_blank_average)/ s17_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s18_phos_flour <- ((s18_phos_average - s18_hr1_homogenate_blank_average)/ s18_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s19_phos_flour <- ((s19_phos_average - s19_hr1_homogenate_blank_average)/ s19_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s20_phos_flour <- ((s20_phos_average - s20_hr1_homogenate_blank_average)/ s20_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s21_phos_flour <- ((s21_phos_average - s21_hr1_homogenate_blank_average)/ s21_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s22_phos_flour <- ((s22_phos_average - s22_hr1_homogenate_blank_average)/ s22_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s23_phos_flour <- ((s23_phos_average - s23_hr1_homogenate_blank_average)/ s23_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s24_phos_flour <- ((s24_phos_average - s24_hr1_homogenate_blank_average)/ s24_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s25_phos_flour <- ((s25_phos_average - s25_hr1_homogenate_blank_average)/ s25_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s26_phos_flour <- ((s26_phos_average - s26_hr1_homogenate_blank_average)/ s26_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s27_phos_flour <- ((s27_phos_average - s27_hr1_homogenate_blank_average)/ s27_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s28_phos_flour <- ((s28_phos_average - s28_hr1_homogenate_blank_average)/ s28_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s29_phos_flour <- ((s29_phos_average - s29_hr1_homogenate_blank_average)/ s29_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)
s30_phos_flour <- ((s30_phos_average - s30_hr1_homogenate_blank_average)/ s30_qc) - 
  (phos_control_average - hr1_homogenate_blank_control_average)



#final activity calculations
#Activity (µmolg-1hr-1) = [(Net Fluorescence x Buffer volume)/(Emission Coefficient x Homogenate volume x Time x Soil Mass)]

#bgluc
s1_bgluc_activity <- (100*s1_bgluc_flour) / (s1_ec*0.2*data[1,15]* data[1,16])
s2_bgluc_activity <- (100*s2_bgluc_flour) / (s2_ec*0.2*data[2,15]* data[2,16])
s3_bgluc_activity <- (100*s3_bgluc_flour) / (s3_ec*0.2*data[3,15]* data[3,16])
s4_bgluc_activity <- (100*s4_bgluc_flour) / (s4_ec*0.2*data[4,15]* data[4,16])
s5_bgluc_activity <- (100*s5_bgluc_flour) / (s5_ec*0.2*data[5,15]* data[5,16])
s6_bgluc_activity <- (100*s6_bgluc_flour) / (s6_ec*0.2*data[6,15]* data[6,16])
s7_bgluc_activity <- (100*s7_bgluc_flour) / (s7_ec*0.2*data[7,15]* data[7,16])
s8_bgluc_activity <- (100*s8_bgluc_flour) / (s8_ec*0.2*data[8,15]* data[8,16])
s9_bgluc_activity <- (100*s9_bgluc_flour) / (s9_ec*0.2*data[9,15]* data[9,16])
s10_bgluc_activity <- (100*s10_bgluc_flour) / (s10_ec*0.2*data[10,15]* data[10,16])
s11_bgluc_activity <- (100*s11_bgluc_flour) / (s11_ec*0.2*data[11,15]* data[11,16])
s12_bgluc_activity <- (100*s12_bgluc_flour) / (s12_ec*0.2*data[12,15]* data[12,16])
s13_bgluc_activity <- (100*s13_bgluc_flour) / (s13_ec*0.2*data[13,15]* data[13,16])
s14_bgluc_activity <- (100*s14_bgluc_flour) / (s14_ec*0.2*data[14,15]* data[14,16])
s15_bgluc_activity <- (100*s15_bgluc_flour) / (s15_ec*0.2*data[15,15]* data[15,16])
s16_bgluc_activity <- (100*s16_bgluc_flour) / (s16_ec*0.2*data[16,15]* data[16,16])
s17_bgluc_activity <- (100*s17_bgluc_flour) / (s17_ec*0.2*data[17,15]* data[17,16])
s18_bgluc_activity <- (100*s18_bgluc_flour) / (s18_ec*0.2*data[18,15]* data[18,16])
s19_bgluc_activity <- (100*s19_bgluc_flour) / (s19_ec*0.2*data[19,15]* data[19,16])
s20_bgluc_activity <- (100*s20_bgluc_flour) / (s20_ec*0.2*data[20,15]* data[20,16])
s21_bgluc_activity <- (100*s21_bgluc_flour) / (s21_ec*0.2*data[21,15]* data[21,16])
s22_bgluc_activity <- (100*s22_bgluc_flour) / (s22_ec*0.2*data[22,15]* data[22,16])
s23_bgluc_activity <- (100*s23_bgluc_flour) / (s23_ec*0.2*data[23,15]* data[23,16])
s24_bgluc_activity <- (100*s24_bgluc_flour) / (s24_ec*0.2*data[24,15]* data[24,16])
s25_bgluc_activity <- (100*s25_bgluc_flour) / (s25_ec*0.2*data[25,15]* data[25,16])
s26_bgluc_activity <- (100*s26_bgluc_flour) / (s26_ec*0.2*data[26,15]* data[26,16])
s27_bgluc_activity <- (100*s27_bgluc_flour) / (s27_ec*0.2*data[27,15]* data[27,16])
s28_bgluc_activity <- (100*s28_bgluc_flour) / (s28_ec*0.2*data[28,15]* data[28,16])
s29_bgluc_activity <- (100*s29_bgluc_flour) / (s29_ec*0.2*data[29,15]* data[29,16])
s30_bgluc_activity <- (100*s30_bgluc_flour) / (s30_ec*0.2*data[30,15]* data[30,16])

#NAG
s1_nag_activity <- (100*s1_nag_flour) / (s1_ec*0.2*data[1,15]* data[1,16])
s2_nag_activity <- (100*s2_nag_flour) / (s2_ec*0.2*data[2,15]* data[2,16])
s3_nag_activity <- (100*s3_nag_flour) / (s3_ec*0.2*data[3,15]* data[3,16])
s4_nag_activity <- (100*s4_nag_flour) / (s4_ec*0.2*data[4,15]* data[4,16])
s5_nag_activity <- (100*s5_nag_flour) / (s5_ec*0.2*data[5,15]* data[5,16])
s6_nag_activity <- (100*s6_nag_flour) / (s6_ec*0.2*data[6,15]* data[6,16])
s7_nag_activity <- (100*s7_nag_flour) / (s7_ec*0.2*data[7,15]* data[7,16])
s8_nag_activity <- (100*s8_nag_flour) / (s8_ec*0.2*data[8,15]* data[8,16])
s9_nag_activity <- (100*s9_nag_flour) / (s9_ec*0.2*data[9,15]* data[9,16])
s10_nag_activity <- (100*s10_nag_flour) / (s10_ec*0.2*data[10,15]* data[10,16])
s11_nag_activity <- (100*s11_nag_flour) / (s11_ec*0.2*data[11,15]* data[11,16])
s12_nag_activity <- (100*s12_nag_flour) / (s12_ec*0.2*data[12,15]* data[12,16])
s13_nag_activity <- (100*s13_nag_flour) / (s13_ec*0.2*data[13,15]* data[13,16])
s14_nag_activity <- (100*s14_nag_flour) / (s14_ec*0.2*data[14,15]* data[14,16])
s15_nag_activity <- (100*s15_nag_flour) / (s15_ec*0.2*data[15,15]* data[15,16])
s16_nag_activity <- (100*s16_nag_flour) / (s16_ec*0.2*data[16,15]* data[16,16])
s17_nag_activity <- (100*s17_nag_flour) / (s17_ec*0.2*data[17,15]* data[17,16])
s18_nag_activity <- (100*s18_nag_flour) / (s18_ec*0.2*data[18,15]* data[18,16])
s19_nag_activity <- (100*s19_nag_flour) / (s19_ec*0.2*data[19,15]* data[19,16])
s20_nag_activity <- (100*s20_nag_flour) / (s20_ec*0.2*data[20,15]* data[20,16])
s21_nag_activity <- (100*s21_nag_flour) / (s21_ec*0.2*data[21,15]* data[21,16])
s22_nag_activity <- (100*s22_nag_flour) / (s22_ec*0.2*data[22,15]* data[22,16])
s23_nag_activity <- (100*s23_nag_flour) / (s23_ec*0.2*data[23,15]* data[23,16])
s24_nag_activity <- (100*s24_nag_flour) / (s24_ec*0.2*data[24,15]* data[24,16])
s25_nag_activity <- (100*s25_nag_flour) / (s25_ec*0.2*data[25,15]* data[25,16])
s26_nag_activity <- (100*s26_nag_flour) / (s26_ec*0.2*data[26,15]* data[26,16])
s27_nag_activity <- (100*s27_nag_flour) / (s27_ec*0.2*data[27,15]* data[27,16])
s28_nag_activity <- (100*s28_nag_flour) / (s28_ec*0.2*data[28,15]* data[28,16])
s29_nag_activity <- (100*s29_nag_flour) / (s29_ec*0.2*data[29,15]* data[29,16])
s30_nag_activity <- (100*s30_nag_flour) / (s30_ec*0.2*data[30,15]* data[30,16])

#phos
s1_phos_activity <- (100*s1_phos_flour) / (s1_ec*0.2*data[1,15]* data[1,16])
s2_phos_activity <- (100*s2_phos_flour) / (s2_ec*0.2*data[2,15]* data[2,16])
s3_phos_activity <- (100*s3_phos_flour) / (s3_ec*0.2*data[3,15]* data[3,16])
s4_phos_activity <- (100*s4_phos_flour) / (s4_ec*0.2*data[4,15]* data[4,16])
s5_phos_activity <- (100*s5_phos_flour) / (s5_ec*0.2*data[5,15]* data[5,16])
s6_phos_activity <- (100*s6_phos_flour) / (s6_ec*0.2*data[6,15]* data[6,16])
s7_phos_activity <- (100*s7_phos_flour) / (s7_ec*0.2*data[7,15]* data[7,16])
s8_phos_activity <- (100*s8_phos_flour) / (s8_ec*0.2*data[8,15]* data[8,16])
s9_phos_activity <- (100*s9_phos_flour) / (s9_ec*0.2*data[9,15]* data[9,16])
s10_phos_activity <- (100*s10_phos_flour) / (s10_ec*0.2*data[10,15]* data[10,16])
s11_phos_activity <- (100*s11_phos_flour) / (s11_ec*0.2*data[11,15]* data[11,16])
s12_phos_activity <- (100*s12_phos_flour) / (s12_ec*0.2*data[12,15]* data[12,16])
s13_phos_activity <- (100*s13_phos_flour) / (s13_ec*0.2*data[13,15]* data[13,16])
s14_phos_activity <- (100*s14_phos_flour) / (s14_ec*0.2*data[14,15]* data[14,16])
s15_phos_activity <- (100*s15_phos_flour) / (s15_ec*0.2*data[15,15]* data[15,16])
s16_phos_activity <- (100*s16_phos_flour) / (s16_ec*0.2*data[16,15]* data[16,16])
s17_phos_activity <- (100*s17_phos_flour) / (s17_ec*0.2*data[17,15]* data[17,16])
s18_phos_activity <- (100*s18_phos_flour) / (s18_ec*0.2*data[18,15]* data[18,16])
s19_phos_activity <- (100*s19_phos_flour) / (s19_ec*0.2*data[19,15]* data[19,16])
s20_phos_activity <- (100*s20_phos_flour) / (s20_ec*0.2*data[20,15]* data[20,16])
s21_phos_activity <- (100*s21_phos_flour) / (s21_ec*0.2*data[21,15]* data[21,16])
s22_phos_activity <- (100*s22_phos_flour) / (s22_ec*0.2*data[22,15]* data[22,16])
s23_phos_activity <- (100*s23_phos_flour) / (s23_ec*0.2*data[23,15]* data[23,16])
s24_phos_activity <- (100*s24_phos_flour) / (s24_ec*0.2*data[24,15]* data[24,16])
s25_phos_activity <- (100*s25_phos_flour) / (s25_ec*0.2*data[25,15]* data[25,16])
s26_phos_activity <- (100*s26_phos_flour) / (s26_ec*0.2*data[26,15]* data[26,16])
s27_phos_activity <- (100*s27_phos_flour) / (s27_ec*0.2*data[27,15]* data[27,16])
s28_phos_activity <- (100*s28_phos_flour) / (s28_ec*0.2*data[28,15]* data[28,16])
s29_phos_activity <- (100*s29_phos_flour) / (s29_ec*0.2*data[29,15]* data[29,16])
s30_phos_activity <- (100*s30_phos_flour) / (s30_ec*0.2*data[30,15]* data[30,16])

bgluc_result_final <- rbind (s1_bgluc_activity,
                s2_bgluc_activity,
                s3_bgluc_activity,
                s4_bgluc_activity,
                s5_bgluc_activity,
                s6_bgluc_activity,
                s7_bgluc_activity,
                s8_bgluc_activity,
                s9_bgluc_activity,
                s10_bgluc_activity,
                s11_bgluc_activity,
                s12_bgluc_activity,
                s13_bgluc_activity,
                s14_bgluc_activity,
                s15_bgluc_activity,
                s16_bgluc_activity,
                s17_bgluc_activity,
                s18_bgluc_activity,
                s19_bgluc_activity,
                s20_bgluc_activity,
                s21_bgluc_activity,
                s22_bgluc_activity,
                s23_bgluc_activity,
                s24_bgluc_activity,
                s25_bgluc_activity,
                s26_bgluc_activity,
                s27_bgluc_activity,
                s28_bgluc_activity,
                s29_bgluc_activity,
                s30_bgluc_activity)

bgluc_result_final <- data.frame(bgluc_result_final)

phos_result_final <- rbind (s1_phos_activity,
                             s2_phos_activity,
                             s3_phos_activity,
                             s4_phos_activity,
                             s5_phos_activity,
                             s6_phos_activity,
                             s7_phos_activity,
                             s8_phos_activity,
                             s9_phos_activity,
                             s10_phos_activity,
                             s11_phos_activity,
                             s12_phos_activity,
                             s13_phos_activity,
                             s14_phos_activity,
                             s15_phos_activity,
                             s16_phos_activity,
                             s17_phos_activity,
                             s18_phos_activity,
                             s19_phos_activity,
                             s20_phos_activity,
                             s21_phos_activity,
                             s22_phos_activity,
                             s23_phos_activity,
                             s24_phos_activity,
                             s25_phos_activity,
                             s26_phos_activity,
                             s27_phos_activity,
                             s28_phos_activity,
                             s29_phos_activity,
                             s30_phos_activity)

phos_result_final <- data.frame(phos_result_final)

nag_result_final <- rbind (s1_nag_activity,
                             s2_nag_activity,
                             s3_nag_activity,
                             s4_nag_activity,
                             s5_nag_activity,
                             s6_nag_activity,
                             s7_nag_activity,
                             s8_nag_activity,
                             s9_nag_activity,
                             s10_nag_activity,
                             s11_nag_activity,
                             s12_nag_activity,
                             s13_nag_activity,
                             s14_nag_activity,
                             s15_nag_activity,
                             s16_nag_activity,
                             s17_nag_activity,
                             s18_nag_activity,
                             s19_nag_activity,
                             s20_nag_activity,
                             s21_nag_activity,
                             s22_nag_activity,
                             s23_nag_activity,
                             s24_nag_activity,
                             s25_nag_activity,
                             s26_nag_activity,
                             s27_nag_activity,
                             s28_nag_activity,
                             s29_nag_activity,
                             s30_nag_activity)

nag_result_final <- data.frame(nag_result_final)

sample_no <- data$sample.no.[1:30]


final_results <- data.frame(sample_no, bgluc_result_final$bgluc_result_final,nag_result_final$nag_result_final,phos_result_final$phos_result_final)

colnames (final_results) <- c("sample no.", "bgluc activity", "nag activity", "phos activity")

setwd("C:/Users/ayush/Dropbox/Ayush_TAMU/enzyme study/jacob/R/result/")

diagnostic <- data.frame(
            qc  =    c(s1_qc, s2_qc, s3_qc, s4_qc, s5_qc, s6_qc, s7_qc, s8_qc, s9_qc, s10_qc,
                     s11_qc, s12_qc, s13_qc, s14_qc, s15_qc, s16_qc, s17_qc, s18_qc, s19_qc, s20_qc,
                     s21_qc, s22_qc, s23_qc, s24_qc, s25_qc, s26_qc, s27_qc, s28_qc, s29_qc, s30_qc),
            ec =     c(s1_ec, s2_ec, s3_ec, s4_ec, s5_ec, s6_ec, s7_ec, s8_ec, s9_ec, s10_ec,
                     s11_ec, s12_ec, s13_ec, s14_ec, s15_ec, s16_ec, s17_ec, s18_ec, s19_ec, s20_ec,
                     s21_ec, s22_ec, s23_ec, s24_ec, s25_ec, s26_ec, s27_ec, s28_ec, s29_ec, s30_ec),
homegenate_fit =     c(s1_fit, s2_fit, s3_fit, s4_fit, s5_fit, s6_fit, s7_fit, s8_fit, s9_fit, s10_fit,
                       s11_fit, s12_fit, s13_fit, s14_fit, s15_fit, s16_fit, s17_fit, s18_fit, s19_fit, s20_fit,
                       s21_fit, s22_fit, s23_fit, s24_fit, s25_fit, s26_fit, s27_fit, s28_fit, s29_fit, s30_fit),
buffer_fit    =      c(buffer_fit)
)



write.csv(final_results, file = "results_JPR1_10-25-19.1.csv")
write.csv (diagnostic, file = "diagnostic_JPR1_10-25-19.1.csv")
