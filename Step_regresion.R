library(readxl)

# Cargar los datos desde el archivo .xlsx 
datos <- read_excel("base_datos.xlsx")

# Ajustar Modelo inicial
modelo_inicial <- lm(variable_dependiente ~ variable_independiente1 + 
                       variable_independiente2 + variable_independiente3 +
                       variable_independiente4 + variable_independiente5,
                     data = datos)

# Resumen del modelo inicial
summary(modelo_inicial)

# Aplicar selección de variables paso a paso
modelo_step <- step(object = modelo_inicial, direction = "both", trace = 1)

# Resumen del modelo final después de la selección de variables
summary(modelo_step)
