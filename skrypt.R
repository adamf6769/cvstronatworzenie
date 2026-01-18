install.packages("workflowr")
library(workflowr)

wflow_start(directory = ".",
            name = "cvstronatworzenie",
            existing = TRUE)

file.exists("analysis/analiza.Rmd")
file.exists("data/gpu_dane.csv")
readLines("analysis/analiza.Rmd", n = 10, encoding = "UTF-8")
wflow_build()

wflow_view()

#Pierwsze stworzenie prezentacji Quarto
# install.packages("quarto")
# file.create("analysis/prezentacja.qmd")
# file.edit("analysis/prezentacja.qmd")



#"Odświeżenie" prezentacji
# quarto::quarto_render("analysis/prezentacja.qmd")
# file.copy("analysis/prezentacja.html",
#           "docs/prezentacja.html",
#           overwrite = TRUE)


wflow_status()

wflow_publish(all = TRUE, republish = TRUE,
              message = "Fixing")




