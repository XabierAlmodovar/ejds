setwd("C:/1º BData/ejds/ejds/ejds")
dir()

library(readxl)
df<-read_xlsx("online_retail_II.xlsx")

str(df)
df$`Customer ID`<-as.character(df$`Customer ID`)

library(naniar)
miss_var_summary(df) # 20% en descripcion pero tampoco es tan importante
miss_case_summary(df) # como mucho un 25%, siendo descripcion 1 de los 2 misses --> no borramos

str(df)
length(unique(df$Invoice)) # 28816 factutas unicas

