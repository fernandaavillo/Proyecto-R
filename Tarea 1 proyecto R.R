install.packages("ggplot2")
install.packages("dplyr")
library(ggplot2)
library(dplyr)
# Descripción de la idea: Generar una planilla con las fórmulas matemáticas necesarias para valorizar un derivado, importando un excel con datos para la curva con datos de bloomberg


# Tareas y fechas
tareas <- data.frame(
  tareas = c("Definición de la idea", "Desarrollo", "Presentación"),
  inicio = as.Date(c("2024-09-09", "2024-09-15", "2024-10-07")),
  fin = as.Date(c("2024-09-15", "2024-10-07", "2024-10-10"))
)

# Ver el conjunto de datos
print(tareas)
# Crear el gráfico de Gantt
ggplot(tasks, aes(x = start, xend = end, y = task, yend = task)) +
  geom_segment(size = 6, color = "steelblue") +
  scale_x_date(date_labels = "%b %d", date_breaks = "1 day") +
  theme_minimal() +
  labs(title = "Carta Gantt de Proyecto Final R",
       x = "Fecha",
       y = "Tarea") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
