# Fill here the code to estimate the linear_model3 from the notebook

db_int <- db_int %>% filter(m1_std_residuals<2 & m1_std_residuals>-2 )

linear_model3<- lm(
  totalHoursWorked ~ ofic_ingLab + nmenores  +  nmenores*gender
                                 + H_Head + age + gender,
  data=db_int)
