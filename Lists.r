#Lists

# vector = c(1,2,"3")
# typeof(vector)
# my_list = list(1, 2, "3")
# typeof(my_list)

# multi_object = list(
#     c(1,2,3),
#     array(1:4, dim=c(2,2)),
#     c(TRUE, FALSE)
# )

# names(multi_object) = c('Vector', 'Array', 'Logical')

# length(multi_object)
# str(multi_object)

# multi_object = list(
#     "Vector" = c(1,2,3),
#     "Array" = array(1:4, dim=c(2,2)),
#     "Logical" = c(TRUE, FALSE)
# )

# names(multi_object)

# multi_object[[1]][1]

# multi_object[[2]][2,2]
# multi_object[c(2,2)]
# multi_object[['Vector']]


# example_list = list(c('a','b','c'), array(1:10, dim=c(2,5)))
# example_list[[3]] = c(1,2,3)
# # example_list[[2]] = TRUE
# # example_list[[10]] <- c(8,9,10)
# # example_list
# example_list[[3]] <- NULL
# example_list

my_list_1 <- list(c(1,2), "A")
my_list_2 <- list(c(10,11), matrix(1:10, nrow=5, ncol=2))
my_list_1
my_list_2
concat_list <- c(my_list_1,my_list_2)
concat_list