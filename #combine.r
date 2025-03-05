#combine

my_array_1 = array(1:4, dim=c(2,2))

my_array_2 = array(10:14, dim=c(2,2))

dim(rbind(my_array_1, my_array_2))

cbind(my_array_1, my_array_2)

#The number of columns, when combining, must match for each array. They cannot be two separate columns, like one has 2 while another has 4.

