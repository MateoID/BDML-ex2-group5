db_int<-db_int %>% mutate(m1_std_residuals = studres(linear_model))

db_int <- db_int %>% filter(m1_std_residuals < 2 & m1_std_residuals > -2)

linear_model3<- lm(
  totalHoursWorked ~ ofic_ingLab + nmenores  +  nmenores*gender
                                 + H_Head + age + gender,
  data=db_int)
