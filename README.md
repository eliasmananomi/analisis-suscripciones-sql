Análisis de Suscripciones SQL


Descripción 
Este proyecto consiste en un análisis de métricas de negocio para un modelo de servicios basado en suscripciones. Busqué transformar datos brutos enKPIs que faciliten la toma de decisiones estratégicas sobre los planes ofrecidos.

Desafío del Negocio
El objetivo principal es responder a las siguientes preguntas críticas:

¿Cuál es el volumen de clientes únicos atraídos por cada plan?

¿Qué ingresos totales genera cada segmento de suscripción?

¿Cuál es el valor promedio de vida del cliente (LTV) inicial y la retención temporal (meses promedio)?

Implementación Técnica
La consulta principal emplea Common Table Expressions para mejorar la legibilidad y modularidad del código. Realicé conversiones de tipos de datos (CAST) para asegurar cálculos precisos sobre duraciones y precios, seguidos de funciones de agregación y redondeo para una presentación limpia de los resultados.

![Estructura del Proyecto](mapa-proceso.svg)

Resultados Obtenidos
Obtuve un reporte ordenado por ingresos, permitiendo identificar:

Los planes con mayor tracción comercial.
La relación entre la duración de la suscripción y el ticket promedio.
Desviaciones en el comportamiento de compra entre distintos niveles de suscripción.
