# Fill here the code to estimate the linear_model3 from the notebook
linear_model3<- lm(
  totalHoursWorked ~ ofic_ingLab + nmenores  +  nmenores*gender
                                 + H_Head + age + gender,
  data=db_int)
