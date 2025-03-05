#DataFrames

countries_data = data.frame( 
    country = c('Italy', 'Germany', 'Greece'),
    population = c(10280000, 66990000, 66650000),
    EU = c(TRUE, TRUE, FALSE),
    row.names = c('Italy', 'Germany', 'Greece'),
    stringsAsFactors = FALSE
)

countries_data

spain_data = data.frame(
    country = c('Spain'),
    population= c(46754778),
    EU = c(TRUE),
    stringsAsFactors = FALSE
)

spain_data

countries_data = rbind(countries_data,spain_data)

capitals = c('Rome', 'Berlin', 'Athens', 'Madrid')
countries_data = cbind(countries_data, capitals, stringsAsFactors=FALSE)
str(countries_data)

countries_data[,'capitals']

countries_data = countries_data[-4,]

countries_data[, 'EU'] = NULL

# class(countries_data)
# typeof(countries_data)

# # Indexing

# countries_data[1,]

# countries_data[c('Italy','Greece'),]