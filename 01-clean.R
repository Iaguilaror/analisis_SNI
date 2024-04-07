# cargar paquetes
pacman::p_load( "vroom", "dplyr" )

# leer la data
la_data <- vroom( file = "data/data_original.csv" )

# nos quedamos solo con DR. y DRA.
data_filtrada <- la_data %>%
  filter( nobilis == "DR." | nobilis == "DRA." )

# creamos un directorio de resultados
dir.create( path = "results" )

# guardar esta data
write.csv( x = data_filtrada, file = "results/limpia.csv" )
