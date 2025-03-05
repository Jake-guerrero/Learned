#Metrics

# example_matrix = matrix(data=1:4, nrow=10, ncol=4)
# example_matrix

# example_matrix_2 = array(data=1:4, dim=c(10,4))
# example_matrix = example_matrix_2

# class(example_matrix)
# dim(example_matrix)
# nrow(example_matrix)
# ncol(example_matrix)

# example_matrix_1 = matrix(1:4, nrow=2, ncol=2)
# example_matrix_2 = matrix(200:205, nrow=2, ncol=2)

# example_matrix_1
# example_matrix_2

# example_matrix_1*example_matrix_2

# example_matrix_1+example_matrix_2

# matrix_1 = matrix(1:6, nrow=2, ncol=3, byrow=TRUE)
# matrix_2 = matrix(7:12, nrow=2, ncol=3, byrow=TRUE)

# dim(matrix_1)
# dim(matrix_2)

# matrix_1
# matrix_2
# matrix_1*matrix_2

# matrix(c(0,1,1,1,0,2,1,1), nrow=2, ncol=4, byrow=TRUE)




# Create a matrix with 5 rows and three columns 
# named pokemons
# Feed the following data: 
# c(120, 100, 40, 50, 80, 36, 40, 10, 25, 30,
# 3, 1, 1, 1, 2)
# Leave the default byrow argument

data = c(120,100,40,50,60,36,40,10,25,30,3,1,1,1,2)

pokemon = matrix(data, nrow=5, ncol=3)
rownames(pokemon) = c('Blastoise','Moltres','Pikachu','Pidgey','Charmeleon')
colnames(pokemon) = c('HP','Level','Stage')

# Rename our row names as "Blastoise", "Moltres", "Pikachu", "Pidgey"
# and Charmeleon and our columns as "HP", "Level", "Stage"

# Create a new pokemon in a single row matrix - this pokemon should 
# be Dragonite with 150 HP, level 50 and stage 3 
# store it in an object named dragonite

# hint: don't forget the dimnames!
dragonite = matrix(c(150,50,3),nrow=1,ncol=3)
rownames(dragonite) = 'Dragonite'
colnames(dragonite) = c('HP','Level','Stage')

# Add dragonite to our pokemons matrix - 
# write the new object in a full_pokemons named 
# variable

# Hint: rbind might come in handy...

full_pokemons = rbind(pokemon,dragonite)

# Calculate the difference between Dragonite HP 
# and Pikachu HP - store it in an object named
# dif_hp 

dif_hp = full_pokemons['Dragonite','HP']-full_pokemons['Pikachu','HP']

# Create an object called attack_power where you multiply the HP by
# the level and the stage of each Pokemon in a new variable

attack_power = full_pokemons[,'HP']*full_pokemons[,'Level']*full_pokemons[,'Stage']

# Add the attack power to the full_pokemons matrix, store it in an object
# called full_pokemons_attack_pwr

# Hint: cbind might come in handy!

full_pokemons_attack_pwr = cbind(full_pokemons,attack_power=attack_power)

# Check which pokemons has the lowest attack power 
# store it in a variable called low_attack_pkmn

# Hint: which might come in handy!

low_attack_pkmn = rownames(full_pokemons)[which.min(full_pokemons_attack_pwr$attack_power)]

# Create the following matrix in R: 
# [1, 0, 0, 0]
# [0, 1, 0, 0]
# [0, 0, 1, 0]
# [0, 0, 0, 1]

# Store the object in a identity_matrix object 

identity_matrix = = diag(4)

# Create a matrix of 10 rows and 4 columns 
# called log_values with the logarithm 
# with the following vector as input: 
# 1:5 

# apply the logarithm to every element of the matrix

log_values = matrix(log(1:5),nrow=10,ncol=4,byrow=TRUE)

# Compute the dot product between identity_matrix 
# and log_values 

# Hint: One of the matrixes must come first in the 
# calculation!
# save the returning object in a dot_log object

dot_log = identity_matrix*log_values