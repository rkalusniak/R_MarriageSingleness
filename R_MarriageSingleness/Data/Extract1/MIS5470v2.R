new_data <- read.table('Data/Extract1/MIS5470v2.dat', sep=' ')
names(new_data) <- c('B0000200',
'B0002500',
'B0002600',
'B0002700',
'B0002800',
'B0002900',
'B0003000',
'B0003100',
'B0003200',
'B0003300',
'B0003400',
'B0003500',
'B0003600',
'B0003700',
'B0003800',
'B0003900',
'B0004000',
'B0004100',
'B0004200',
'B0004300',
'B0004400',
'B0004500',
'B0004600',
'B0004700',
'B0004800',
'B0004900',
'B0005000',
'B0005100',
'B0005200',
'B0020100',
'B0020200',
'B0020300',
'B0020400',
'B0020500',
'B0020600',
'B0020700',
'B0020800',
'E7062000',
'E7072000',
'R0000100',
'R0320600',
'R0322500',
'R0322600',
'R0322700',
'R0359300',
'R0359400',
'R0536300',
'R0536401',
'R0536402',
'R0681200',
'R1204500',
'R1204600',
'R1205000',
'R1235800',
'R1482600',
'R2164000',
'R2164100',
'R2164200',
'R2164300',
'R2191900',
'R2192000',
'R2563300',
'R2563700',
'R3481900',
'R3482000',
'R3482100',
'R3482200',
'R3511400',
'R3511500',
'R3884900',
'R4880100',
'R4880200',
'R4880300',
'R4880400',
'R4909500',
'R4909600',
'R5464100',
'R6497500',
'R6497600',
'R6497700',
'R6497800',
'R6536700',
'R6536800',
'R7227800',
'R9792900',
'R9829600',
'R9859600',
'R9871900',
'R9872500',
'S0905500',
'S0905600',
'S0905700',
'S0924300',
'S0924400',
'S1225000',
'S1541700',
'S2011500',
'S2978200',
'S2978300',
'S2978400',
'S2990600',
'S2990700',
'S3302500',
'S3812400',
'S4677000',
'S4677100',
'S4677200',
'S4685800',
'S4685900',
'S4919500',
'S5412800',
'S6309200',
'S6309300',
'S6309400',
'S6321300',
'S6321400',
'S6661100',
'S7513700',
'S8330100',
'S8330200',
'S8330300',
'S8334900',
'S8335000',
'S8644200',
'T0014100',
'T0737900',
'T0738000',
'T0738100',
'T0741700',
'T0741800',
'T1049500',
'T2016200',
'T2780200',
'T2780300',
'T2780400',
'T2785200',
'T2785300',
'T3144600',
'T3606500',
'T4494600',
'T4494700',
'T4494800',
'T4496900',
'T4497000',
'T4562200',
'T5206900',
'T6141700',
'T6141800',
'T6141900',
'T6145800',
'T6145900',
'T6206400',
'T6656700',
'T7635600',
'T7635700',
'T7635800',
'T7640300',
'T7640400',
'T7703800',
'T8129100',
'T9039300',
'T9093100',
'U0008900',
'U1028700',
'U1096500',
'U1845500',
'U2962600',
'U2962700',
'U3444000',
'U3451400',
'U3451500',
'U4368000',
'U4368100',
'Z9032200',
'Z9032300',
'Z9033700',
'Z9033900',
'Z9034100',
'Z9050501',
'Z9050601',
'Z9050701',
'Z9065201',
'Z9065301',
'Z9065401',
'Z9073100',
'Z9073300',
'Z9083800',
'Z9083900',
'Z9084000',
'Z9084100',
'Z9084200',
'Z9084300',
'Z9084400',
'Z9084500',
'Z9084600',
'Z9084700',
'Z9084800',
'Z9084900',
'Z9085000')


# Handle missing values

new_data[new_data == -1] = NA  # Refused
new_data[new_data == -2] = NA  # Dont know
new_data[new_data == -3] = NA  # Invalid missing
new_data[new_data == -4] = NA  # Valid missing
new_data[new_data == -5] = NA  # Non-interview


# If there are values not categorized they will be represented as NA

vallabels = function(data) {
  data$B0002500 <- factor(data$B0002500,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002600 <- factor(data$B0002600,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002700 <- factor(data$B0002700,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002800 <- factor(data$B0002800,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0002900 <- factor(data$B0002900,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0003000 <- factor(data$B0003000,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0003100 <- factor(data$B0003100,
levels=c(1.0,2.0),
labels=c("Yes",
"No"))
  data$B0003200 <- factor(data$B0003200,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0003300 <- factor(data$B0003300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0003400 <- factor(data$B0003400,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0003500 <- factor(data$B0003500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0003600 <- factor(data$B0003600,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0003700 <- factor(data$B0003700,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0003800 <- factor(data$B0003800,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("One degree",
"Two degrees",
"Three degrees",
"Four degrees",
"Five degrees"))
  data$B0020100 <- factor(data$B0020100,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020200 <- factor(data$B0020200,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020300 <- factor(data$B0020300,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020400 <- factor(data$B0020400,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020500 <- factor(data$B0020500,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020600 <- factor(data$B0020600,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020700 <- factor(data$B0020700,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$B0020800 <- factor(data$B0020800,
levels=c(1.0,2.0,3.0),
labels=c("4-year",
"2-year",
"Less than 2-year"))
  data$E7062000 <- factor(data$E7062000,
levels=c(1.0),
labels=c("Imputed start date"))
  data$E7072000 <- factor(data$E7072000,
levels=c(1.0),
labels=c("Imputed start date"))
  data$R0320600 <- factor(data$R0320600,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$R0322500 <- factor(data$R0322500,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9"))
  data$R0322600 <- factor(data$R0322600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$R0359300 <- factor(data$R0359300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$R0359400 <- factor(data$R0359400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$R0536300 <- factor(data$R0536300,
levels=c(0.0,1.0,2.0),
labels=c("No Information",
"Male",
"Female"))
  data$R0536401 <- factor(data$R0536401,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("1: January",
"2: February",
"3: March",
"4: April",
"5: May",
"6: June",
"7: July",
"8: August",
"9: September",
"10: October",
"11: November",
"12: December"))
  data$R0681200 <- factor(data$R0681200,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$R1204600 <- factor(data$R1204600,
levels=c(1.0,2.0),
labels=c("Parent",
"Youth"))
  data$R1205000 <- factor(data$R1205000,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Both biological parents",
"Biological mother, other parent present",
"Biological father, other parent present",
"Biological mother, marital status unknown",
"Biological dad, marital status unknown",
"Adoptive parent(s)",
"Foster parent(s)",
"Other adults, biologial parent status unknown, not group quarters",
"Group quarters",
"Anything else"))
  data$R1235800 <- factor(data$R1235800,
levels=c(0.0,1.0),
labels=c("Oversample",
"Cross-sectional"))
  data$R1482600 <- factor(data$R1482600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("Black",
"Hispanic",
"Mixed Race (Non-Hispanic)",
"Non-Black / Non-Hispanic"))
  data$R2164000 <- factor(data$R2164000,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$R2191900 <- factor(data$R2191900,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$R2192000 <- factor(data$R2192000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$R3481900 <- factor(data$R3481900,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$R3511400 <- factor(data$R3511400,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$R3511500 <- factor(data$R3511500,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$R4880100 <- factor(data$R4880100,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$R4909500 <- factor(data$R4909500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$R4909600 <- factor(data$R4909600,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$R6497500 <- factor(data$R6497500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$R6536700 <- factor(data$R6536700,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$R6536800 <- factor(data$R6536800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$R9859600 <- factor(data$R9859600,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0),
labels=c("Wave 1 complete",
"Wave 2 complete",
"Transcript requested: District refusal",
"Transcript requested: School refusal",
"Transcript requested: Student record not found",
"Transcript requested: Student record unavailable",
"Transcript not requested: No high school identified",
"Transcript not requested: Student permission not requested",
"Transcript not requested: Student permission requested once, not secured",
"Transcript not requested: Student permission requested more than once, not secured",
"Transcript not requested: Case blocked from data collection"))
  data$R9872500 <- factor(data$R9872500,
levels=c(0.0,1.0),
labels=c("No",
"Yes"))
  data$S0905500 <- factor(data$S0905500,
levels=c(3.0,4.0,5.0,6.0,7.0),
labels=c("3",
"4",
"5",
"6",
"7"))
  data$S0905600 <- factor(data$S0905600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11"))
  data$S0924300 <- factor(data$S0924300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$S0924400 <- factor(data$S0924400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$S1225000 <- factor(data$S1225000,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$S2978200 <- factor(data$S2978200,
levels=c(3.0,4.0,5.0,6.0,7.0),
labels=c("3",
"4",
"5",
"6",
"7"))
  data$S2978300 <- factor(data$S2978300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11"))
  data$S2990600 <- factor(data$S2990600,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$S2990700 <- factor(data$S2990700,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$S3302500 <- factor(data$S3302500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$S4677000 <- factor(data$S4677000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$S4677100 <- factor(data$S4677100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$S4685800 <- factor(data$S4685800,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$S4685900 <- factor(data$S4685900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$S4919500 <- factor(data$S4919500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$S6309200 <- factor(data$S6309200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$S6309300 <- factor(data$S6309300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$S6321300 <- factor(data$S6321300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$S6321400 <- factor(data$S6321400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$S6661100 <- factor(data$S6661100,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$S8330100 <- factor(data$S8330100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$S8330200 <- factor(data$S8330200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$S8334900 <- factor(data$S8334900,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$S8335000 <- factor(data$S8335000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$S8644200 <- factor(data$S8644200,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$T0737900 <- factor(data$T0737900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$T0738000 <- factor(data$T0738000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$T0741700 <- factor(data$T0741700,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$T0741800 <- factor(data$T0741800,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$T1049500 <- factor(data$T1049500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$T2780200 <- factor(data$T2780200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$T2780300 <- factor(data$T2780300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$T2785200 <- factor(data$T2785200,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$T2785300 <- factor(data$T2785300,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$T3144600 <- factor(data$T3144600,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$T4494600 <- factor(data$T4494600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$T4494700 <- factor(data$T4494700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$T4496900 <- factor(data$T4496900,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$T4497000 <- factor(data$T4497000,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$T4562200 <- factor(data$T4562200,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$T6141700 <- factor(data$T6141700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$T6141800 <- factor(data$T6141800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$T6145800 <- factor(data$T6145800,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$T6145900 <- factor(data$T6145900,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$T6206400 <- factor(data$T6206400,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$T7635600 <- factor(data$T7635600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7"))
  data$T7635700 <- factor(data$T7635700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12"))
  data$T7640300 <- factor(data$T7640300,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("VERY UNDERWEIGHT",
"SLIGHTLY UNDERWEIGHT",
"ABOUT THE RIGHT WEIGHT",
"SLIGHTLY OVERWEIGHT",
"VERY OVERWEIGHT"))
  data$T7640400 <- factor(data$T7640400,
levels=c(1.0,2.0,3.0,4.0),
labels=c("LOSE WEIGHT",
"GAIN WEIGHT",
"STAY THE SAME WEIGHT",
"NOT TRYING TO DO ANYTHING ABOUT MY WEIGHT"))
  data$T7703800 <- factor(data$T7703800,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$T9093100 <- factor(data$T9093100,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$U1096500 <- factor(data$U1096500,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$U2962600 <- factor(data$U2962600,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$U3451400 <- factor(data$U3451400,
levels=c(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("Never married, cohabiting",
"Never married, not cohabiting",
"Married, spouse present",
"Married, spouse absent",
"Separated, cohabiting",
"Separated, not cohabiting",
"Divorced, cohabiting",
"Divorced, not cohabiting",
"Widowed, cohabiting",
"Widowed, not cohabiting"))
  data$U3451500 <- factor(data$U3451500,
levels=c(0.0,1.0,2.0,3.0,4.0),
labels=c("Never-married",
"Married",
"Separated",
"Divorced",
"Widowed"))
  data$U4368000 <- factor(data$U4368000,
levels=c(1.0,2.0,3.0,4.0,5.0),
labels=c("Excellent",
"Very good",
"Good",
"Fair",
"Poor"))
  data$Z9033700 <- factor(data$Z9033700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Have not yet received the scores",
"200 - 300",
"301 - 400",
"401 - 500",
"501 - 600",
"601 - 700",
"701 - 800"))
  data$Z9033900 <- factor(data$Z9033900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Have not yet received the scores",
"200 - 300",
"301 - 400",
"401 - 500",
"501 - 600",
"601 - 700",
"701 - 800"))
  data$Z9034100 <- factor(data$Z9034100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0),
labels=c("Have not yet received the scores",
"0 - 6",
"7 - 12",
"13 - 18",
"19 - 24",
"25 - 30",
"31 - 36"))
  data$Z9083800 <- factor(data$Z9083800,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0,95.0),
labels=c("None",
"1st grade",
"2nd grade",
"3rd grade",
"4th grade",
"5th grade",
"6th grade",
"7th grade",
"8th grade",
"9th grade",
"10th grade",
"11th grade",
"12th grade",
"1st year college",
"2nd year college",
"3rd year college",
"4th year college",
"5th year college",
"6th year college",
"7th year college",
"8th year college or more",
"Ungraded"))
  data$Z9083900 <- factor(data$Z9083900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0),
labels=c("None",
"GED",
"High school diploma (Regular 12 year program)",
"Associate/Junior college (AA)",
"Bachelor's degree (BA, BS)",
"Master's degree (MA, MS)",
"PhD",
"Professional degree (DDS, JD, MD)"))
  data$Z9084900 <- factor(data$Z9084900,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0),
labels=c("None",
"1st grade",
"2nd grade",
"3rd grade",
"4th grade",
"5th grade",
"6th grade",
"7th grade",
"8th grade",
"9th grade",
"10th grade",
"11th grade",
"12th grade",
"Ungraded"))
  data$Z9085000 <- factor(data$Z9085000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,95.0),
labels=c("None",
"1st grade",
"2nd grade",
"3rd grade",
"4th grade",
"5th grade",
"6th grade",
"7th grade",
"8th grade",
"9th grade",
"10th grade",
"11th grade",
"12th grade",
"Ungraded"))
return(data)
}


# If there are values not categorized they will be represented as NA

vallabels_continuous = function(data) {
data$B0000200[30000.0 <= data$B0000200 & data$B0000200 <= 59999.0] <- 30000.0
data$B0000200[60000.0 <= data$B0000200 & data$B0000200 <= 99999.0] <- 60000.0
data$B0000200[100000.0 <= data$B0000200 & data$B0000200 <= 149999.0] <- 100000.0
data$B0000200[150000.0 <= data$B0000200 & data$B0000200 <= 199999.0] <- 150000.0
data$B0000200[200000.0 <= data$B0000200 & data$B0000200 <= 249999.0] <- 200000.0
data$B0000200[250000.0 <= data$B0000200 & data$B0000200 <= 299999.0] <- 250000.0
data$B0000200[300000.0 <= data$B0000200 & data$B0000200 <= 349999.0] <- 300000.0
data$B0000200[350000.0 <= data$B0000200 & data$B0000200 <= 399999.0] <- 350000.0
data$B0000200[400000.0 <= data$B0000200 & data$B0000200 <= 449999.0] <- 400000.0
data$B0000200[450000.0 <= data$B0000200 & data$B0000200 <= 499999.0] <- 450000.0
data$B0000200[500000.0 <= data$B0000200 & data$B0000200 <= 549999.0] <- 500000.0
data$B0000200[550000.0 <= data$B0000200 & data$B0000200 <= 599999.0] <- 550000.0
data$B0000200[600000.0 <= data$B0000200 & data$B0000200 <= 649999.0] <- 600000.0
data$B0000200[650000.0 <= data$B0000200 & data$B0000200 <= 699999.0] <- 650000.0
data$B0000200[700000.0 <= data$B0000200 & data$B0000200 <= 749999.0] <- 700000.0
data$B0000200[750000.0 <= data$B0000200 & data$B0000200 <= 799999.0] <- 750000.0
data$B0000200[800000.0 <= data$B0000200 & data$B0000200 <= 849999.0] <- 800000.0
data$B0000200[850000.0 <= data$B0000200 & data$B0000200 <= 9999999.0] <- 850000.0
data$B0000200 <- factor(data$B0000200,
levels=c(0.0,30000.0,60000.0,100000.0,150000.0,200000.0,250000.0,300000.0,350000.0,400000.0,450000.0,500000.0,550000.0,600000.0,650000.0,700000.0,750000.0,800000.0,850000.0),
labels=c("0",
"30000 TO 59999: 300.00-599.99",
"60000 TO 99999: 600.00-999.99",
"100000 TO 149999: 1000.00-1499.99",
"150000 TO 199999: 1500.00-1999.99",
"200000 TO 249999: 2000.00-2499.99",
"250000 TO 299999: 2500.00-2999.99",
"300000 TO 349999: 3000.00-3499.99",
"350000 TO 399999: 3500.00-3999.99",
"400000 TO 449999: 4000.00-4499.99",
"450000 TO 499999: 4500.00-4999.99",
"500000 TO 549999: 5000.00-5499.99",
"550000 TO 599999: 5500.00-5999.99",
"600000 TO 649999: 6000.00-6499.99",
"650000 TO 699999: 6500.00-6999.99",
"700000 TO 749999: 7000.00-7499.99",
"750000 TO 799999: 7500.00-7999.99",
"800000 TO 849999: 8000.00-8499.99",
"850000 TO 9999999: 8500.00+"))
data$B0003900[0.0 <= data$B0003900 & data$B0003900 <= 199.0] <- 0.0
data$B0003900[200.0 <= data$B0003900 & data$B0003900 <= 499.0] <- 200.0
data$B0003900[500.0 <= data$B0003900 & data$B0003900 <= 999.0] <- 500.0
data$B0003900[1000.0 <= data$B0003900 & data$B0003900 <= 1999.0] <- 1000.0
data$B0003900[2000.0 <= data$B0003900 & data$B0003900 <= 4999.0] <- 2000.0
data$B0003900[5000.0 <= data$B0003900 & data$B0003900 <= 50000.0] <- 5000.0
data$B0003900 <- factor(data$B0003900,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004000[0.0 <= data$B0004000 & data$B0004000 <= 199.0] <- 0.0
data$B0004000[200.0 <= data$B0004000 & data$B0004000 <= 499.0] <- 200.0
data$B0004000[500.0 <= data$B0004000 & data$B0004000 <= 999.0] <- 500.0
data$B0004000[1000.0 <= data$B0004000 & data$B0004000 <= 1999.0] <- 1000.0
data$B0004000[2000.0 <= data$B0004000 & data$B0004000 <= 4999.0] <- 2000.0
data$B0004000[5000.0 <= data$B0004000 & data$B0004000 <= 50000.0] <- 5000.0
data$B0004000 <- factor(data$B0004000,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004100[0.0 <= data$B0004100 & data$B0004100 <= 199.0] <- 0.0
data$B0004100[200.0 <= data$B0004100 & data$B0004100 <= 499.0] <- 200.0
data$B0004100[500.0 <= data$B0004100 & data$B0004100 <= 999.0] <- 500.0
data$B0004100[1000.0 <= data$B0004100 & data$B0004100 <= 1999.0] <- 1000.0
data$B0004100[2000.0 <= data$B0004100 & data$B0004100 <= 4999.0] <- 2000.0
data$B0004100[5000.0 <= data$B0004100 & data$B0004100 <= 50000.0] <- 5000.0
data$B0004100 <- factor(data$B0004100,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004200[0.0 <= data$B0004200 & data$B0004200 <= 199.0] <- 0.0
data$B0004200[200.0 <= data$B0004200 & data$B0004200 <= 499.0] <- 200.0
data$B0004200[500.0 <= data$B0004200 & data$B0004200 <= 999.0] <- 500.0
data$B0004200[1000.0 <= data$B0004200 & data$B0004200 <= 1999.0] <- 1000.0
data$B0004200[2000.0 <= data$B0004200 & data$B0004200 <= 4999.0] <- 2000.0
data$B0004200[5000.0 <= data$B0004200 & data$B0004200 <= 50000.0] <- 5000.0
data$B0004200 <- factor(data$B0004200,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004300[0.0 <= data$B0004300 & data$B0004300 <= 199.0] <- 0.0
data$B0004300[200.0 <= data$B0004300 & data$B0004300 <= 499.0] <- 200.0
data$B0004300[500.0 <= data$B0004300 & data$B0004300 <= 999.0] <- 500.0
data$B0004300[1000.0 <= data$B0004300 & data$B0004300 <= 1999.0] <- 1000.0
data$B0004300[2000.0 <= data$B0004300 & data$B0004300 <= 4999.0] <- 2000.0
data$B0004300[5000.0 <= data$B0004300 & data$B0004300 <= 50000.0] <- 5000.0
data$B0004300 <- factor(data$B0004300,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004400[0.0 <= data$B0004400 & data$B0004400 <= 199.0] <- 0.0
data$B0004400[200.0 <= data$B0004400 & data$B0004400 <= 499.0] <- 200.0
data$B0004400[500.0 <= data$B0004400 & data$B0004400 <= 999.0] <- 500.0
data$B0004400[1000.0 <= data$B0004400 & data$B0004400 <= 1999.0] <- 1000.0
data$B0004400[2000.0 <= data$B0004400 & data$B0004400 <= 4999.0] <- 2000.0
data$B0004400[5000.0 <= data$B0004400 & data$B0004400 <= 50000.0] <- 5000.0
data$B0004400 <- factor(data$B0004400,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004500[0.0 <= data$B0004500 & data$B0004500 <= 199.0] <- 0.0
data$B0004500[200.0 <= data$B0004500 & data$B0004500 <= 499.0] <- 200.0
data$B0004500[500.0 <= data$B0004500 & data$B0004500 <= 999.0] <- 500.0
data$B0004500[1000.0 <= data$B0004500 & data$B0004500 <= 1999.0] <- 1000.0
data$B0004500[2000.0 <= data$B0004500 & data$B0004500 <= 4999.0] <- 2000.0
data$B0004500[5000.0 <= data$B0004500 & data$B0004500 <= 50000.0] <- 5000.0
data$B0004500 <- factor(data$B0004500,
levels=c(0.0,200.0,500.0,1000.0,2000.0,5000.0),
labels=c("0 TO 199:",
"200 TO 499:",
"500 TO 999:",
"1000 TO 1999:",
"2000 TO 4999:",
"5000 TO 50000:"))
data$B0004600[0.0 <= data$B0004600 & data$B0004600 <= 100.0] <- 0.0
data$B0004600[101.0 <= data$B0004600 & data$B0004600 <= 200.0] <- 101.0
data$B0004600[201.0 <= data$B0004600 & data$B0004600 <= 300.0] <- 201.0
data$B0004600[301.0 <= data$B0004600 & data$B0004600 <= 400.0] <- 301.0
data$B0004600 <- factor(data$B0004600,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0004700[0.0 <= data$B0004700 & data$B0004700 <= 100.0] <- 0.0
data$B0004700[101.0 <= data$B0004700 & data$B0004700 <= 200.0] <- 101.0
data$B0004700[201.0 <= data$B0004700 & data$B0004700 <= 300.0] <- 201.0
data$B0004700[301.0 <= data$B0004700 & data$B0004700 <= 400.0] <- 301.0
data$B0004700 <- factor(data$B0004700,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0004800[0.0 <= data$B0004800 & data$B0004800 <= 100.0] <- 0.0
data$B0004800[101.0 <= data$B0004800 & data$B0004800 <= 200.0] <- 101.0
data$B0004800[201.0 <= data$B0004800 & data$B0004800 <= 300.0] <- 201.0
data$B0004800[301.0 <= data$B0004800 & data$B0004800 <= 400.0] <- 301.0
data$B0004800 <- factor(data$B0004800,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0004900[0.0 <= data$B0004900 & data$B0004900 <= 100.0] <- 0.0
data$B0004900[101.0 <= data$B0004900 & data$B0004900 <= 200.0] <- 101.0
data$B0004900[201.0 <= data$B0004900 & data$B0004900 <= 300.0] <- 201.0
data$B0004900[301.0 <= data$B0004900 & data$B0004900 <= 400.0] <- 301.0
data$B0004900 <- factor(data$B0004900,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0005000[0.0 <= data$B0005000 & data$B0005000 <= 100.0] <- 0.0
data$B0005000[101.0 <= data$B0005000 & data$B0005000 <= 200.0] <- 101.0
data$B0005000[201.0 <= data$B0005000 & data$B0005000 <= 300.0] <- 201.0
data$B0005000[301.0 <= data$B0005000 & data$B0005000 <= 400.0] <- 301.0
data$B0005000 <- factor(data$B0005000,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0005100[0.0 <= data$B0005100 & data$B0005100 <= 100.0] <- 0.0
data$B0005100[101.0 <= data$B0005100 & data$B0005100 <= 200.0] <- 101.0
data$B0005100[201.0 <= data$B0005100 & data$B0005100 <= 300.0] <- 201.0
data$B0005100[301.0 <= data$B0005100 & data$B0005100 <= 400.0] <- 301.0
data$B0005100 <- factor(data$B0005100,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$B0005200[0.0 <= data$B0005200 & data$B0005200 <= 100.0] <- 0.0
data$B0005200[101.0 <= data$B0005200 & data$B0005200 <= 200.0] <- 101.0
data$B0005200[201.0 <= data$B0005200 & data$B0005200 <= 300.0] <- 201.0
data$B0005200[301.0 <= data$B0005200 & data$B0005200 <= 400.0] <- 301.0
data$B0005200 <- factor(data$B0005200,
levels=c(0.0,101.0,201.0,301.0),
labels=c("0 TO 100:",
"101 TO 200:",
"201 TO 300:",
"301 TO 400:"))
data$R0000100[1.0 <= data$R0000100 & data$R0000100 <= 999.0] <- 1.0
data$R0000100[1000.0 <= data$R0000100 & data$R0000100 <= 1999.0] <- 1000.0
data$R0000100[2000.0 <= data$R0000100 & data$R0000100 <= 2999.0] <- 2000.0
data$R0000100[3000.0 <= data$R0000100 & data$R0000100 <= 3999.0] <- 3000.0
data$R0000100[4000.0 <= data$R0000100 & data$R0000100 <= 4999.0] <- 4000.0
data$R0000100[5000.0 <= data$R0000100 & data$R0000100 <= 5999.0] <- 5000.0
data$R0000100[6000.0 <= data$R0000100 & data$R0000100 <= 6999.0] <- 6000.0
data$R0000100[7000.0 <= data$R0000100 & data$R0000100 <= 7999.0] <- 7000.0
data$R0000100[8000.0 <= data$R0000100 & data$R0000100 <= 8999.0] <- 8000.0
data$R0000100[9000.0 <= data$R0000100 & data$R0000100 <= 9999.0] <- 9000.0
data$R0000100 <- factor(data$R0000100,
levels=c(0.0,1.0,1000.0,2000.0,3000.0,4000.0,5000.0,6000.0,7000.0,8000.0,9000.0),
labels=c("0",
"1 TO 999",
"1000 TO 1999",
"2000 TO 2999",
"3000 TO 3999",
"4000 TO 4999",
"5000 TO 5999",
"6000 TO 6999",
"7000 TO 7999",
"8000 TO 8999",
"9000 TO 9999"))
data$R0322700[1.0 <= data$R0322700 & data$R0322700 <= 49.0] <- 1.0
data$R0322700[50.0 <= data$R0322700 & data$R0322700 <= 99.0] <- 50.0
data$R0322700[100.0 <= data$R0322700 & data$R0322700 <= 149.0] <- 100.0
data$R0322700[150.0 <= data$R0322700 & data$R0322700 <= 199.0] <- 150.0
data$R0322700[200.0 <= data$R0322700 & data$R0322700 <= 249.0] <- 200.0
data$R0322700[250.0 <= data$R0322700 & data$R0322700 <= 299.0] <- 250.0
data$R0322700[300.0 <= data$R0322700 & data$R0322700 <= 349.0] <- 300.0
data$R0322700[350.0 <= data$R0322700 & data$R0322700 <= 399.0] <- 350.0
data$R0322700[400.0 <= data$R0322700 & data$R0322700 <= 449.0] <- 400.0
data$R0322700[450.0 <= data$R0322700 & data$R0322700 <= 499.0] <- 450.0
data$R0322700[500.0 <= data$R0322700 & data$R0322700 <= 999999.0] <- 500.0
data$R0322700 <- factor(data$R0322700,
levels=c(0.0,1.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0),
labels=c("0",
"1 TO 49",
"50 TO 99",
"100 TO 149",
"150 TO 199",
"200 TO 249",
"250 TO 299",
"300 TO 349",
"350 TO 399",
"400 TO 449",
"450 TO 499",
"500 TO 999999: 500+"))
data$R1204500[-999999.0 <= data$R1204500 & data$R1204500 <= -3000.0] <- -999999.0
data$R1204500[-2999.0 <= data$R1204500 & data$R1204500 <= -2000.0] <- -2999.0
data$R1204500[-1999.0 <= data$R1204500 & data$R1204500 <= -1000.0] <- -1999.0
data$R1204500[-999.0 <= data$R1204500 & data$R1204500 <= -1.0] <- -999.0
data$R1204500[1.0 <= data$R1204500 & data$R1204500 <= 1000.0] <- 1.0
data$R1204500[1001.0 <= data$R1204500 & data$R1204500 <= 2000.0] <- 1001.0
data$R1204500[2001.0 <= data$R1204500 & data$R1204500 <= 3000.0] <- 2001.0
data$R1204500[3001.0 <= data$R1204500 & data$R1204500 <= 5000.0] <- 3001.0
data$R1204500[5001.0 <= data$R1204500 & data$R1204500 <= 10000.0] <- 5001.0
data$R1204500[10001.0 <= data$R1204500 & data$R1204500 <= 20000.0] <- 10001.0
data$R1204500[20001.0 <= data$R1204500 & data$R1204500 <= 30000.0] <- 20001.0
data$R1204500[30001.0 <= data$R1204500 & data$R1204500 <= 40000.0] <- 30001.0
data$R1204500[40001.0 <= data$R1204500 & data$R1204500 <= 50000.0] <- 40001.0
data$R1204500[50001.0 <= data$R1204500 & data$R1204500 <= 65000.0] <- 50001.0
data$R1204500[65001.0 <= data$R1204500 & data$R1204500 <= 80000.0] <- 65001.0
data$R1204500[80001.0 <= data$R1204500 & data$R1204500 <= 100000.0] <- 80001.0
data$R1204500[100001.0 <= data$R1204500 & data$R1204500 <= 150000.0] <- 100001.0
data$R1204500[150001.0 <= data$R1204500 & data$R1204500 <= 200000.0] <- 150001.0
data$R1204500[200001.0 <= data$R1204500 & data$R1204500 <= 999999.0] <- 200001.0
data$R1204500 <- factor(data$R1204500,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$R2164100[10.0 <= data$R2164100 & data$R2164100 <= 999.0] <- 10.0
data$R2164100 <- factor(data$R2164100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R2164200[10.0 <= data$R2164200 & data$R2164200 <= 999.0] <- 10.0
data$R2164200 <- factor(data$R2164200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R2164300[1.0 <= data$R2164300 & data$R2164300 <= 24.0] <- 1.0
data$R2164300[25.0 <= data$R2164300 & data$R2164300 <= 49.0] <- 25.0
data$R2164300[50.0 <= data$R2164300 & data$R2164300 <= 74.0] <- 50.0
data$R2164300[75.0 <= data$R2164300 & data$R2164300 <= 99.0] <- 75.0
data$R2164300[100.0 <= data$R2164300 & data$R2164300 <= 124.0] <- 100.0
data$R2164300[125.0 <= data$R2164300 & data$R2164300 <= 149.0] <- 125.0
data$R2164300[150.0 <= data$R2164300 & data$R2164300 <= 174.0] <- 150.0
data$R2164300[175.0 <= data$R2164300 & data$R2164300 <= 199.0] <- 175.0
data$R2164300[200.0 <= data$R2164300 & data$R2164300 <= 224.0] <- 200.0
data$R2164300[225.0 <= data$R2164300 & data$R2164300 <= 249.0] <- 225.0
data$R2164300[250.0 <= data$R2164300 & data$R2164300 <= 9.9999999E7] <- 250.0
data$R2164300 <- factor(data$R2164300,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$R2563300[-999999.0 <= data$R2563300 & data$R2563300 <= -3000.0] <- -999999.0
data$R2563300[-2999.0 <= data$R2563300 & data$R2563300 <= -2000.0] <- -2999.0
data$R2563300[-1999.0 <= data$R2563300 & data$R2563300 <= -1000.0] <- -1999.0
data$R2563300[-999.0 <= data$R2563300 & data$R2563300 <= -1.0] <- -999.0
data$R2563300[1.0 <= data$R2563300 & data$R2563300 <= 1000.0] <- 1.0
data$R2563300[1001.0 <= data$R2563300 & data$R2563300 <= 2000.0] <- 1001.0
data$R2563300[2001.0 <= data$R2563300 & data$R2563300 <= 3000.0] <- 2001.0
data$R2563300[3001.0 <= data$R2563300 & data$R2563300 <= 5000.0] <- 3001.0
data$R2563300[5001.0 <= data$R2563300 & data$R2563300 <= 10000.0] <- 5001.0
data$R2563300[10001.0 <= data$R2563300 & data$R2563300 <= 20000.0] <- 10001.0
data$R2563300[20001.0 <= data$R2563300 & data$R2563300 <= 30000.0] <- 20001.0
data$R2563300[30001.0 <= data$R2563300 & data$R2563300 <= 40000.0] <- 30001.0
data$R2563300[40001.0 <= data$R2563300 & data$R2563300 <= 50000.0] <- 40001.0
data$R2563300[50001.0 <= data$R2563300 & data$R2563300 <= 65000.0] <- 50001.0
data$R2563300[65001.0 <= data$R2563300 & data$R2563300 <= 80000.0] <- 65001.0
data$R2563300[80001.0 <= data$R2563300 & data$R2563300 <= 100000.0] <- 80001.0
data$R2563300[100001.0 <= data$R2563300 & data$R2563300 <= 150000.0] <- 100001.0
data$R2563300[150001.0 <= data$R2563300 & data$R2563300 <= 200000.0] <- 150001.0
data$R2563300[200001.0 <= data$R2563300 & data$R2563300 <= 999999.0] <- 200001.0
data$R2563300 <- factor(data$R2563300,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$R2563700[20.0 <= data$R2563700 & data$R2563700 <= 99.0] <- 20.0
data$R2563700 <- factor(data$R2563700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20 TO 99: 20+"))
data$R3482000[10.0 <= data$R3482000 & data$R3482000 <= 999.0] <- 10.0
data$R3482000 <- factor(data$R3482000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R3482100[10.0 <= data$R3482100 & data$R3482100 <= 999.0] <- 10.0
data$R3482100 <- factor(data$R3482100,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R3482200[1.0 <= data$R3482200 & data$R3482200 <= 24.0] <- 1.0
data$R3482200[25.0 <= data$R3482200 & data$R3482200 <= 49.0] <- 25.0
data$R3482200[50.0 <= data$R3482200 & data$R3482200 <= 74.0] <- 50.0
data$R3482200[75.0 <= data$R3482200 & data$R3482200 <= 99.0] <- 75.0
data$R3482200[100.0 <= data$R3482200 & data$R3482200 <= 124.0] <- 100.0
data$R3482200[125.0 <= data$R3482200 & data$R3482200 <= 149.0] <- 125.0
data$R3482200[150.0 <= data$R3482200 & data$R3482200 <= 174.0] <- 150.0
data$R3482200[175.0 <= data$R3482200 & data$R3482200 <= 199.0] <- 175.0
data$R3482200[200.0 <= data$R3482200 & data$R3482200 <= 224.0] <- 200.0
data$R3482200[225.0 <= data$R3482200 & data$R3482200 <= 249.0] <- 225.0
data$R3482200[250.0 <= data$R3482200 & data$R3482200 <= 9.9999999E7] <- 250.0
data$R3482200 <- factor(data$R3482200,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$R3884900[-999999.0 <= data$R3884900 & data$R3884900 <= -3000.0] <- -999999.0
data$R3884900[-2999.0 <= data$R3884900 & data$R3884900 <= -2000.0] <- -2999.0
data$R3884900[-1999.0 <= data$R3884900 & data$R3884900 <= -1000.0] <- -1999.0
data$R3884900[-999.0 <= data$R3884900 & data$R3884900 <= -1.0] <- -999.0
data$R3884900[1.0 <= data$R3884900 & data$R3884900 <= 1000.0] <- 1.0
data$R3884900[1001.0 <= data$R3884900 & data$R3884900 <= 2000.0] <- 1001.0
data$R3884900[2001.0 <= data$R3884900 & data$R3884900 <= 3000.0] <- 2001.0
data$R3884900[3001.0 <= data$R3884900 & data$R3884900 <= 5000.0] <- 3001.0
data$R3884900[5001.0 <= data$R3884900 & data$R3884900 <= 10000.0] <- 5001.0
data$R3884900[10001.0 <= data$R3884900 & data$R3884900 <= 20000.0] <- 10001.0
data$R3884900[20001.0 <= data$R3884900 & data$R3884900 <= 30000.0] <- 20001.0
data$R3884900[30001.0 <= data$R3884900 & data$R3884900 <= 40000.0] <- 30001.0
data$R3884900[40001.0 <= data$R3884900 & data$R3884900 <= 50000.0] <- 40001.0
data$R3884900[50001.0 <= data$R3884900 & data$R3884900 <= 65000.0] <- 50001.0
data$R3884900[65001.0 <= data$R3884900 & data$R3884900 <= 80000.0] <- 65001.0
data$R3884900[80001.0 <= data$R3884900 & data$R3884900 <= 100000.0] <- 80001.0
data$R3884900[100001.0 <= data$R3884900 & data$R3884900 <= 150000.0] <- 100001.0
data$R3884900[150001.0 <= data$R3884900 & data$R3884900 <= 200000.0] <- 150001.0
data$R3884900[200001.0 <= data$R3884900 & data$R3884900 <= 999999.0] <- 200001.0
data$R3884900 <- factor(data$R3884900,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$R4880200[10.0 <= data$R4880200 & data$R4880200 <= 999.0] <- 10.0
data$R4880200 <- factor(data$R4880200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R4880300[10.0 <= data$R4880300 & data$R4880300 <= 999.0] <- 10.0
data$R4880300 <- factor(data$R4880300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R4880400[1.0 <= data$R4880400 & data$R4880400 <= 24.0] <- 1.0
data$R4880400[25.0 <= data$R4880400 & data$R4880400 <= 49.0] <- 25.0
data$R4880400[50.0 <= data$R4880400 & data$R4880400 <= 74.0] <- 50.0
data$R4880400[75.0 <= data$R4880400 & data$R4880400 <= 99.0] <- 75.0
data$R4880400[100.0 <= data$R4880400 & data$R4880400 <= 124.0] <- 100.0
data$R4880400[125.0 <= data$R4880400 & data$R4880400 <= 149.0] <- 125.0
data$R4880400[150.0 <= data$R4880400 & data$R4880400 <= 174.0] <- 150.0
data$R4880400[175.0 <= data$R4880400 & data$R4880400 <= 199.0] <- 175.0
data$R4880400[200.0 <= data$R4880400 & data$R4880400 <= 224.0] <- 200.0
data$R4880400[225.0 <= data$R4880400 & data$R4880400 <= 249.0] <- 225.0
data$R4880400[250.0 <= data$R4880400 & data$R4880400 <= 9.9999999E7] <- 250.0
data$R4880400 <- factor(data$R4880400,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$R5464100[-999999.0 <= data$R5464100 & data$R5464100 <= -3000.0] <- -999999.0
data$R5464100[-2999.0 <= data$R5464100 & data$R5464100 <= -2000.0] <- -2999.0
data$R5464100[-1999.0 <= data$R5464100 & data$R5464100 <= -1000.0] <- -1999.0
data$R5464100[-999.0 <= data$R5464100 & data$R5464100 <= -1.0] <- -999.0
data$R5464100[1.0 <= data$R5464100 & data$R5464100 <= 1000.0] <- 1.0
data$R5464100[1001.0 <= data$R5464100 & data$R5464100 <= 2000.0] <- 1001.0
data$R5464100[2001.0 <= data$R5464100 & data$R5464100 <= 3000.0] <- 2001.0
data$R5464100[3001.0 <= data$R5464100 & data$R5464100 <= 5000.0] <- 3001.0
data$R5464100[5001.0 <= data$R5464100 & data$R5464100 <= 10000.0] <- 5001.0
data$R5464100[10001.0 <= data$R5464100 & data$R5464100 <= 20000.0] <- 10001.0
data$R5464100[20001.0 <= data$R5464100 & data$R5464100 <= 30000.0] <- 20001.0
data$R5464100[30001.0 <= data$R5464100 & data$R5464100 <= 40000.0] <- 30001.0
data$R5464100[40001.0 <= data$R5464100 & data$R5464100 <= 50000.0] <- 40001.0
data$R5464100[50001.0 <= data$R5464100 & data$R5464100 <= 65000.0] <- 50001.0
data$R5464100[65001.0 <= data$R5464100 & data$R5464100 <= 80000.0] <- 65001.0
data$R5464100[80001.0 <= data$R5464100 & data$R5464100 <= 100000.0] <- 80001.0
data$R5464100[100001.0 <= data$R5464100 & data$R5464100 <= 150000.0] <- 100001.0
data$R5464100[150001.0 <= data$R5464100 & data$R5464100 <= 200000.0] <- 150001.0
data$R5464100[200001.0 <= data$R5464100 & data$R5464100 <= 999999.0] <- 200001.0
data$R5464100 <- factor(data$R5464100,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$R6497600[10.0 <= data$R6497600 & data$R6497600 <= 999.0] <- 10.0
data$R6497600 <- factor(data$R6497600,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R6497700[10.0 <= data$R6497700 & data$R6497700 <= 999.0] <- 10.0
data$R6497700 <- factor(data$R6497700,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$R6497800[1.0 <= data$R6497800 & data$R6497800 <= 24.0] <- 1.0
data$R6497800[25.0 <= data$R6497800 & data$R6497800 <= 49.0] <- 25.0
data$R6497800[50.0 <= data$R6497800 & data$R6497800 <= 74.0] <- 50.0
data$R6497800[75.0 <= data$R6497800 & data$R6497800 <= 99.0] <- 75.0
data$R6497800[100.0 <= data$R6497800 & data$R6497800 <= 124.0] <- 100.0
data$R6497800[125.0 <= data$R6497800 & data$R6497800 <= 149.0] <- 125.0
data$R6497800[150.0 <= data$R6497800 & data$R6497800 <= 174.0] <- 150.0
data$R6497800[175.0 <= data$R6497800 & data$R6497800 <= 199.0] <- 175.0
data$R6497800[200.0 <= data$R6497800 & data$R6497800 <= 224.0] <- 200.0
data$R6497800[225.0 <= data$R6497800 & data$R6497800 <= 249.0] <- 225.0
data$R6497800[250.0 <= data$R6497800 & data$R6497800 <= 9.9999999E7] <- 250.0
data$R6497800 <- factor(data$R6497800,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$R7227800[-999999.0 <= data$R7227800 & data$R7227800 <= -3000.0] <- -999999.0
data$R7227800[-2999.0 <= data$R7227800 & data$R7227800 <= -2000.0] <- -2999.0
data$R7227800[-1999.0 <= data$R7227800 & data$R7227800 <= -1000.0] <- -1999.0
data$R7227800[-999.0 <= data$R7227800 & data$R7227800 <= -1.0] <- -999.0
data$R7227800[1.0 <= data$R7227800 & data$R7227800 <= 1000.0] <- 1.0
data$R7227800[1001.0 <= data$R7227800 & data$R7227800 <= 2000.0] <- 1001.0
data$R7227800[2001.0 <= data$R7227800 & data$R7227800 <= 3000.0] <- 2001.0
data$R7227800[3001.0 <= data$R7227800 & data$R7227800 <= 5000.0] <- 3001.0
data$R7227800[5001.0 <= data$R7227800 & data$R7227800 <= 10000.0] <- 5001.0
data$R7227800[10001.0 <= data$R7227800 & data$R7227800 <= 20000.0] <- 10001.0
data$R7227800[20001.0 <= data$R7227800 & data$R7227800 <= 30000.0] <- 20001.0
data$R7227800[30001.0 <= data$R7227800 & data$R7227800 <= 40000.0] <- 30001.0
data$R7227800[40001.0 <= data$R7227800 & data$R7227800 <= 50000.0] <- 40001.0
data$R7227800[50001.0 <= data$R7227800 & data$R7227800 <= 65000.0] <- 50001.0
data$R7227800[65001.0 <= data$R7227800 & data$R7227800 <= 80000.0] <- 65001.0
data$R7227800[80001.0 <= data$R7227800 & data$R7227800 <= 100000.0] <- 80001.0
data$R7227800[100001.0 <= data$R7227800 & data$R7227800 <= 150000.0] <- 100001.0
data$R7227800[150001.0 <= data$R7227800 & data$R7227800 <= 200000.0] <- 150001.0
data$R7227800[200001.0 <= data$R7227800 & data$R7227800 <= 999999.0] <- 200001.0
data$R7227800 <- factor(data$R7227800,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$R9792900[1.0 <= data$R9792900 & data$R9792900 <= 9.0] <- 1.0
data$R9792900[10.0 <= data$R9792900 & data$R9792900 <= 19.0] <- 10.0
data$R9792900[20.0 <= data$R9792900 & data$R9792900 <= 29.0] <- 20.0
data$R9792900[30.0 <= data$R9792900 & data$R9792900 <= 39.0] <- 30.0
data$R9792900[40.0 <= data$R9792900 & data$R9792900 <= 49.0] <- 40.0
data$R9792900[50.0 <= data$R9792900 & data$R9792900 <= 59.0] <- 50.0
data$R9792900[60.0 <= data$R9792900 & data$R9792900 <= 69.0] <- 60.0
data$R9792900[70.0 <= data$R9792900 & data$R9792900 <= 79.0] <- 70.0
data$R9792900[80.0 <= data$R9792900 & data$R9792900 <= 89.0] <- 80.0
data$R9792900[90.0 <= data$R9792900 & data$R9792900 <= 100.0] <- 90.0
data$R9792900 <- factor(data$R9792900,
levels=c(0.0,1.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0),
labels=c("0",
"1 TO 9",
"10 TO 19",
"20 TO 29",
"30 TO 39",
"40 TO 49",
"50 TO 59",
"60 TO 69",
"70 TO 79",
"80 TO 89",
"90 TO 100"))
data$R9829600[1.0 <= data$R9829600 & data$R9829600 <= 999.0] <- 1.0
data$R9829600[1000.0 <= data$R9829600 & data$R9829600 <= 19999.0] <- 1000.0
data$R9829600[20000.0 <= data$R9829600 & data$R9829600 <= 39999.0] <- 20000.0
data$R9829600[40000.0 <= data$R9829600 & data$R9829600 <= 59999.0] <- 40000.0
data$R9829600[60000.0 <= data$R9829600 & data$R9829600 <= 79999.0] <- 60000.0
data$R9829600[80000.0 <= data$R9829600 & data$R9829600 <= 100000.0] <- 80000.0
data$R9829600 <- factor(data$R9829600,
levels=c(0.0,1.0,1000.0,20000.0,40000.0,60000.0,80000.0),
labels=c("0",
"1 TO 999: .001-.999",
"1000 TO 19999: 1.000-19.999",
"20000 TO 39999: 20.000-39.999",
"40000 TO 59999: 40.000-59.999",
"60000 TO 79999: 60.000-79.999",
"80000 TO 100000: 80.000-100.000"))
data$R9871900[0.0 <= data$R9871900 & data$R9871900 <= 99.0] <- 0.0
data$R9871900[100.0 <= data$R9871900 & data$R9871900 <= 199.0] <- 100.0
data$R9871900[200.0 <= data$R9871900 & data$R9871900 <= 299.0] <- 200.0
data$R9871900[300.0 <= data$R9871900 & data$R9871900 <= 399.0] <- 300.0
data$R9871900[400.0 <= data$R9871900 & data$R9871900 <= 500.0] <- 400.0
data$R9871900 <- factor(data$R9871900,
levels=c(-9.0,-8.0,-7.0,-6.0,0.0,100.0,200.0,300.0,400.0),
labels=c("-9: No courses with valid credits and grades",
"-8: Pre-High school only",
"-7: No credits earned",
"-6: No courses taken",
"0 TO 99: 0 to .99",
"100 TO 199: 1.00 to 1.99",
"200 TO 299: 2.00 to 2.99",
"300 TO 399: 3.00 to 3.99",
"400 TO 500: 4.00 to 5.00"))
data$S0905700[1.0 <= data$S0905700 & data$S0905700 <= 24.0] <- 1.0
data$S0905700[25.0 <= data$S0905700 & data$S0905700 <= 49.0] <- 25.0
data$S0905700[50.0 <= data$S0905700 & data$S0905700 <= 74.0] <- 50.0
data$S0905700[75.0 <= data$S0905700 & data$S0905700 <= 99.0] <- 75.0
data$S0905700[100.0 <= data$S0905700 & data$S0905700 <= 124.0] <- 100.0
data$S0905700[125.0 <= data$S0905700 & data$S0905700 <= 149.0] <- 125.0
data$S0905700[150.0 <= data$S0905700 & data$S0905700 <= 174.0] <- 150.0
data$S0905700[175.0 <= data$S0905700 & data$S0905700 <= 199.0] <- 175.0
data$S0905700[200.0 <= data$S0905700 & data$S0905700 <= 224.0] <- 200.0
data$S0905700[225.0 <= data$S0905700 & data$S0905700 <= 249.0] <- 225.0
data$S0905700[250.0 <= data$S0905700 & data$S0905700 <= 9.9999999E7] <- 250.0
data$S0905700 <- factor(data$S0905700,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$S1541700[-999999.0 <= data$S1541700 & data$S1541700 <= -3000.0] <- -999999.0
data$S1541700[-2999.0 <= data$S1541700 & data$S1541700 <= -2000.0] <- -2999.0
data$S1541700[-1999.0 <= data$S1541700 & data$S1541700 <= -1000.0] <- -1999.0
data$S1541700[-999.0 <= data$S1541700 & data$S1541700 <= -1.0] <- -999.0
data$S1541700[1.0 <= data$S1541700 & data$S1541700 <= 1000.0] <- 1.0
data$S1541700[1001.0 <= data$S1541700 & data$S1541700 <= 2000.0] <- 1001.0
data$S1541700[2001.0 <= data$S1541700 & data$S1541700 <= 3000.0] <- 2001.0
data$S1541700[3001.0 <= data$S1541700 & data$S1541700 <= 5000.0] <- 3001.0
data$S1541700[5001.0 <= data$S1541700 & data$S1541700 <= 10000.0] <- 5001.0
data$S1541700[10001.0 <= data$S1541700 & data$S1541700 <= 20000.0] <- 10001.0
data$S1541700[20001.0 <= data$S1541700 & data$S1541700 <= 30000.0] <- 20001.0
data$S1541700[30001.0 <= data$S1541700 & data$S1541700 <= 40000.0] <- 30001.0
data$S1541700[40001.0 <= data$S1541700 & data$S1541700 <= 50000.0] <- 40001.0
data$S1541700[50001.0 <= data$S1541700 & data$S1541700 <= 65000.0] <- 50001.0
data$S1541700[65001.0 <= data$S1541700 & data$S1541700 <= 80000.0] <- 65001.0
data$S1541700[80001.0 <= data$S1541700 & data$S1541700 <= 100000.0] <- 80001.0
data$S1541700[100001.0 <= data$S1541700 & data$S1541700 <= 150000.0] <- 100001.0
data$S1541700[150001.0 <= data$S1541700 & data$S1541700 <= 200000.0] <- 150001.0
data$S1541700[200001.0 <= data$S1541700 & data$S1541700 <= 999999.0] <- 200001.0
data$S1541700 <- factor(data$S1541700,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$S2011500[-999999.0 <= data$S2011500 & data$S2011500 <= -3000.0] <- -999999.0
data$S2011500[-2999.0 <= data$S2011500 & data$S2011500 <= -2000.0] <- -2999.0
data$S2011500[-1999.0 <= data$S2011500 & data$S2011500 <= -1000.0] <- -1999.0
data$S2011500[-999.0 <= data$S2011500 & data$S2011500 <= -1.0] <- -999.0
data$S2011500[1.0 <= data$S2011500 & data$S2011500 <= 1000.0] <- 1.0
data$S2011500[1001.0 <= data$S2011500 & data$S2011500 <= 2000.0] <- 1001.0
data$S2011500[2001.0 <= data$S2011500 & data$S2011500 <= 3000.0] <- 2001.0
data$S2011500[3001.0 <= data$S2011500 & data$S2011500 <= 5000.0] <- 3001.0
data$S2011500[5001.0 <= data$S2011500 & data$S2011500 <= 10000.0] <- 5001.0
data$S2011500[10001.0 <= data$S2011500 & data$S2011500 <= 20000.0] <- 10001.0
data$S2011500[20001.0 <= data$S2011500 & data$S2011500 <= 30000.0] <- 20001.0
data$S2011500[30001.0 <= data$S2011500 & data$S2011500 <= 40000.0] <- 30001.0
data$S2011500[40001.0 <= data$S2011500 & data$S2011500 <= 50000.0] <- 40001.0
data$S2011500[50001.0 <= data$S2011500 & data$S2011500 <= 65000.0] <- 50001.0
data$S2011500[65001.0 <= data$S2011500 & data$S2011500 <= 80000.0] <- 65001.0
data$S2011500[80001.0 <= data$S2011500 & data$S2011500 <= 100000.0] <- 80001.0
data$S2011500[100001.0 <= data$S2011500 & data$S2011500 <= 150000.0] <- 100001.0
data$S2011500[150001.0 <= data$S2011500 & data$S2011500 <= 200000.0] <- 150001.0
data$S2011500[200001.0 <= data$S2011500 & data$S2011500 <= 999999.0] <- 200001.0
data$S2011500 <- factor(data$S2011500,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$S2978400[1.0 <= data$S2978400 & data$S2978400 <= 24.0] <- 1.0
data$S2978400[25.0 <= data$S2978400 & data$S2978400 <= 49.0] <- 25.0
data$S2978400[50.0 <= data$S2978400 & data$S2978400 <= 74.0] <- 50.0
data$S2978400[75.0 <= data$S2978400 & data$S2978400 <= 99.0] <- 75.0
data$S2978400[100.0 <= data$S2978400 & data$S2978400 <= 124.0] <- 100.0
data$S2978400[125.0 <= data$S2978400 & data$S2978400 <= 149.0] <- 125.0
data$S2978400[150.0 <= data$S2978400 & data$S2978400 <= 174.0] <- 150.0
data$S2978400[175.0 <= data$S2978400 & data$S2978400 <= 199.0] <- 175.0
data$S2978400[200.0 <= data$S2978400 & data$S2978400 <= 224.0] <- 200.0
data$S2978400[225.0 <= data$S2978400 & data$S2978400 <= 249.0] <- 225.0
data$S2978400[250.0 <= data$S2978400 & data$S2978400 <= 9.9999999E7] <- 250.0
data$S2978400 <- factor(data$S2978400,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$S3812400[-999999.0 <= data$S3812400 & data$S3812400 <= -3000.0] <- -999999.0
data$S3812400[-2999.0 <= data$S3812400 & data$S3812400 <= -2000.0] <- -2999.0
data$S3812400[-1999.0 <= data$S3812400 & data$S3812400 <= -1000.0] <- -1999.0
data$S3812400[-999.0 <= data$S3812400 & data$S3812400 <= -1.0] <- -999.0
data$S3812400[1.0 <= data$S3812400 & data$S3812400 <= 1000.0] <- 1.0
data$S3812400[1001.0 <= data$S3812400 & data$S3812400 <= 2000.0] <- 1001.0
data$S3812400[2001.0 <= data$S3812400 & data$S3812400 <= 3000.0] <- 2001.0
data$S3812400[3001.0 <= data$S3812400 & data$S3812400 <= 5000.0] <- 3001.0
data$S3812400[5001.0 <= data$S3812400 & data$S3812400 <= 10000.0] <- 5001.0
data$S3812400[10001.0 <= data$S3812400 & data$S3812400 <= 20000.0] <- 10001.0
data$S3812400[20001.0 <= data$S3812400 & data$S3812400 <= 30000.0] <- 20001.0
data$S3812400[30001.0 <= data$S3812400 & data$S3812400 <= 40000.0] <- 30001.0
data$S3812400[40001.0 <= data$S3812400 & data$S3812400 <= 50000.0] <- 40001.0
data$S3812400[50001.0 <= data$S3812400 & data$S3812400 <= 65000.0] <- 50001.0
data$S3812400[65001.0 <= data$S3812400 & data$S3812400 <= 80000.0] <- 65001.0
data$S3812400[80001.0 <= data$S3812400 & data$S3812400 <= 100000.0] <- 80001.0
data$S3812400[100001.0 <= data$S3812400 & data$S3812400 <= 150000.0] <- 100001.0
data$S3812400[150001.0 <= data$S3812400 & data$S3812400 <= 200000.0] <- 150001.0
data$S3812400[200001.0 <= data$S3812400 & data$S3812400 <= 999999.0] <- 200001.0
data$S3812400 <- factor(data$S3812400,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$S4677200[1.0 <= data$S4677200 & data$S4677200 <= 24.0] <- 1.0
data$S4677200[25.0 <= data$S4677200 & data$S4677200 <= 49.0] <- 25.0
data$S4677200[50.0 <= data$S4677200 & data$S4677200 <= 74.0] <- 50.0
data$S4677200[75.0 <= data$S4677200 & data$S4677200 <= 99.0] <- 75.0
data$S4677200[100.0 <= data$S4677200 & data$S4677200 <= 124.0] <- 100.0
data$S4677200[125.0 <= data$S4677200 & data$S4677200 <= 149.0] <- 125.0
data$S4677200[150.0 <= data$S4677200 & data$S4677200 <= 174.0] <- 150.0
data$S4677200[175.0 <= data$S4677200 & data$S4677200 <= 199.0] <- 175.0
data$S4677200[200.0 <= data$S4677200 & data$S4677200 <= 224.0] <- 200.0
data$S4677200[225.0 <= data$S4677200 & data$S4677200 <= 249.0] <- 225.0
data$S4677200[250.0 <= data$S4677200 & data$S4677200 <= 9.9999999E7] <- 250.0
data$S4677200 <- factor(data$S4677200,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$S5412800[-999999.0 <= data$S5412800 & data$S5412800 <= -3000.0] <- -999999.0
data$S5412800[-2999.0 <= data$S5412800 & data$S5412800 <= -2000.0] <- -2999.0
data$S5412800[-1999.0 <= data$S5412800 & data$S5412800 <= -1000.0] <- -1999.0
data$S5412800[-999.0 <= data$S5412800 & data$S5412800 <= -1.0] <- -999.0
data$S5412800[1.0 <= data$S5412800 & data$S5412800 <= 1000.0] <- 1.0
data$S5412800[1001.0 <= data$S5412800 & data$S5412800 <= 2000.0] <- 1001.0
data$S5412800[2001.0 <= data$S5412800 & data$S5412800 <= 3000.0] <- 2001.0
data$S5412800[3001.0 <= data$S5412800 & data$S5412800 <= 5000.0] <- 3001.0
data$S5412800[5001.0 <= data$S5412800 & data$S5412800 <= 10000.0] <- 5001.0
data$S5412800[10001.0 <= data$S5412800 & data$S5412800 <= 20000.0] <- 10001.0
data$S5412800[20001.0 <= data$S5412800 & data$S5412800 <= 30000.0] <- 20001.0
data$S5412800[30001.0 <= data$S5412800 & data$S5412800 <= 40000.0] <- 30001.0
data$S5412800[40001.0 <= data$S5412800 & data$S5412800 <= 50000.0] <- 40001.0
data$S5412800[50001.0 <= data$S5412800 & data$S5412800 <= 65000.0] <- 50001.0
data$S5412800[65001.0 <= data$S5412800 & data$S5412800 <= 80000.0] <- 65001.0
data$S5412800[80001.0 <= data$S5412800 & data$S5412800 <= 100000.0] <- 80001.0
data$S5412800[100001.0 <= data$S5412800 & data$S5412800 <= 150000.0] <- 100001.0
data$S5412800[150001.0 <= data$S5412800 & data$S5412800 <= 200000.0] <- 150001.0
data$S5412800[200001.0 <= data$S5412800 & data$S5412800 <= 999999.0] <- 200001.0
data$S5412800 <- factor(data$S5412800,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$S6309400[1.0 <= data$S6309400 & data$S6309400 <= 24.0] <- 1.0
data$S6309400[25.0 <= data$S6309400 & data$S6309400 <= 49.0] <- 25.0
data$S6309400[50.0 <= data$S6309400 & data$S6309400 <= 74.0] <- 50.0
data$S6309400[75.0 <= data$S6309400 & data$S6309400 <= 99.0] <- 75.0
data$S6309400[100.0 <= data$S6309400 & data$S6309400 <= 124.0] <- 100.0
data$S6309400[125.0 <= data$S6309400 & data$S6309400 <= 149.0] <- 125.0
data$S6309400[150.0 <= data$S6309400 & data$S6309400 <= 174.0] <- 150.0
data$S6309400[175.0 <= data$S6309400 & data$S6309400 <= 199.0] <- 175.0
data$S6309400[200.0 <= data$S6309400 & data$S6309400 <= 224.0] <- 200.0
data$S6309400[225.0 <= data$S6309400 & data$S6309400 <= 249.0] <- 225.0
data$S6309400[250.0 <= data$S6309400 & data$S6309400 <= 9.9999999E7] <- 250.0
data$S6309400 <- factor(data$S6309400,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$S7513700[-999999.0 <= data$S7513700 & data$S7513700 <= -3000.0] <- -999999.0
data$S7513700[-2999.0 <= data$S7513700 & data$S7513700 <= -2000.0] <- -2999.0
data$S7513700[-1999.0 <= data$S7513700 & data$S7513700 <= -1000.0] <- -1999.0
data$S7513700[-999.0 <= data$S7513700 & data$S7513700 <= -1.0] <- -999.0
data$S7513700[1.0 <= data$S7513700 & data$S7513700 <= 1000.0] <- 1.0
data$S7513700[1001.0 <= data$S7513700 & data$S7513700 <= 2000.0] <- 1001.0
data$S7513700[2001.0 <= data$S7513700 & data$S7513700 <= 3000.0] <- 2001.0
data$S7513700[3001.0 <= data$S7513700 & data$S7513700 <= 5000.0] <- 3001.0
data$S7513700[5001.0 <= data$S7513700 & data$S7513700 <= 10000.0] <- 5001.0
data$S7513700[10001.0 <= data$S7513700 & data$S7513700 <= 20000.0] <- 10001.0
data$S7513700[20001.0 <= data$S7513700 & data$S7513700 <= 30000.0] <- 20001.0
data$S7513700[30001.0 <= data$S7513700 & data$S7513700 <= 40000.0] <- 30001.0
data$S7513700[40001.0 <= data$S7513700 & data$S7513700 <= 50000.0] <- 40001.0
data$S7513700[50001.0 <= data$S7513700 & data$S7513700 <= 65000.0] <- 50001.0
data$S7513700[65001.0 <= data$S7513700 & data$S7513700 <= 80000.0] <- 65001.0
data$S7513700[80001.0 <= data$S7513700 & data$S7513700 <= 100000.0] <- 80001.0
data$S7513700[100001.0 <= data$S7513700 & data$S7513700 <= 150000.0] <- 100001.0
data$S7513700[150001.0 <= data$S7513700 & data$S7513700 <= 200000.0] <- 150001.0
data$S7513700[200001.0 <= data$S7513700 & data$S7513700 <= 999999.0] <- 200001.0
data$S7513700 <- factor(data$S7513700,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$S8330300[1.0 <= data$S8330300 & data$S8330300 <= 24.0] <- 1.0
data$S8330300[25.0 <= data$S8330300 & data$S8330300 <= 49.0] <- 25.0
data$S8330300[50.0 <= data$S8330300 & data$S8330300 <= 74.0] <- 50.0
data$S8330300[75.0 <= data$S8330300 & data$S8330300 <= 99.0] <- 75.0
data$S8330300[100.0 <= data$S8330300 & data$S8330300 <= 124.0] <- 100.0
data$S8330300[125.0 <= data$S8330300 & data$S8330300 <= 149.0] <- 125.0
data$S8330300[150.0 <= data$S8330300 & data$S8330300 <= 174.0] <- 150.0
data$S8330300[175.0 <= data$S8330300 & data$S8330300 <= 199.0] <- 175.0
data$S8330300[200.0 <= data$S8330300 & data$S8330300 <= 224.0] <- 200.0
data$S8330300[225.0 <= data$S8330300 & data$S8330300 <= 249.0] <- 225.0
data$S8330300[250.0 <= data$S8330300 & data$S8330300 <= 9.9999999E7] <- 250.0
data$S8330300 <- factor(data$S8330300,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$T0014100[-999999.0 <= data$T0014100 & data$T0014100 <= -3000.0] <- -999999.0
data$T0014100[-2999.0 <= data$T0014100 & data$T0014100 <= -2000.0] <- -2999.0
data$T0014100[-1999.0 <= data$T0014100 & data$T0014100 <= -1000.0] <- -1999.0
data$T0014100[-999.0 <= data$T0014100 & data$T0014100 <= -1.0] <- -999.0
data$T0014100[1.0 <= data$T0014100 & data$T0014100 <= 1000.0] <- 1.0
data$T0014100[1001.0 <= data$T0014100 & data$T0014100 <= 2000.0] <- 1001.0
data$T0014100[2001.0 <= data$T0014100 & data$T0014100 <= 3000.0] <- 2001.0
data$T0014100[3001.0 <= data$T0014100 & data$T0014100 <= 5000.0] <- 3001.0
data$T0014100[5001.0 <= data$T0014100 & data$T0014100 <= 10000.0] <- 5001.0
data$T0014100[10001.0 <= data$T0014100 & data$T0014100 <= 20000.0] <- 10001.0
data$T0014100[20001.0 <= data$T0014100 & data$T0014100 <= 30000.0] <- 20001.0
data$T0014100[30001.0 <= data$T0014100 & data$T0014100 <= 40000.0] <- 30001.0
data$T0014100[40001.0 <= data$T0014100 & data$T0014100 <= 50000.0] <- 40001.0
data$T0014100[50001.0 <= data$T0014100 & data$T0014100 <= 65000.0] <- 50001.0
data$T0014100[65001.0 <= data$T0014100 & data$T0014100 <= 80000.0] <- 65001.0
data$T0014100[80001.0 <= data$T0014100 & data$T0014100 <= 100000.0] <- 80001.0
data$T0014100[100001.0 <= data$T0014100 & data$T0014100 <= 150000.0] <- 100001.0
data$T0014100[150001.0 <= data$T0014100 & data$T0014100 <= 200000.0] <- 150001.0
data$T0014100[200001.0 <= data$T0014100 & data$T0014100 <= 999999.0] <- 200001.0
data$T0014100 <- factor(data$T0014100,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$T0738100[1.0 <= data$T0738100 & data$T0738100 <= 24.0] <- 1.0
data$T0738100[25.0 <= data$T0738100 & data$T0738100 <= 49.0] <- 25.0
data$T0738100[50.0 <= data$T0738100 & data$T0738100 <= 74.0] <- 50.0
data$T0738100[75.0 <= data$T0738100 & data$T0738100 <= 99.0] <- 75.0
data$T0738100[100.0 <= data$T0738100 & data$T0738100 <= 124.0] <- 100.0
data$T0738100[125.0 <= data$T0738100 & data$T0738100 <= 149.0] <- 125.0
data$T0738100[150.0 <= data$T0738100 & data$T0738100 <= 174.0] <- 150.0
data$T0738100[175.0 <= data$T0738100 & data$T0738100 <= 199.0] <- 175.0
data$T0738100[200.0 <= data$T0738100 & data$T0738100 <= 224.0] <- 200.0
data$T0738100[225.0 <= data$T0738100 & data$T0738100 <= 249.0] <- 225.0
data$T0738100[250.0 <= data$T0738100 & data$T0738100 <= 9.9999999E7] <- 250.0
data$T0738100 <- factor(data$T0738100,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$T2016200[-999999.0 <= data$T2016200 & data$T2016200 <= -3000.0] <- -999999.0
data$T2016200[-2999.0 <= data$T2016200 & data$T2016200 <= -2000.0] <- -2999.0
data$T2016200[-1999.0 <= data$T2016200 & data$T2016200 <= -1000.0] <- -1999.0
data$T2016200[-999.0 <= data$T2016200 & data$T2016200 <= -1.0] <- -999.0
data$T2016200[1.0 <= data$T2016200 & data$T2016200 <= 1000.0] <- 1.0
data$T2016200[1001.0 <= data$T2016200 & data$T2016200 <= 2000.0] <- 1001.0
data$T2016200[2001.0 <= data$T2016200 & data$T2016200 <= 3000.0] <- 2001.0
data$T2016200[3001.0 <= data$T2016200 & data$T2016200 <= 5000.0] <- 3001.0
data$T2016200[5001.0 <= data$T2016200 & data$T2016200 <= 10000.0] <- 5001.0
data$T2016200[10001.0 <= data$T2016200 & data$T2016200 <= 20000.0] <- 10001.0
data$T2016200[20001.0 <= data$T2016200 & data$T2016200 <= 30000.0] <- 20001.0
data$T2016200[30001.0 <= data$T2016200 & data$T2016200 <= 40000.0] <- 30001.0
data$T2016200[40001.0 <= data$T2016200 & data$T2016200 <= 50000.0] <- 40001.0
data$T2016200[50001.0 <= data$T2016200 & data$T2016200 <= 65000.0] <- 50001.0
data$T2016200[65001.0 <= data$T2016200 & data$T2016200 <= 80000.0] <- 65001.0
data$T2016200[80001.0 <= data$T2016200 & data$T2016200 <= 100000.0] <- 80001.0
data$T2016200[100001.0 <= data$T2016200 & data$T2016200 <= 150000.0] <- 100001.0
data$T2016200[150001.0 <= data$T2016200 & data$T2016200 <= 200000.0] <- 150001.0
data$T2016200[200001.0 <= data$T2016200 & data$T2016200 <= 999999.0] <- 200001.0
data$T2016200 <- factor(data$T2016200,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$T2780400[1.0 <= data$T2780400 & data$T2780400 <= 24.0] <- 1.0
data$T2780400[25.0 <= data$T2780400 & data$T2780400 <= 49.0] <- 25.0
data$T2780400[50.0 <= data$T2780400 & data$T2780400 <= 74.0] <- 50.0
data$T2780400[75.0 <= data$T2780400 & data$T2780400 <= 99.0] <- 75.0
data$T2780400[100.0 <= data$T2780400 & data$T2780400 <= 124.0] <- 100.0
data$T2780400[125.0 <= data$T2780400 & data$T2780400 <= 149.0] <- 125.0
data$T2780400[150.0 <= data$T2780400 & data$T2780400 <= 174.0] <- 150.0
data$T2780400[175.0 <= data$T2780400 & data$T2780400 <= 199.0] <- 175.0
data$T2780400[200.0 <= data$T2780400 & data$T2780400 <= 224.0] <- 200.0
data$T2780400[225.0 <= data$T2780400 & data$T2780400 <= 249.0] <- 225.0
data$T2780400[250.0 <= data$T2780400 & data$T2780400 <= 9.9999999E7] <- 250.0
data$T2780400 <- factor(data$T2780400,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$T3606500[-999999.0 <= data$T3606500 & data$T3606500 <= -3000.0] <- -999999.0
data$T3606500[-2999.0 <= data$T3606500 & data$T3606500 <= -2000.0] <- -2999.0
data$T3606500[-1999.0 <= data$T3606500 & data$T3606500 <= -1000.0] <- -1999.0
data$T3606500[-999.0 <= data$T3606500 & data$T3606500 <= -1.0] <- -999.0
data$T3606500[1.0 <= data$T3606500 & data$T3606500 <= 1000.0] <- 1.0
data$T3606500[1001.0 <= data$T3606500 & data$T3606500 <= 2000.0] <- 1001.0
data$T3606500[2001.0 <= data$T3606500 & data$T3606500 <= 3000.0] <- 2001.0
data$T3606500[3001.0 <= data$T3606500 & data$T3606500 <= 5000.0] <- 3001.0
data$T3606500[5001.0 <= data$T3606500 & data$T3606500 <= 10000.0] <- 5001.0
data$T3606500[10001.0 <= data$T3606500 & data$T3606500 <= 20000.0] <- 10001.0
data$T3606500[20001.0 <= data$T3606500 & data$T3606500 <= 30000.0] <- 20001.0
data$T3606500[30001.0 <= data$T3606500 & data$T3606500 <= 40000.0] <- 30001.0
data$T3606500[40001.0 <= data$T3606500 & data$T3606500 <= 50000.0] <- 40001.0
data$T3606500[50001.0 <= data$T3606500 & data$T3606500 <= 65000.0] <- 50001.0
data$T3606500[65001.0 <= data$T3606500 & data$T3606500 <= 80000.0] <- 65001.0
data$T3606500[80001.0 <= data$T3606500 & data$T3606500 <= 100000.0] <- 80001.0
data$T3606500[100001.0 <= data$T3606500 & data$T3606500 <= 150000.0] <- 100001.0
data$T3606500[150001.0 <= data$T3606500 & data$T3606500 <= 200000.0] <- 150001.0
data$T3606500[200001.0 <= data$T3606500 & data$T3606500 <= 999999.0] <- 200001.0
data$T3606500 <- factor(data$T3606500,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$T4494800[1.0 <= data$T4494800 & data$T4494800 <= 24.0] <- 1.0
data$T4494800[25.0 <= data$T4494800 & data$T4494800 <= 49.0] <- 25.0
data$T4494800[50.0 <= data$T4494800 & data$T4494800 <= 74.0] <- 50.0
data$T4494800[75.0 <= data$T4494800 & data$T4494800 <= 99.0] <- 75.0
data$T4494800[100.0 <= data$T4494800 & data$T4494800 <= 124.0] <- 100.0
data$T4494800[125.0 <= data$T4494800 & data$T4494800 <= 149.0] <- 125.0
data$T4494800[150.0 <= data$T4494800 & data$T4494800 <= 174.0] <- 150.0
data$T4494800[175.0 <= data$T4494800 & data$T4494800 <= 199.0] <- 175.0
data$T4494800[200.0 <= data$T4494800 & data$T4494800 <= 224.0] <- 200.0
data$T4494800[225.0 <= data$T4494800 & data$T4494800 <= 249.0] <- 225.0
data$T4494800[250.0 <= data$T4494800 & data$T4494800 <= 9.9999999E7] <- 250.0
data$T4494800 <- factor(data$T4494800,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$T5206900[-999999.0 <= data$T5206900 & data$T5206900 <= -3000.0] <- -999999.0
data$T5206900[-2999.0 <= data$T5206900 & data$T5206900 <= -2000.0] <- -2999.0
data$T5206900[-1999.0 <= data$T5206900 & data$T5206900 <= -1000.0] <- -1999.0
data$T5206900[-999.0 <= data$T5206900 & data$T5206900 <= -1.0] <- -999.0
data$T5206900[1.0 <= data$T5206900 & data$T5206900 <= 1000.0] <- 1.0
data$T5206900[1001.0 <= data$T5206900 & data$T5206900 <= 2000.0] <- 1001.0
data$T5206900[2001.0 <= data$T5206900 & data$T5206900 <= 3000.0] <- 2001.0
data$T5206900[3001.0 <= data$T5206900 & data$T5206900 <= 5000.0] <- 3001.0
data$T5206900[5001.0 <= data$T5206900 & data$T5206900 <= 10000.0] <- 5001.0
data$T5206900[10001.0 <= data$T5206900 & data$T5206900 <= 20000.0] <- 10001.0
data$T5206900[20001.0 <= data$T5206900 & data$T5206900 <= 30000.0] <- 20001.0
data$T5206900[30001.0 <= data$T5206900 & data$T5206900 <= 40000.0] <- 30001.0
data$T5206900[40001.0 <= data$T5206900 & data$T5206900 <= 50000.0] <- 40001.0
data$T5206900[50001.0 <= data$T5206900 & data$T5206900 <= 65000.0] <- 50001.0
data$T5206900[65001.0 <= data$T5206900 & data$T5206900 <= 80000.0] <- 65001.0
data$T5206900[80001.0 <= data$T5206900 & data$T5206900 <= 100000.0] <- 80001.0
data$T5206900[100001.0 <= data$T5206900 & data$T5206900 <= 150000.0] <- 100001.0
data$T5206900[150001.0 <= data$T5206900 & data$T5206900 <= 200000.0] <- 150001.0
data$T5206900[200001.0 <= data$T5206900 & data$T5206900 <= 999999.0] <- 200001.0
data$T5206900 <- factor(data$T5206900,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$T6141900[1.0 <= data$T6141900 & data$T6141900 <= 24.0] <- 1.0
data$T6141900[25.0 <= data$T6141900 & data$T6141900 <= 49.0] <- 25.0
data$T6141900[50.0 <= data$T6141900 & data$T6141900 <= 74.0] <- 50.0
data$T6141900[75.0 <= data$T6141900 & data$T6141900 <= 99.0] <- 75.0
data$T6141900[100.0 <= data$T6141900 & data$T6141900 <= 124.0] <- 100.0
data$T6141900[125.0 <= data$T6141900 & data$T6141900 <= 149.0] <- 125.0
data$T6141900[150.0 <= data$T6141900 & data$T6141900 <= 174.0] <- 150.0
data$T6141900[175.0 <= data$T6141900 & data$T6141900 <= 199.0] <- 175.0
data$T6141900[200.0 <= data$T6141900 & data$T6141900 <= 224.0] <- 200.0
data$T6141900[225.0 <= data$T6141900 & data$T6141900 <= 249.0] <- 225.0
data$T6141900[250.0 <= data$T6141900 & data$T6141900 <= 9.9999999E7] <- 250.0
data$T6141900 <- factor(data$T6141900,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$T6656700[-999999.0 <= data$T6656700 & data$T6656700 <= -3000.0] <- -999999.0
data$T6656700[-2999.0 <= data$T6656700 & data$T6656700 <= -2000.0] <- -2999.0
data$T6656700[-1999.0 <= data$T6656700 & data$T6656700 <= -1000.0] <- -1999.0
data$T6656700[-999.0 <= data$T6656700 & data$T6656700 <= -1.0] <- -999.0
data$T6656700[1.0 <= data$T6656700 & data$T6656700 <= 1000.0] <- 1.0
data$T6656700[1001.0 <= data$T6656700 & data$T6656700 <= 2000.0] <- 1001.0
data$T6656700[2001.0 <= data$T6656700 & data$T6656700 <= 3000.0] <- 2001.0
data$T6656700[3001.0 <= data$T6656700 & data$T6656700 <= 5000.0] <- 3001.0
data$T6656700[5001.0 <= data$T6656700 & data$T6656700 <= 10000.0] <- 5001.0
data$T6656700[10001.0 <= data$T6656700 & data$T6656700 <= 20000.0] <- 10001.0
data$T6656700[20001.0 <= data$T6656700 & data$T6656700 <= 30000.0] <- 20001.0
data$T6656700[30001.0 <= data$T6656700 & data$T6656700 <= 40000.0] <- 30001.0
data$T6656700[40001.0 <= data$T6656700 & data$T6656700 <= 50000.0] <- 40001.0
data$T6656700[50001.0 <= data$T6656700 & data$T6656700 <= 65000.0] <- 50001.0
data$T6656700[65001.0 <= data$T6656700 & data$T6656700 <= 80000.0] <- 65001.0
data$T6656700[80001.0 <= data$T6656700 & data$T6656700 <= 100000.0] <- 80001.0
data$T6656700[100001.0 <= data$T6656700 & data$T6656700 <= 150000.0] <- 100001.0
data$T6656700[150001.0 <= data$T6656700 & data$T6656700 <= 200000.0] <- 150001.0
data$T6656700[200001.0 <= data$T6656700 & data$T6656700 <= 999999.0] <- 200001.0
data$T6656700 <- factor(data$T6656700,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$T7635800[1.0 <= data$T7635800 & data$T7635800 <= 24.0] <- 1.0
data$T7635800[25.0 <= data$T7635800 & data$T7635800 <= 49.0] <- 25.0
data$T7635800[50.0 <= data$T7635800 & data$T7635800 <= 74.0] <- 50.0
data$T7635800[75.0 <= data$T7635800 & data$T7635800 <= 99.0] <- 75.0
data$T7635800[100.0 <= data$T7635800 & data$T7635800 <= 124.0] <- 100.0
data$T7635800[125.0 <= data$T7635800 & data$T7635800 <= 149.0] <- 125.0
data$T7635800[150.0 <= data$T7635800 & data$T7635800 <= 174.0] <- 150.0
data$T7635800[175.0 <= data$T7635800 & data$T7635800 <= 199.0] <- 175.0
data$T7635800[200.0 <= data$T7635800 & data$T7635800 <= 224.0] <- 200.0
data$T7635800[225.0 <= data$T7635800 & data$T7635800 <= 249.0] <- 225.0
data$T7635800[250.0 <= data$T7635800 & data$T7635800 <= 9.9999999E7] <- 250.0
data$T7635800 <- factor(data$T7635800,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$T8129100[-999999.0 <= data$T8129100 & data$T8129100 <= -3000.0] <- -999999.0
data$T8129100[-2999.0 <= data$T8129100 & data$T8129100 <= -2000.0] <- -2999.0
data$T8129100[-1999.0 <= data$T8129100 & data$T8129100 <= -1000.0] <- -1999.0
data$T8129100[-999.0 <= data$T8129100 & data$T8129100 <= -1.0] <- -999.0
data$T8129100[1.0 <= data$T8129100 & data$T8129100 <= 1000.0] <- 1.0
data$T8129100[1001.0 <= data$T8129100 & data$T8129100 <= 2000.0] <- 1001.0
data$T8129100[2001.0 <= data$T8129100 & data$T8129100 <= 3000.0] <- 2001.0
data$T8129100[3001.0 <= data$T8129100 & data$T8129100 <= 5000.0] <- 3001.0
data$T8129100[5001.0 <= data$T8129100 & data$T8129100 <= 10000.0] <- 5001.0
data$T8129100[10001.0 <= data$T8129100 & data$T8129100 <= 20000.0] <- 10001.0
data$T8129100[20001.0 <= data$T8129100 & data$T8129100 <= 30000.0] <- 20001.0
data$T8129100[30001.0 <= data$T8129100 & data$T8129100 <= 40000.0] <- 30001.0
data$T8129100[40001.0 <= data$T8129100 & data$T8129100 <= 50000.0] <- 40001.0
data$T8129100[50001.0 <= data$T8129100 & data$T8129100 <= 65000.0] <- 50001.0
data$T8129100[65001.0 <= data$T8129100 & data$T8129100 <= 80000.0] <- 65001.0
data$T8129100[80001.0 <= data$T8129100 & data$T8129100 <= 100000.0] <- 80001.0
data$T8129100[100001.0 <= data$T8129100 & data$T8129100 <= 150000.0] <- 100001.0
data$T8129100[150001.0 <= data$T8129100 & data$T8129100 <= 200000.0] <- 150001.0
data$T8129100[200001.0 <= data$T8129100 & data$T8129100 <= 999999.0] <- 200001.0
data$T8129100 <- factor(data$T8129100,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$T9039300[1.0 <= data$T9039300 & data$T9039300 <= 24.0] <- 1.0
data$T9039300[25.0 <= data$T9039300 & data$T9039300 <= 49.0] <- 25.0
data$T9039300[50.0 <= data$T9039300 & data$T9039300 <= 74.0] <- 50.0
data$T9039300[75.0 <= data$T9039300 & data$T9039300 <= 99.0] <- 75.0
data$T9039300[100.0 <= data$T9039300 & data$T9039300 <= 124.0] <- 100.0
data$T9039300[125.0 <= data$T9039300 & data$T9039300 <= 149.0] <- 125.0
data$T9039300[150.0 <= data$T9039300 & data$T9039300 <= 174.0] <- 150.0
data$T9039300[175.0 <= data$T9039300 & data$T9039300 <= 199.0] <- 175.0
data$T9039300[200.0 <= data$T9039300 & data$T9039300 <= 224.0] <- 200.0
data$T9039300[225.0 <= data$T9039300 & data$T9039300 <= 249.0] <- 225.0
data$T9039300[250.0 <= data$T9039300 & data$T9039300 <= 9.9999999E7] <- 250.0
data$T9039300 <- factor(data$T9039300,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$U0008900[-999999.0 <= data$U0008900 & data$U0008900 <= -3000.0] <- -999999.0
data$U0008900[-2999.0 <= data$U0008900 & data$U0008900 <= -2000.0] <- -2999.0
data$U0008900[-1999.0 <= data$U0008900 & data$U0008900 <= -1000.0] <- -1999.0
data$U0008900[-999.0 <= data$U0008900 & data$U0008900 <= -1.0] <- -999.0
data$U0008900[1.0 <= data$U0008900 & data$U0008900 <= 1000.0] <- 1.0
data$U0008900[1001.0 <= data$U0008900 & data$U0008900 <= 2000.0] <- 1001.0
data$U0008900[2001.0 <= data$U0008900 & data$U0008900 <= 3000.0] <- 2001.0
data$U0008900[3001.0 <= data$U0008900 & data$U0008900 <= 5000.0] <- 3001.0
data$U0008900[5001.0 <= data$U0008900 & data$U0008900 <= 10000.0] <- 5001.0
data$U0008900[10001.0 <= data$U0008900 & data$U0008900 <= 20000.0] <- 10001.0
data$U0008900[20001.0 <= data$U0008900 & data$U0008900 <= 30000.0] <- 20001.0
data$U0008900[30001.0 <= data$U0008900 & data$U0008900 <= 40000.0] <- 30001.0
data$U0008900[40001.0 <= data$U0008900 & data$U0008900 <= 50000.0] <- 40001.0
data$U0008900[50001.0 <= data$U0008900 & data$U0008900 <= 65000.0] <- 50001.0
data$U0008900[65001.0 <= data$U0008900 & data$U0008900 <= 80000.0] <- 65001.0
data$U0008900[80001.0 <= data$U0008900 & data$U0008900 <= 100000.0] <- 80001.0
data$U0008900[100001.0 <= data$U0008900 & data$U0008900 <= 150000.0] <- 100001.0
data$U0008900[150001.0 <= data$U0008900 & data$U0008900 <= 200000.0] <- 150001.0
data$U0008900[200001.0 <= data$U0008900 & data$U0008900 <= 999999.0] <- 200001.0
data$U0008900 <- factor(data$U0008900,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$U1028700[1.0 <= data$U1028700 & data$U1028700 <= 24.0] <- 1.0
data$U1028700[25.0 <= data$U1028700 & data$U1028700 <= 49.0] <- 25.0
data$U1028700[50.0 <= data$U1028700 & data$U1028700 <= 74.0] <- 50.0
data$U1028700[75.0 <= data$U1028700 & data$U1028700 <= 99.0] <- 75.0
data$U1028700[100.0 <= data$U1028700 & data$U1028700 <= 124.0] <- 100.0
data$U1028700[125.0 <= data$U1028700 & data$U1028700 <= 149.0] <- 125.0
data$U1028700[150.0 <= data$U1028700 & data$U1028700 <= 174.0] <- 150.0
data$U1028700[175.0 <= data$U1028700 & data$U1028700 <= 199.0] <- 175.0
data$U1028700[200.0 <= data$U1028700 & data$U1028700 <= 224.0] <- 200.0
data$U1028700[225.0 <= data$U1028700 & data$U1028700 <= 249.0] <- 225.0
data$U1028700[250.0 <= data$U1028700 & data$U1028700 <= 9.9999999E7] <- 250.0
data$U1028700 <- factor(data$U1028700,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$U1845500[-999999.0 <= data$U1845500 & data$U1845500 <= -3000.0] <- -999999.0
data$U1845500[-2999.0 <= data$U1845500 & data$U1845500 <= -2000.0] <- -2999.0
data$U1845500[-1999.0 <= data$U1845500 & data$U1845500 <= -1000.0] <- -1999.0
data$U1845500[-999.0 <= data$U1845500 & data$U1845500 <= -1.0] <- -999.0
data$U1845500[1.0 <= data$U1845500 & data$U1845500 <= 1000.0] <- 1.0
data$U1845500[1001.0 <= data$U1845500 & data$U1845500 <= 2000.0] <- 1001.0
data$U1845500[2001.0 <= data$U1845500 & data$U1845500 <= 3000.0] <- 2001.0
data$U1845500[3001.0 <= data$U1845500 & data$U1845500 <= 5000.0] <- 3001.0
data$U1845500[5001.0 <= data$U1845500 & data$U1845500 <= 10000.0] <- 5001.0
data$U1845500[10001.0 <= data$U1845500 & data$U1845500 <= 20000.0] <- 10001.0
data$U1845500[20001.0 <= data$U1845500 & data$U1845500 <= 30000.0] <- 20001.0
data$U1845500[30001.0 <= data$U1845500 & data$U1845500 <= 40000.0] <- 30001.0
data$U1845500[40001.0 <= data$U1845500 & data$U1845500 <= 50000.0] <- 40001.0
data$U1845500[50001.0 <= data$U1845500 & data$U1845500 <= 65000.0] <- 50001.0
data$U1845500[65001.0 <= data$U1845500 & data$U1845500 <= 80000.0] <- 65001.0
data$U1845500[80001.0 <= data$U1845500 & data$U1845500 <= 100000.0] <- 80001.0
data$U1845500[100001.0 <= data$U1845500 & data$U1845500 <= 150000.0] <- 100001.0
data$U1845500[150001.0 <= data$U1845500 & data$U1845500 <= 200000.0] <- 150001.0
data$U1845500[200001.0 <= data$U1845500 & data$U1845500 <= 999999.0] <- 200001.0
data$U1845500 <- factor(data$U1845500,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$U2962700[1.0 <= data$U2962700 & data$U2962700 <= 24.0] <- 1.0
data$U2962700[25.0 <= data$U2962700 & data$U2962700 <= 49.0] <- 25.0
data$U2962700[50.0 <= data$U2962700 & data$U2962700 <= 74.0] <- 50.0
data$U2962700[75.0 <= data$U2962700 & data$U2962700 <= 99.0] <- 75.0
data$U2962700[100.0 <= data$U2962700 & data$U2962700 <= 124.0] <- 100.0
data$U2962700[125.0 <= data$U2962700 & data$U2962700 <= 149.0] <- 125.0
data$U2962700[150.0 <= data$U2962700 & data$U2962700 <= 174.0] <- 150.0
data$U2962700[175.0 <= data$U2962700 & data$U2962700 <= 199.0] <- 175.0
data$U2962700[200.0 <= data$U2962700 & data$U2962700 <= 224.0] <- 200.0
data$U2962700[225.0 <= data$U2962700 & data$U2962700 <= 249.0] <- 225.0
data$U2962700[250.0 <= data$U2962700 & data$U2962700 <= 9.9999999E7] <- 250.0
data$U2962700 <- factor(data$U2962700,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$U3444000[-999999.0 <= data$U3444000 & data$U3444000 <= -3000.0] <- -999999.0
data$U3444000[-2999.0 <= data$U3444000 & data$U3444000 <= -2000.0] <- -2999.0
data$U3444000[-1999.0 <= data$U3444000 & data$U3444000 <= -1000.0] <- -1999.0
data$U3444000[-999.0 <= data$U3444000 & data$U3444000 <= -1.0] <- -999.0
data$U3444000[1.0 <= data$U3444000 & data$U3444000 <= 1000.0] <- 1.0
data$U3444000[1001.0 <= data$U3444000 & data$U3444000 <= 2000.0] <- 1001.0
data$U3444000[2001.0 <= data$U3444000 & data$U3444000 <= 3000.0] <- 2001.0
data$U3444000[3001.0 <= data$U3444000 & data$U3444000 <= 5000.0] <- 3001.0
data$U3444000[5001.0 <= data$U3444000 & data$U3444000 <= 10000.0] <- 5001.0
data$U3444000[10001.0 <= data$U3444000 & data$U3444000 <= 20000.0] <- 10001.0
data$U3444000[20001.0 <= data$U3444000 & data$U3444000 <= 30000.0] <- 20001.0
data$U3444000[30001.0 <= data$U3444000 & data$U3444000 <= 40000.0] <- 30001.0
data$U3444000[40001.0 <= data$U3444000 & data$U3444000 <= 50000.0] <- 40001.0
data$U3444000[50001.0 <= data$U3444000 & data$U3444000 <= 65000.0] <- 50001.0
data$U3444000[65001.0 <= data$U3444000 & data$U3444000 <= 80000.0] <- 65001.0
data$U3444000[80001.0 <= data$U3444000 & data$U3444000 <= 100000.0] <- 80001.0
data$U3444000[100001.0 <= data$U3444000 & data$U3444000 <= 150000.0] <- 100001.0
data$U3444000[150001.0 <= data$U3444000 & data$U3444000 <= 200000.0] <- 150001.0
data$U3444000[200001.0 <= data$U3444000 & data$U3444000 <= 999999.0] <- 200001.0
data$U3444000 <- factor(data$U3444000,
levels=c(-999999.0,-2999.0,-1999.0,-999.0,0.0,1.0,1001.0,2001.0,3001.0,5001.0,10001.0,20001.0,30001.0,40001.0,50001.0,65001.0,80001.0,100001.0,150001.0,200001.0),
labels=c("-999999 TO -3000: < -2999",
"-2999 TO -2000",
"-1999 TO -1000",
"-999 TO -1",
"0",
"1 TO 1000",
"1001 TO 2000",
"2001 TO 3000",
"3001 TO 5000",
"5001 TO 10000",
"10001 TO 20000",
"20001 TO 30000",
"30001 TO 40000",
"40001 TO 50000",
"50001 TO 65000",
"65001 TO 80000",
"80001 TO 100000",
"100001 TO 150000",
"150001 TO 200000",
"200001 TO 999999: 200001+"))
data$U4368100[1.0 <= data$U4368100 & data$U4368100 <= 24.0] <- 1.0
data$U4368100[25.0 <= data$U4368100 & data$U4368100 <= 49.0] <- 25.0
data$U4368100[50.0 <= data$U4368100 & data$U4368100 <= 74.0] <- 50.0
data$U4368100[75.0 <= data$U4368100 & data$U4368100 <= 99.0] <- 75.0
data$U4368100[100.0 <= data$U4368100 & data$U4368100 <= 124.0] <- 100.0
data$U4368100[125.0 <= data$U4368100 & data$U4368100 <= 149.0] <- 125.0
data$U4368100[150.0 <= data$U4368100 & data$U4368100 <= 174.0] <- 150.0
data$U4368100[175.0 <= data$U4368100 & data$U4368100 <= 199.0] <- 175.0
data$U4368100[200.0 <= data$U4368100 & data$U4368100 <= 224.0] <- 200.0
data$U4368100[225.0 <= data$U4368100 & data$U4368100 <= 249.0] <- 225.0
data$U4368100[250.0 <= data$U4368100 & data$U4368100 <= 9.9999999E7] <- 250.0
data$U4368100 <- factor(data$U4368100,
levels=c(0.0,1.0,25.0,50.0,75.0,100.0,125.0,150.0,175.0,200.0,225.0,250.0),
labels=c("0",
"1 TO 24",
"25 TO 49",
"50 TO 74",
"75 TO 99",
"100 TO 124",
"125 TO 149",
"150 TO 174",
"175 TO 199",
"200 TO 224",
"225 TO 249",
"250 TO 99999999: 250+"))
data$Z9032200[20.0 <= data$Z9032200 & data$Z9032200 <= 99.0] <- 20.0
data$Z9032200 <- factor(data$Z9032200,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20 TO 99: 20+"))
data$Z9032300[20.0 <= data$Z9032300 & data$Z9032300 <= 99.0] <- 20.0
data$Z9032300 <- factor(data$Z9032300,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20 TO 99: 20+"))
data$Z9050501[10.0 <= data$Z9050501 & data$Z9050501 <= 999.0] <- 10.0
data$Z9050501 <- factor(data$Z9050501,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$Z9050601[10.0 <= data$Z9050601 & data$Z9050601 <= 999.0] <- 10.0
data$Z9050601 <- factor(data$Z9050601,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$Z9050701[10.0 <= data$Z9050701 & data$Z9050701 <= 999.0] <- 10.0
data$Z9050701 <- factor(data$Z9050701,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$Z9065201[0.0 <= data$Z9065201 & data$Z9065201 <= 50.0] <- 0.0
data$Z9065201[51.0 <= data$Z9065201 & data$Z9065201 <= 100.0] <- 51.0
data$Z9065201[101.0 <= data$Z9065201 & data$Z9065201 <= 150.0] <- 101.0
data$Z9065201[151.0 <= data$Z9065201 & data$Z9065201 <= 200.0] <- 151.0
data$Z9065201[201.0 <= data$Z9065201 & data$Z9065201 <= 250.0] <- 201.0
data$Z9065201[251.0 <= data$Z9065201 & data$Z9065201 <= 300.0] <- 251.0
data$Z9065201[301.0 <= data$Z9065201 & data$Z9065201 <= 350.0] <- 301.0
data$Z9065201[351.0 <= data$Z9065201 & data$Z9065201 <= 400.0] <- 351.0
data$Z9065201[401.0 <= data$Z9065201 & data$Z9065201 <= 450.0] <- 401.0
data$Z9065201[451.0 <= data$Z9065201 & data$Z9065201 <= 500.0] <- 451.0
data$Z9065201[501.0 <= data$Z9065201 & data$Z9065201 <= 550.0] <- 501.0
data$Z9065201[551.0 <= data$Z9065201 & data$Z9065201 <= 600.0] <- 551.0
data$Z9065201[601.0 <= data$Z9065201 & data$Z9065201 <= 650.0] <- 601.0
data$Z9065201[651.0 <= data$Z9065201 & data$Z9065201 <= 700.0] <- 651.0
data$Z9065201[701.0 <= data$Z9065201 & data$Z9065201 <= 750.0] <- 701.0
data$Z9065201[751.0 <= data$Z9065201 & data$Z9065201 <= 800.0] <- 751.0
data$Z9065201[801.0 <= data$Z9065201 & data$Z9065201 <= 850.0] <- 801.0
data$Z9065201[851.0 <= data$Z9065201 & data$Z9065201 <= 900.0] <- 851.0
data$Z9065201[901.0 <= data$Z9065201 & data$Z9065201 <= 950.0] <- 901.0
data$Z9065201[951.0 <= data$Z9065201 & data$Z9065201 <= 1000.0] <- 951.0
data$Z9065201[1001.0 <= data$Z9065201 & data$Z9065201 <= 1050.0] <- 1001.0
data$Z9065201[1051.0 <= data$Z9065201 & data$Z9065201 <= 1100.0] <- 1051.0
data$Z9065201[1101.0 <= data$Z9065201 & data$Z9065201 <= 1150.0] <- 1101.0
data$Z9065201[1151.0 <= data$Z9065201 & data$Z9065201 <= 1200.0] <- 1151.0
data$Z9065201[1201.0 <= data$Z9065201 & data$Z9065201 <= 1250.0] <- 1201.0
data$Z9065201[1251.0 <= data$Z9065201 & data$Z9065201 <= 1300.0] <- 1251.0
data$Z9065201 <- factor(data$Z9065201,
levels=c(0.0,51.0,101.0,151.0,201.0,251.0,301.0,351.0,401.0,451.0,501.0,551.0,601.0,651.0,701.0,751.0,801.0,851.0,901.0,951.0,1001.0,1051.0,1101.0,1151.0,1201.0,1251.0),
labels=c("0 TO 50: weeks",
"51 TO 100: weeks",
"101 TO 150: weeks",
"151 TO 200: weeks",
"201 TO 250: weeks",
"251 TO 300: weeks",
"301 TO 350: weeks",
"351 TO 400: weeks",
"401 TO 450: weeks",
"451 TO 500: weeks",
"501 TO 550: weeks",
"551 TO 600: weeks",
"601 TO 650: weeks",
"651 TO 700: weeks",
"701 TO 750: weeks",
"751 TO 800: weeks",
"801 TO 850: weeks",
"851 TO 900: weeks",
"901 TO 950: weeks",
"951 TO 1000: weeks",
"1001 TO 1050: weeks",
"1051 TO 1100: weeks",
"1101 TO 1150: weeks",
"1151 TO 1200: weeks",
"1201 TO 1250: weeks",
"1251 TO 1300: weeks"))
data$Z9065301[0.0 <= data$Z9065301 & data$Z9065301 <= 50.0] <- 0.0
data$Z9065301[51.0 <= data$Z9065301 & data$Z9065301 <= 100.0] <- 51.0
data$Z9065301[101.0 <= data$Z9065301 & data$Z9065301 <= 150.0] <- 101.0
data$Z9065301[151.0 <= data$Z9065301 & data$Z9065301 <= 200.0] <- 151.0
data$Z9065301[201.0 <= data$Z9065301 & data$Z9065301 <= 250.0] <- 201.0
data$Z9065301[251.0 <= data$Z9065301 & data$Z9065301 <= 300.0] <- 251.0
data$Z9065301[301.0 <= data$Z9065301 & data$Z9065301 <= 350.0] <- 301.0
data$Z9065301[351.0 <= data$Z9065301 & data$Z9065301 <= 400.0] <- 351.0
data$Z9065301[401.0 <= data$Z9065301 & data$Z9065301 <= 450.0] <- 401.0
data$Z9065301[451.0 <= data$Z9065301 & data$Z9065301 <= 500.0] <- 451.0
data$Z9065301[501.0 <= data$Z9065301 & data$Z9065301 <= 550.0] <- 501.0
data$Z9065301[551.0 <= data$Z9065301 & data$Z9065301 <= 600.0] <- 551.0
data$Z9065301[601.0 <= data$Z9065301 & data$Z9065301 <= 650.0] <- 601.0
data$Z9065301[651.0 <= data$Z9065301 & data$Z9065301 <= 700.0] <- 651.0
data$Z9065301[701.0 <= data$Z9065301 & data$Z9065301 <= 750.0] <- 701.0
data$Z9065301[751.0 <= data$Z9065301 & data$Z9065301 <= 800.0] <- 751.0
data$Z9065301[801.0 <= data$Z9065301 & data$Z9065301 <= 850.0] <- 801.0
data$Z9065301[851.0 <= data$Z9065301 & data$Z9065301 <= 900.0] <- 851.0
data$Z9065301[901.0 <= data$Z9065301 & data$Z9065301 <= 950.0] <- 901.0
data$Z9065301[951.0 <= data$Z9065301 & data$Z9065301 <= 1000.0] <- 951.0
data$Z9065301[1001.0 <= data$Z9065301 & data$Z9065301 <= 1050.0] <- 1001.0
data$Z9065301[1051.0 <= data$Z9065301 & data$Z9065301 <= 1100.0] <- 1051.0
data$Z9065301[1101.0 <= data$Z9065301 & data$Z9065301 <= 1150.0] <- 1101.0
data$Z9065301[1151.0 <= data$Z9065301 & data$Z9065301 <= 1200.0] <- 1151.0
data$Z9065301[1201.0 <= data$Z9065301 & data$Z9065301 <= 1250.0] <- 1201.0
data$Z9065301[1251.0 <= data$Z9065301 & data$Z9065301 <= 1300.0] <- 1251.0
data$Z9065301 <- factor(data$Z9065301,
levels=c(0.0,51.0,101.0,151.0,201.0,251.0,301.0,351.0,401.0,451.0,501.0,551.0,601.0,651.0,701.0,751.0,801.0,851.0,901.0,951.0,1001.0,1051.0,1101.0,1151.0,1201.0,1251.0),
labels=c("0 TO 50: weeks",
"51 TO 100: weeks",
"101 TO 150: weeks",
"151 TO 200: weeks",
"201 TO 250: weeks",
"251 TO 300: weeks",
"301 TO 350: weeks",
"351 TO 400: weeks",
"401 TO 450: weeks",
"451 TO 500: weeks",
"501 TO 550: weeks",
"551 TO 600: weeks",
"601 TO 650: weeks",
"651 TO 700: weeks",
"701 TO 750: weeks",
"751 TO 800: weeks",
"801 TO 850: weeks",
"851 TO 900: weeks",
"901 TO 950: weeks",
"951 TO 1000: weeks",
"1001 TO 1050: weeks",
"1051 TO 1100: weeks",
"1101 TO 1150: weeks",
"1151 TO 1200: weeks",
"1201 TO 1250: weeks",
"1251 TO 1300: weeks"))
data$Z9065401[0.0 <= data$Z9065401 & data$Z9065401 <= 50.0] <- 0.0
data$Z9065401[51.0 <= data$Z9065401 & data$Z9065401 <= 100.0] <- 51.0
data$Z9065401[101.0 <= data$Z9065401 & data$Z9065401 <= 150.0] <- 101.0
data$Z9065401[151.0 <= data$Z9065401 & data$Z9065401 <= 200.0] <- 151.0
data$Z9065401[201.0 <= data$Z9065401 & data$Z9065401 <= 250.0] <- 201.0
data$Z9065401[251.0 <= data$Z9065401 & data$Z9065401 <= 300.0] <- 251.0
data$Z9065401[301.0 <= data$Z9065401 & data$Z9065401 <= 350.0] <- 301.0
data$Z9065401[351.0 <= data$Z9065401 & data$Z9065401 <= 400.0] <- 351.0
data$Z9065401[401.0 <= data$Z9065401 & data$Z9065401 <= 450.0] <- 401.0
data$Z9065401[451.0 <= data$Z9065401 & data$Z9065401 <= 500.0] <- 451.0
data$Z9065401[501.0 <= data$Z9065401 & data$Z9065401 <= 550.0] <- 501.0
data$Z9065401[551.0 <= data$Z9065401 & data$Z9065401 <= 600.0] <- 551.0
data$Z9065401[601.0 <= data$Z9065401 & data$Z9065401 <= 650.0] <- 601.0
data$Z9065401[651.0 <= data$Z9065401 & data$Z9065401 <= 700.0] <- 651.0
data$Z9065401[701.0 <= data$Z9065401 & data$Z9065401 <= 750.0] <- 701.0
data$Z9065401[751.0 <= data$Z9065401 & data$Z9065401 <= 800.0] <- 751.0
data$Z9065401[801.0 <= data$Z9065401 & data$Z9065401 <= 850.0] <- 801.0
data$Z9065401[851.0 <= data$Z9065401 & data$Z9065401 <= 900.0] <- 851.0
data$Z9065401[901.0 <= data$Z9065401 & data$Z9065401 <= 950.0] <- 901.0
data$Z9065401[951.0 <= data$Z9065401 & data$Z9065401 <= 1000.0] <- 951.0
data$Z9065401[1001.0 <= data$Z9065401 & data$Z9065401 <= 1050.0] <- 1001.0
data$Z9065401[1051.0 <= data$Z9065401 & data$Z9065401 <= 1100.0] <- 1051.0
data$Z9065401[1101.0 <= data$Z9065401 & data$Z9065401 <= 1150.0] <- 1101.0
data$Z9065401[1151.0 <= data$Z9065401 & data$Z9065401 <= 1200.0] <- 1151.0
data$Z9065401[1201.0 <= data$Z9065401 & data$Z9065401 <= 1250.0] <- 1201.0
data$Z9065401[1251.0 <= data$Z9065401 & data$Z9065401 <= 1300.0] <- 1251.0
data$Z9065401 <- factor(data$Z9065401,
levels=c(0.0,51.0,101.0,151.0,201.0,251.0,301.0,351.0,401.0,451.0,501.0,551.0,601.0,651.0,701.0,751.0,801.0,851.0,901.0,951.0,1001.0,1051.0,1101.0,1151.0,1201.0,1251.0),
labels=c("0 TO 50: weeks",
"51 TO 100: weeks",
"101 TO 150: weeks",
"151 TO 200: weeks",
"201 TO 250: weeks",
"251 TO 300: weeks",
"301 TO 350: weeks",
"351 TO 400: weeks",
"401 TO 450: weeks",
"451 TO 500: weeks",
"501 TO 550: weeks",
"551 TO 600: weeks",
"601 TO 650: weeks",
"651 TO 700: weeks",
"701 TO 750: weeks",
"751 TO 800: weeks",
"801 TO 850: weeks",
"851 TO 900: weeks",
"901 TO 950: weeks",
"951 TO 1000: weeks",
"1001 TO 1050: weeks",
"1051 TO 1100: weeks",
"1101 TO 1150: weeks",
"1151 TO 1200: weeks",
"1201 TO 1250: weeks",
"1251 TO 1300: weeks"))
data$Z9073100[0.0 <= data$Z9073100 & data$Z9073100 <= 200.0] <- 0.0
data$Z9073100[201.0 <= data$Z9073100 & data$Z9073100 <= 220.0] <- 201.0
data$Z9073100[221.0 <= data$Z9073100 & data$Z9073100 <= 240.0] <- 221.0
data$Z9073100[241.0 <= data$Z9073100 & data$Z9073100 <= 260.0] <- 241.0
data$Z9073100[261.0 <= data$Z9073100 & data$Z9073100 <= 280.0] <- 261.0
data$Z9073100[281.0 <= data$Z9073100 & data$Z9073100 <= 300.0] <- 281.0
data$Z9073100[301.0 <= data$Z9073100 & data$Z9073100 <= 320.0] <- 301.0
data$Z9073100[321.0 <= data$Z9073100 & data$Z9073100 <= 340.0] <- 321.0
data$Z9073100[341.0 <= data$Z9073100 & data$Z9073100 <= 360.0] <- 341.0
data$Z9073100[361.0 <= data$Z9073100 & data$Z9073100 <= 380.0] <- 361.0
data$Z9073100[381.0 <= data$Z9073100 & data$Z9073100 <= 400.0] <- 381.0
data$Z9073100[401.0 <= data$Z9073100 & data$Z9073100 <= 420.0] <- 401.0
data$Z9073100[421.0 <= data$Z9073100 & data$Z9073100 <= 440.0] <- 421.0
data$Z9073100[441.0 <= data$Z9073100 & data$Z9073100 <= 460.0] <- 441.0
data$Z9073100[461.0 <= data$Z9073100 & data$Z9073100 <= 480.0] <- 461.0
data$Z9073100[481.0 <= data$Z9073100 & data$Z9073100 <= 500.0] <- 481.0
data$Z9073100[501.0 <= data$Z9073100 & data$Z9073100 <= 520.0] <- 501.0
data$Z9073100 <- factor(data$Z9073100,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9073300[0.0 <= data$Z9073300 & data$Z9073300 <= 200.0] <- 0.0
data$Z9073300[201.0 <= data$Z9073300 & data$Z9073300 <= 220.0] <- 201.0
data$Z9073300[221.0 <= data$Z9073300 & data$Z9073300 <= 240.0] <- 221.0
data$Z9073300[241.0 <= data$Z9073300 & data$Z9073300 <= 260.0] <- 241.0
data$Z9073300[261.0 <= data$Z9073300 & data$Z9073300 <= 280.0] <- 261.0
data$Z9073300[281.0 <= data$Z9073300 & data$Z9073300 <= 300.0] <- 281.0
data$Z9073300[301.0 <= data$Z9073300 & data$Z9073300 <= 320.0] <- 301.0
data$Z9073300[321.0 <= data$Z9073300 & data$Z9073300 <= 340.0] <- 321.0
data$Z9073300[341.0 <= data$Z9073300 & data$Z9073300 <= 360.0] <- 341.0
data$Z9073300[361.0 <= data$Z9073300 & data$Z9073300 <= 380.0] <- 361.0
data$Z9073300[381.0 <= data$Z9073300 & data$Z9073300 <= 400.0] <- 381.0
data$Z9073300[401.0 <= data$Z9073300 & data$Z9073300 <= 420.0] <- 401.0
data$Z9073300[421.0 <= data$Z9073300 & data$Z9073300 <= 440.0] <- 421.0
data$Z9073300[441.0 <= data$Z9073300 & data$Z9073300 <= 460.0] <- 441.0
data$Z9073300[461.0 <= data$Z9073300 & data$Z9073300 <= 480.0] <- 461.0
data$Z9073300[481.0 <= data$Z9073300 & data$Z9073300 <= 500.0] <- 481.0
data$Z9073300[501.0 <= data$Z9073300 & data$Z9073300 <= 520.0] <- 501.0
data$Z9073300 <- factor(data$Z9073300,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084000[10.0 <= data$Z9084000 & data$Z9084000 <= 999.0] <- 10.0
data$Z9084000 <- factor(data$Z9084000,
levels=c(0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0),
labels=c("0",
"1",
"2",
"3",
"4",
"5",
"6",
"7",
"8",
"9",
"10 TO 999: 10+"))
data$Z9084100[0.0 <= data$Z9084100 & data$Z9084100 <= 200.0] <- 0.0
data$Z9084100[201.0 <= data$Z9084100 & data$Z9084100 <= 220.0] <- 201.0
data$Z9084100[221.0 <= data$Z9084100 & data$Z9084100 <= 240.0] <- 221.0
data$Z9084100[241.0 <= data$Z9084100 & data$Z9084100 <= 260.0] <- 241.0
data$Z9084100[261.0 <= data$Z9084100 & data$Z9084100 <= 280.0] <- 261.0
data$Z9084100[281.0 <= data$Z9084100 & data$Z9084100 <= 300.0] <- 281.0
data$Z9084100[301.0 <= data$Z9084100 & data$Z9084100 <= 320.0] <- 301.0
data$Z9084100[321.0 <= data$Z9084100 & data$Z9084100 <= 340.0] <- 321.0
data$Z9084100[341.0 <= data$Z9084100 & data$Z9084100 <= 360.0] <- 341.0
data$Z9084100[361.0 <= data$Z9084100 & data$Z9084100 <= 380.0] <- 361.0
data$Z9084100[381.0 <= data$Z9084100 & data$Z9084100 <= 400.0] <- 381.0
data$Z9084100[401.0 <= data$Z9084100 & data$Z9084100 <= 420.0] <- 401.0
data$Z9084100[421.0 <= data$Z9084100 & data$Z9084100 <= 440.0] <- 421.0
data$Z9084100[441.0 <= data$Z9084100 & data$Z9084100 <= 460.0] <- 441.0
data$Z9084100[461.0 <= data$Z9084100 & data$Z9084100 <= 480.0] <- 461.0
data$Z9084100[481.0 <= data$Z9084100 & data$Z9084100 <= 500.0] <- 481.0
data$Z9084100[501.0 <= data$Z9084100 & data$Z9084100 <= 520.0] <- 501.0
data$Z9084100 <- factor(data$Z9084100,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084200[0.0 <= data$Z9084200 & data$Z9084200 <= 200.0] <- 0.0
data$Z9084200[201.0 <= data$Z9084200 & data$Z9084200 <= 220.0] <- 201.0
data$Z9084200[221.0 <= data$Z9084200 & data$Z9084200 <= 240.0] <- 221.0
data$Z9084200[241.0 <= data$Z9084200 & data$Z9084200 <= 260.0] <- 241.0
data$Z9084200[261.0 <= data$Z9084200 & data$Z9084200 <= 280.0] <- 261.0
data$Z9084200[281.0 <= data$Z9084200 & data$Z9084200 <= 300.0] <- 281.0
data$Z9084200[301.0 <= data$Z9084200 & data$Z9084200 <= 320.0] <- 301.0
data$Z9084200[321.0 <= data$Z9084200 & data$Z9084200 <= 340.0] <- 321.0
data$Z9084200[341.0 <= data$Z9084200 & data$Z9084200 <= 360.0] <- 341.0
data$Z9084200[361.0 <= data$Z9084200 & data$Z9084200 <= 380.0] <- 361.0
data$Z9084200[381.0 <= data$Z9084200 & data$Z9084200 <= 400.0] <- 381.0
data$Z9084200[401.0 <= data$Z9084200 & data$Z9084200 <= 420.0] <- 401.0
data$Z9084200[421.0 <= data$Z9084200 & data$Z9084200 <= 440.0] <- 421.0
data$Z9084200[441.0 <= data$Z9084200 & data$Z9084200 <= 460.0] <- 441.0
data$Z9084200[461.0 <= data$Z9084200 & data$Z9084200 <= 480.0] <- 461.0
data$Z9084200[481.0 <= data$Z9084200 & data$Z9084200 <= 500.0] <- 481.0
data$Z9084200[501.0 <= data$Z9084200 & data$Z9084200 <= 520.0] <- 501.0
data$Z9084200 <- factor(data$Z9084200,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084300[0.0 <= data$Z9084300 & data$Z9084300 <= 200.0] <- 0.0
data$Z9084300[201.0 <= data$Z9084300 & data$Z9084300 <= 220.0] <- 201.0
data$Z9084300[221.0 <= data$Z9084300 & data$Z9084300 <= 240.0] <- 221.0
data$Z9084300[241.0 <= data$Z9084300 & data$Z9084300 <= 260.0] <- 241.0
data$Z9084300[261.0 <= data$Z9084300 & data$Z9084300 <= 280.0] <- 261.0
data$Z9084300[281.0 <= data$Z9084300 & data$Z9084300 <= 300.0] <- 281.0
data$Z9084300[301.0 <= data$Z9084300 & data$Z9084300 <= 320.0] <- 301.0
data$Z9084300[321.0 <= data$Z9084300 & data$Z9084300 <= 340.0] <- 321.0
data$Z9084300[341.0 <= data$Z9084300 & data$Z9084300 <= 360.0] <- 341.0
data$Z9084300[361.0 <= data$Z9084300 & data$Z9084300 <= 380.0] <- 361.0
data$Z9084300[381.0 <= data$Z9084300 & data$Z9084300 <= 400.0] <- 381.0
data$Z9084300[401.0 <= data$Z9084300 & data$Z9084300 <= 420.0] <- 401.0
data$Z9084300[421.0 <= data$Z9084300 & data$Z9084300 <= 440.0] <- 421.0
data$Z9084300[441.0 <= data$Z9084300 & data$Z9084300 <= 460.0] <- 441.0
data$Z9084300[461.0 <= data$Z9084300 & data$Z9084300 <= 480.0] <- 461.0
data$Z9084300[481.0 <= data$Z9084300 & data$Z9084300 <= 500.0] <- 481.0
data$Z9084300[501.0 <= data$Z9084300 & data$Z9084300 <= 520.0] <- 501.0
data$Z9084300 <- factor(data$Z9084300,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084400[0.0 <= data$Z9084400 & data$Z9084400 <= 200.0] <- 0.0
data$Z9084400[201.0 <= data$Z9084400 & data$Z9084400 <= 220.0] <- 201.0
data$Z9084400[221.0 <= data$Z9084400 & data$Z9084400 <= 240.0] <- 221.0
data$Z9084400[241.0 <= data$Z9084400 & data$Z9084400 <= 260.0] <- 241.0
data$Z9084400[261.0 <= data$Z9084400 & data$Z9084400 <= 280.0] <- 261.0
data$Z9084400[281.0 <= data$Z9084400 & data$Z9084400 <= 300.0] <- 281.0
data$Z9084400[301.0 <= data$Z9084400 & data$Z9084400 <= 320.0] <- 301.0
data$Z9084400[321.0 <= data$Z9084400 & data$Z9084400 <= 340.0] <- 321.0
data$Z9084400[341.0 <= data$Z9084400 & data$Z9084400 <= 360.0] <- 341.0
data$Z9084400[361.0 <= data$Z9084400 & data$Z9084400 <= 380.0] <- 361.0
data$Z9084400[381.0 <= data$Z9084400 & data$Z9084400 <= 400.0] <- 381.0
data$Z9084400[401.0 <= data$Z9084400 & data$Z9084400 <= 420.0] <- 401.0
data$Z9084400[421.0 <= data$Z9084400 & data$Z9084400 <= 440.0] <- 421.0
data$Z9084400[441.0 <= data$Z9084400 & data$Z9084400 <= 460.0] <- 441.0
data$Z9084400[461.0 <= data$Z9084400 & data$Z9084400 <= 480.0] <- 461.0
data$Z9084400[481.0 <= data$Z9084400 & data$Z9084400 <= 500.0] <- 481.0
data$Z9084400[501.0 <= data$Z9084400 & data$Z9084400 <= 520.0] <- 501.0
data$Z9084400 <- factor(data$Z9084400,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084500[0.0 <= data$Z9084500 & data$Z9084500 <= 200.0] <- 0.0
data$Z9084500[201.0 <= data$Z9084500 & data$Z9084500 <= 220.0] <- 201.0
data$Z9084500[221.0 <= data$Z9084500 & data$Z9084500 <= 240.0] <- 221.0
data$Z9084500[241.0 <= data$Z9084500 & data$Z9084500 <= 260.0] <- 241.0
data$Z9084500[261.0 <= data$Z9084500 & data$Z9084500 <= 280.0] <- 261.0
data$Z9084500[281.0 <= data$Z9084500 & data$Z9084500 <= 300.0] <- 281.0
data$Z9084500[301.0 <= data$Z9084500 & data$Z9084500 <= 320.0] <- 301.0
data$Z9084500[321.0 <= data$Z9084500 & data$Z9084500 <= 340.0] <- 321.0
data$Z9084500[341.0 <= data$Z9084500 & data$Z9084500 <= 360.0] <- 341.0
data$Z9084500[361.0 <= data$Z9084500 & data$Z9084500 <= 380.0] <- 361.0
data$Z9084500[381.0 <= data$Z9084500 & data$Z9084500 <= 400.0] <- 381.0
data$Z9084500[401.0 <= data$Z9084500 & data$Z9084500 <= 420.0] <- 401.0
data$Z9084500[421.0 <= data$Z9084500 & data$Z9084500 <= 440.0] <- 421.0
data$Z9084500[441.0 <= data$Z9084500 & data$Z9084500 <= 460.0] <- 441.0
data$Z9084500[461.0 <= data$Z9084500 & data$Z9084500 <= 480.0] <- 461.0
data$Z9084500[481.0 <= data$Z9084500 & data$Z9084500 <= 500.0] <- 481.0
data$Z9084500[501.0 <= data$Z9084500 & data$Z9084500 <= 520.0] <- 501.0
data$Z9084500 <- factor(data$Z9084500,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084600[0.0 <= data$Z9084600 & data$Z9084600 <= 200.0] <- 0.0
data$Z9084600[201.0 <= data$Z9084600 & data$Z9084600 <= 220.0] <- 201.0
data$Z9084600[221.0 <= data$Z9084600 & data$Z9084600 <= 240.0] <- 221.0
data$Z9084600[241.0 <= data$Z9084600 & data$Z9084600 <= 260.0] <- 241.0
data$Z9084600[261.0 <= data$Z9084600 & data$Z9084600 <= 280.0] <- 261.0
data$Z9084600[281.0 <= data$Z9084600 & data$Z9084600 <= 300.0] <- 281.0
data$Z9084600[301.0 <= data$Z9084600 & data$Z9084600 <= 320.0] <- 301.0
data$Z9084600[321.0 <= data$Z9084600 & data$Z9084600 <= 340.0] <- 321.0
data$Z9084600[341.0 <= data$Z9084600 & data$Z9084600 <= 360.0] <- 341.0
data$Z9084600[361.0 <= data$Z9084600 & data$Z9084600 <= 380.0] <- 361.0
data$Z9084600[381.0 <= data$Z9084600 & data$Z9084600 <= 400.0] <- 381.0
data$Z9084600[401.0 <= data$Z9084600 & data$Z9084600 <= 420.0] <- 401.0
data$Z9084600[421.0 <= data$Z9084600 & data$Z9084600 <= 440.0] <- 421.0
data$Z9084600[441.0 <= data$Z9084600 & data$Z9084600 <= 460.0] <- 441.0
data$Z9084600[461.0 <= data$Z9084600 & data$Z9084600 <= 480.0] <- 461.0
data$Z9084600[481.0 <= data$Z9084600 & data$Z9084600 <= 500.0] <- 481.0
data$Z9084600[501.0 <= data$Z9084600 & data$Z9084600 <= 520.0] <- 501.0
data$Z9084600 <- factor(data$Z9084600,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084700[0.0 <= data$Z9084700 & data$Z9084700 <= 200.0] <- 0.0
data$Z9084700[201.0 <= data$Z9084700 & data$Z9084700 <= 220.0] <- 201.0
data$Z9084700[221.0 <= data$Z9084700 & data$Z9084700 <= 240.0] <- 221.0
data$Z9084700[241.0 <= data$Z9084700 & data$Z9084700 <= 260.0] <- 241.0
data$Z9084700[261.0 <= data$Z9084700 & data$Z9084700 <= 280.0] <- 261.0
data$Z9084700[281.0 <= data$Z9084700 & data$Z9084700 <= 300.0] <- 281.0
data$Z9084700[301.0 <= data$Z9084700 & data$Z9084700 <= 320.0] <- 301.0
data$Z9084700[321.0 <= data$Z9084700 & data$Z9084700 <= 340.0] <- 321.0
data$Z9084700[341.0 <= data$Z9084700 & data$Z9084700 <= 360.0] <- 341.0
data$Z9084700[361.0 <= data$Z9084700 & data$Z9084700 <= 380.0] <- 361.0
data$Z9084700[381.0 <= data$Z9084700 & data$Z9084700 <= 400.0] <- 381.0
data$Z9084700[401.0 <= data$Z9084700 & data$Z9084700 <= 420.0] <- 401.0
data$Z9084700[421.0 <= data$Z9084700 & data$Z9084700 <= 440.0] <- 421.0
data$Z9084700[441.0 <= data$Z9084700 & data$Z9084700 <= 460.0] <- 441.0
data$Z9084700[461.0 <= data$Z9084700 & data$Z9084700 <= 480.0] <- 461.0
data$Z9084700[481.0 <= data$Z9084700 & data$Z9084700 <= 500.0] <- 481.0
data$Z9084700[501.0 <= data$Z9084700 & data$Z9084700 <= 520.0] <- 501.0
data$Z9084700 <- factor(data$Z9084700,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
data$Z9084800[0.0 <= data$Z9084800 & data$Z9084800 <= 200.0] <- 0.0
data$Z9084800[201.0 <= data$Z9084800 & data$Z9084800 <= 220.0] <- 201.0
data$Z9084800[221.0 <= data$Z9084800 & data$Z9084800 <= 240.0] <- 221.0
data$Z9084800[241.0 <= data$Z9084800 & data$Z9084800 <= 260.0] <- 241.0
data$Z9084800[261.0 <= data$Z9084800 & data$Z9084800 <= 280.0] <- 261.0
data$Z9084800[281.0 <= data$Z9084800 & data$Z9084800 <= 300.0] <- 281.0
data$Z9084800[301.0 <= data$Z9084800 & data$Z9084800 <= 320.0] <- 301.0
data$Z9084800[321.0 <= data$Z9084800 & data$Z9084800 <= 340.0] <- 321.0
data$Z9084800[341.0 <= data$Z9084800 & data$Z9084800 <= 360.0] <- 341.0
data$Z9084800[361.0 <= data$Z9084800 & data$Z9084800 <= 380.0] <- 361.0
data$Z9084800[381.0 <= data$Z9084800 & data$Z9084800 <= 400.0] <- 381.0
data$Z9084800[401.0 <= data$Z9084800 & data$Z9084800 <= 420.0] <- 401.0
data$Z9084800[421.0 <= data$Z9084800 & data$Z9084800 <= 440.0] <- 421.0
data$Z9084800[441.0 <= data$Z9084800 & data$Z9084800 <= 460.0] <- 441.0
data$Z9084800[461.0 <= data$Z9084800 & data$Z9084800 <= 480.0] <- 461.0
data$Z9084800[481.0 <= data$Z9084800 & data$Z9084800 <= 500.0] <- 481.0
data$Z9084800[501.0 <= data$Z9084800 & data$Z9084800 <= 520.0] <- 501.0
data$Z9084800 <- factor(data$Z9084800,
levels=c(0.0,201.0,221.0,241.0,261.0,281.0,301.0,321.0,341.0,361.0,381.0,401.0,421.0,441.0,461.0,481.0,501.0),
labels=c("0 TO 200",
"201 TO 220",
"221 TO 240",
"241 TO 260",
"261 TO 280",
"281 TO 300",
"301 TO 320",
"321 TO 340",
"341 TO 360",
"361 TO 380",
"381 TO 400",
"401 TO 420",
"421 TO 440",
"441 TO 460",
"461 TO 480",
"481 TO 500",
"501 TO 520"))
return(data)
}

varlabels <- c("PSTRAN_WEIGHT",
"PSTRAN_ANYDEGREE L1",
"PSTRAN_ANYDEGREE L2",
"PSTRAN_ANYDEGREE L3",
"PSTRAN_ANYDEGREE L4",
"PSTRAN_ANYDEGREE L5",
"PSTRAN_ANYDEGREE L6",
"PSTRAN_ANYDEGREE L7",
"PSTRAN_NUM_DEGREE L1",
"PSTRAN_NUM_DEGREE L2",
"PSTRAN_NUM_DEGREE L3",
"PSTRAN_NUM_DEGREE L4",
"PSTRAN_NUM_DEGREE L5",
"PSTRAN_NUM_DEGREE L6",
"PSTRAN_NUM_DEGREE L7",
"PSTRAN_CREDEARN L1",
"PSTRAN_CREDEARN L2",
"PSTRAN_CREDEARN L3",
"PSTRAN_CREDEARN L4",
"PSTRAN_CREDEARN L5",
"PSTRAN_CREDEARN L6",
"PSTRAN_CREDEARN L7",
"PSTRAN_GPA L1",
"PSTRAN_GPA L2",
"PSTRAN_GPA L3",
"PSTRAN_GPA L4",
"PSTRAN_GPA L5",
"PSTRAN_GPA L6",
"PSTRAN_GPA L7",
"PSTRAN_INSTLEVEL L1",
"PSTRAN_INSTLEVEL L2",
"PSTRAN_INSTLEVEL L3",
"PSTRAN_INSTLEVEL L4",
"PSTRAN_INSTLEVEL L5",
"PSTRAN_INSTLEVEL L6",
"PSTRAN_INSTLEVEL L7",
"PSTRAN_INSTLEVEL L8",
"MAR: IMPUTE FIRST COHAB DATE",
"MAR: IMPUTE FIRST MARRY DATE",
"PUBID - YTH ID CODE 1997",
"HOW RS GENL HEALTH? 1997",
"HEIGHT OF R IN FEET 1997",
"HEIGHT OF R IN INCHES 1997",
"WEIGHT OF R - POUNDS 1997",
"R DESC WEIGHT 1997",
"WHAT R DO ABOUT WEIGHT 1997",
"KEY!SEX (SYMBOL) 1997",
"KEY!BDATE M/Y (SYMBOL) 1997",
"KEY!BDATE M/Y (SYMBOL) 1997",
"HOW IS R HEALTH? 1997",
"CV_INCOME_GROSS_YR 1997",
"CV_HH_INCOME_SOURCE 1997",
"CV_YTH_REL_HH_AGE_12 1997",
"CV_SAMPLE_TYPE 1997",
"KEY!RACE_ETHNICITY (SYMBOL) 1997",
"HOW RS GENERAL HEALTH? 1998",
"RS HEIGHT IN FEET 1998",
"RS HEIGHT IN INCHES 1998",
"RS WEIGHT - POUNDS 1998",
"R DESC WEIGHT 1998",
"WHAT R DO ABOUT WEIGHT 1998",
"CV_INCOME_GROSS_YR 1998",
"CV_HH_SIZE 1998",
"HOW RS GENERAL HEALTH? 1999",
"RS HEIGHT IN FEET 1999",
"RS HEIGHT IN INCHES 1999",
"RS WEIGHT - POUNDS 1999",
"R DESC WEIGHT 1999",
"WHAT R DO ABOUT WEIGHT 1999",
"CV_INCOME_GROSS_YR 1999",
"HOW RS GENERAL HEALTH? 2000",
"RS HEIGHT IN FEET 2000",
"RS HEIGHT IN INCHES 2000",
"RS WEIGHT - POUNDS 2000",
"R DESC WEIGHT 2000",
"WHAT R DO ABOUT WEIGHT 2000",
"CV_INCOME_GROSS_YR 2000",
"HOW RS GENERAL HEALTH? 2001",
"RS HEIGHT IN FEET 2001",
"RS HEIGHT IN INCHES 2001",
"RS WEIGHT 2001",
"R DESC WEIGHT 2001",
"WHAT R DO ABOUT WEIGHT 2001",
"CV_INCOME_GROSS_YR 2001",
"TRANS_GPA HSTR",
"ASVAB_MATH_VERBAL_SCORE_PCT 1999",
"TRANS_STATUS HSTR",
"TRANS CRD GPA OVERALL HSTR",
"TRANS PROB FLAG HSTR",
"R'S HEIGHT (FEET 2002",
"R'S HEIGHT (INCHES) 2002",
"R'S WEIGHT - POUNDS 2002",
"R DESC WEIGHT 2002",
"WHAT R DO ABOUT WEIGHT 2002",
"HOW R'S GENERAL HEALTH? 2002",
"CV_INCOME_GROSS_YR 2002",
"CV_INCOME_GROSS_YR 2003",
"R'S HEIGHT (FEET 2003",
"R'S HEIGHT (INCHES) 2003",
"R'S WEIGHT - POUNDS 2003",
"R DESC WEIGHT 2003",
"WHAT R DO ABOUT WEIGHT 2003",
"HOW R'S GENERAL HEALTH? 2003",
"CV_INCOME_FAMILY 2004",
"R'S HEIGHT - FEET 2004",
"R'S HEIGHT - INCHES 2004",
"R'S WEIGHT - POUNDS 2004",
"R DESC WEIGHT 2004",
"WHAT R DO ABOUT WEIGHT 2004",
"HOW R'S GENERAL HEALTH? 2004",
"CV_INCOME_FAMILY 2005",
"R'S HEIGHT - FEET 2005",
"R'S HEIGHT - INCHES 2005",
"R'S WEIGHT - POUNDS 2005",
"R DESC WEIGHT 2005",
"WHAT R DO ABOUT WEIGHT 2005",
"HOW R'S GENERAL HEALTH? 2005",
"CV_INCOME_FAMILY 2006",
"R'S HEIGHT - FEET 2006",
"R'S HEIGHT - INCHES 2006",
"R'S WEIGHT - POUNDS 2006",
"R DESC WEIGHT 2006",
"WHAT R DO ABOUT WEIGHT 2006",
"HOW R'S GENERAL HEALTH? 2006",
"CV_INCOME_FAMILY 2007",
"R'S HEIGHT - FEET 2007",
"R'S HEIGHT - INCHES 2007",
"R'S WEIGHT - POUNDS 2007",
"R DESC WEIGHT 2007",
"WHAT R DO ABOUT WEIGHT 2007",
"HOW R'S GENERAL HEALTH? 2007",
"CV_INCOME_FAMILY 2008",
"R'S HEIGHT - FEET 2008",
"R'S HEIGHT - INCHES 2008",
"R'S WEIGHT - POUNDS 2008",
"R DESC WEIGHT 2008",
"WHAT R DO ABOUT WEIGHT 2008",
"HOW R'S GENERAL HEALTH? 2008",
"CV_INCOME_FAMILY 2009",
"R'S HEIGHT - FEET 2009",
"R'S HEIGHT - INCHES 2009",
"R'S WEIGHT - POUNDS 2009",
"R DESC WEIGHT 2009",
"WHAT R DO ABOUT WEIGHT 2009",
"HOW R'S GENERAL HEALTH? 2009",
"CV_INCOME_FAMILY 2010",
"R'S HEIGHT - FEET 2010",
"R'S HEIGHT - INCHES 2010",
"R'S WEIGHT - POUNDS 2010",
"R DESC WEIGHT 2010",
"WHAT R DO ABOUT WEIGHT 2010",
"HOW R'S GENERAL HEALTH? 2010",
"CV_INCOME_FAMILY 2011",
"R'S HEIGHT - FEET 2011",
"R'S HEIGHT - INCHES 2011",
"R'S WEIGHT - POUNDS 2011",
"R DESC WEIGHT 2011",
"WHAT R DO ABOUT WEIGHT 2011",
"HOW R'S GENERAL HEALTH? 2011",
"CV_INCOME_FAMILY 2013",
"R'S WEIGHT - POUNDS 2013",
"HOW R'S GENERAL HEALTH? 2013",
"CV_INCOME_FAMILY 2015",
"R'S WEIGHT - POUNDS 2015",
"HOW R'S GENERAL HEALTH? 2015",
"CV_INCOME_FAMILY 2017",
"HOW R'S GENERAL HEALTH? 2017",
"R'S WEIGHT - POUNDS 2017",
"CV_INCOME_FAMILY 2019",
"CV_MARSTAT 2019",
"CV_MARSTAT_COLLAPSED 2019",
"HOW R'S GENERAL HEALTH? 2019",
"R'S WEIGHT - POUNDS 2019",
"CVC_GRADES_REPEAT_EVER_2007",
"CVC_GRADE_SKIPPED_EVER_2007",
"CVC_SAT_MATH_SCORE_2007",
"CVC_SAT_VERBAL_SCORE_2007",
"CVC_ACT_SCORE_2007",
"CVC_TTL_JOB_TEEN",
"CVC_TTL_JOB_ADULT_ET",
"CVC_TTL_JOB_ADULT_ALL",
"CVC_WKSWK_TEEN",
"CVC_WKSWK_ADULT_ET",
"CVC_WKSWK_ADULT_ALL",
"CVC_FIRST_COHAB_MONTH",
"CVC_FIRST_MARRY_MONTH",
"CVC_HGC_EVER",
"CVC_HIGHEST_DEGREE_EVER",
"CVC_SCH_ATTEND_EVER",
"CVC_GED",
"CVC_HS_DIPLOMA",
"CVC_AA_DEGREE",
"CVC_BA_DEGREE",
"CVC_PROF_DEGREE",
"CVC_PHD_DEGREE",
"CVC_MA_DEGREE",
"CVC_HS_LEFT_DATE",
"CVC_HS_LEFT_HGC",
"CVC_HS_LEFT_HGA"
)


# Use qnames rather than rnums

qnames = function(data) {
names(data) <- c("PSTRAN_WEIGHT_PSTR",
"PSTRAN_ANYDEGREE.01_PSTR",
"PSTRAN_ANYDEGREE.02_PSTR",
"PSTRAN_ANYDEGREE.03_PSTR",
"PSTRAN_ANYDEGREE.04_PSTR",
"PSTRAN_ANYDEGREE.05_PSTR",
"PSTRAN_ANYDEGREE.06_PSTR",
"PSTRAN_ANYDEGREE.07_PSTR",
"PSTRAN_NUM_DEGREE.01_PSTR",
"PSTRAN_NUM_DEGREE.02_PSTR",
"PSTRAN_NUM_DEGREE.03_PSTR",
"PSTRAN_NUM_DEGREE.04_PSTR",
"PSTRAN_NUM_DEGREE.05_PSTR",
"PSTRAN_NUM_DEGREE.06_PSTR",
"PSTRAN_NUM_DEGREE.07_PSTR",
"PSTRAN_CREDEARN.01_PSTR",
"PSTRAN_CREDEARN.02_PSTR",
"PSTRAN_CREDEARN.03_PSTR",
"PSTRAN_CREDEARN.04_PSTR",
"PSTRAN_CREDEARN.05_PSTR",
"PSTRAN_CREDEARN.06_PSTR",
"PSTRAN_CREDEARN.07_PSTR",
"PSTRAN_GPA.01_PSTR",
"PSTRAN_GPA.02_PSTR",
"PSTRAN_GPA.03_PSTR",
"PSTRAN_GPA.04_PSTR",
"PSTRAN_GPA.05_PSTR",
"PSTRAN_GPA.06_PSTR",
"PSTRAN_GPA.07_PSTR",
"PSTRAN_INSTLEVEL.01_PSTR",
"PSTRAN_INSTLEVEL.02_PSTR",
"PSTRAN_INSTLEVEL.03_PSTR",
"PSTRAN_INSTLEVEL.04_PSTR",
"PSTRAN_INSTLEVEL.05_PSTR",
"PSTRAN_INSTLEVEL.06_PSTR",
"PSTRAN_INSTLEVEL.07_PSTR",
"PSTRAN_INSTLEVEL.08_PSTR",
"MAR_IMPUTE_FIRST_COHAB_XRND",
"MAR_IMPUTE_FIRST_MARRY_XRND",
"PUBID_1997",
"YHEA-100_1997",
"YHEA-2000_1997",
"YHEA-2100_1997",
"YHEA-2200_1997",
"YSAQ-373_1997",
"YSAQ-374_1997",
"KEY_SEX_1997",
"KEY_BDATE_M_1997",
"KEY_BDATE_Y_1997",
"PC9-001_1997",
"CV_INCOME_GROSS_YR_1997",
"CV_HH_INCOME_SOURCE_1997",
"CV_YTH_REL_HH_AGE_12_1997",
"CV_SAMPLE_TYPE_1997",
"KEY_RACE_ETHNICITY_1997",
"YHEA-100_1998",
"YHEA-2050_1998",
"YHEA-2100_1998",
"YHEA-2300_1998",
"YSAQ-373_1998",
"YSAQ-374_1998",
"CV_INCOME_GROSS_YR_1998",
"CV_HH_SIZE_1998",
"YHEA-100_1999",
"YHEA-2050_1999",
"YHEA-2100_1999",
"YHEA-2300_1999",
"YSAQ-373_1999",
"YSAQ-374_1999",
"CV_INCOME_GROSS_YR_1999",
"YHEA-100_2000",
"YHEA-2050_2000",
"YHEA-2100_2000",
"YHEA-2300_2000",
"YSAQ-373_2000",
"YSAQ-374_2000",
"CV_INCOME_GROSS_YR_2000",
"YHEA-100_2001",
"YHEA-2050_2001",
"YHEA-2100_2001",
"YHEA-2300_2001",
"YSAQ-373_2001",
"YSAQ-374_2001",
"CV_INCOME_GROSS_YR_2001",
"TRANS_GPA_HSTR",
"ASVAB_MATH_VERBAL_SCORE_PCT_1999",
"TRANS_STATUS_HSTR",
"TRANS_CRD_GPA_OVERALL_HSTR",
"TRANS_PROBFLAG_HSTR",
"YSAQ-000A~000001_2002",
"YSAQ-000A~000002_2002",
"YSAQ-000B_2002",
"YSAQ-373_2002",
"YSAQ-374_2002",
"YHEA-100_2002",
"CV_INCOME_GROSS_YR_2002",
"CV_INCOME_GROSS_YR_2003",
"YSAQ-000A~000001_2003",
"YSAQ-000A~000002_2003",
"YSAQ-000B_2003",
"YSAQ-373_2003",
"YSAQ-374_2003",
"YHEA-100_2003",
"CV_INCOME_FAMILY_2004",
"YSAQ-000A000001_2004",
"YSAQ-000A000002_2004",
"YSAQ-000B_2004",
"YSAQ-373_2004",
"YSAQ-374_2004",
"YHEA-100_2004",
"CV_INCOME_FAMILY_2005",
"YSAQ-000A000001_2005",
"YSAQ-000A000002_2005",
"YSAQ-000B_2005",
"YSAQ-373_2005",
"YSAQ-374_2005",
"YHEA-100_2005",
"CV_INCOME_FAMILY_2006",
"YSAQ-000A000001_2006",
"YSAQ-000A000002_2006",
"YSAQ-000B_2006",
"YSAQ-373_2006",
"YSAQ-374_2006",
"YHEA-100_2006",
"CV_INCOME_FAMILY_2007",
"YSAQ-000A000001_2007",
"YSAQ-000A000002_2007",
"YSAQ-000B_2007",
"YSAQ-373_2007",
"YSAQ-374_2007",
"YHEA-100_2007",
"CV_INCOME_FAMILY_2008",
"YSAQ-000A000001_2008",
"YSAQ-000A000002_2008",
"YSAQ-000B_2008",
"YSAQ-373_2008",
"YSAQ-374_2008",
"YHEA-100_2008",
"CV_INCOME_FAMILY_2009",
"YSAQ-000A000001_2009",
"YSAQ-000A000002_2009",
"YSAQ-000B_2009",
"YSAQ-373_2009",
"YSAQ-374_2009",
"YHEA-100_2009",
"CV_INCOME_FAMILY_2010",
"YSAQ-000A000001_2010",
"YSAQ-000A000002_2010",
"YSAQ-000B_2010",
"YSAQ-373_2010",
"YSAQ-374_2010",
"YHEA-100_2010",
"CV_INCOME_FAMILY_2011",
"YSAQ-000A000001_2011",
"YSAQ-000A000002_2011",
"YSAQ-000B_2011",
"YSAQ-373_2011",
"YSAQ-374_2011",
"YHEA-100_2011",
"CV_INCOME_FAMILY_2013",
"YSAQ-000B_2013",
"YHEA-100_2013",
"CV_INCOME_FAMILY_2015",
"YSAQ-000B_2015",
"YHEA-100_2015",
"CV_INCOME_FAMILY_2017",
"YHEA-100_2017",
"YHEA-SAQ-000B_2017",
"CV_INCOME_FAMILY_2019",
"CV_MARSTAT_2019",
"CV_MARSTAT_COLLAPSED_2019",
"YHEA-100_2019",
"YHEA-SAQ-000B_2019",
"CVC_GRADES_REPEAT_EVER_2007_XRND",
"CVC_GRADE_SKIPPED_EVER_2007_XRND",
"CVC_SAT_MATH_SCORE_2007_XRND",
"CVC_SAT_VERBAL_SCORE_2007_XRND",
"CVC_ACT_SCORE_2007_XRND",
"CVC_TTL_JOB_TEEN2_XRND",
"CVC_TTL_JOB_ADULT2_ET_XRND",
"CVC_TTL_JOB_ADULT2_ALL_XRND",
"CVC_WKSWK_TEEN2_XRND",
"CVC_WKSWK_ADULT2_ET_XRND",
"CVC_WKSWK_ADULT2_ALL_XRND",
"CVC_FIRST_COHAB_MONTH_XRND",
"CVC_FIRST_MARRY_MONTH_XRND",
"CVC_HGC_EVER_XRND",
"CVC_HIGHEST_DEGREE_EVER_XRND",
"CVC_SCH_ATTEND_EVER_XRND",
"CVC_GED_XRND",
"CVC_HS_DIPLOMA_XRND",
"CVC_AA_DEGREE_XRND",
"CVC_BA_DEGREE_XRND",
"CVC_PROF_DEGREE_XRND",
"CVC_PHD_DEGREE_XRND",
"CVC_MA_DEGREE_XRND",
"CVC_HS_LEFT_DATE_XRND",
"CVC_HS_LEFT_HGC_XRND",
"CVC_HS_LEFT_HGA_XRND")
return(data)
}


#********************************************************************************************************

# Remove the '#' before the following line to create a data file called "categories" with value labels.
#categories <- vallabels(new_data)

# Remove the '#' before the following lines to rename variables using Qnames instead of Reference Numbers
new_data <- qnames(new_data)
#categories <- qnames(categories)

# Produce summaries for the raw (uncategorized) data file
summary(new_data)

# Remove the '#' before the following lines to produce summaries for the "categories" data file.
#categories <- vallabels(new_data)
#categories <- vallabels_continuous(new_data)
#summary(categories)

#************************************************************************************************************

saveRDS(new_data, file = "Data/new_data.Rds")

