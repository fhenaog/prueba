library(readxl)
Hosp <- read_excel("Eafit/5to semestre/Mode 5/Datos de Entrada/DatosHospitalDescriptiva.xlsx")
tev=Hosp$`Tiempo Evaluación  (minutos)`
triage=Hosp$TriageNum
boxplot(tev~triage, data=Hosp)
kruskal.test(tev~triage, data=Hosp)
doctorev=Hosp$`Doctor Evaluación`
boxplot(tev~doctorev, data=Hosp)
kruskal.test(tev~doctorev, data=Hosp)
