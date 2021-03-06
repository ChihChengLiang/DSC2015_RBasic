library("swirl")
library("swirlify")
library("rmarkdown")

setwd("~/Documents/R_scripts/DSC2015/RBasic/")
# new_lesson("Learn_Swirl", "DSC2015")
# new_lesson("R_Basic_Part_0-The_Basics", "DSC2015")
# new_lesson("RBasic_Part_1-Simple_Data_Analysis", "DSC2015")
# new_lesson("RBasic_Part_2-Data_Structure_in_R", "DSC2015")
# new_lesson("R_Basic_Part_3-Function", "DSC2015")
# new_lesson("R_Basic_Part_4-Control_Flow_and_Exception_Handling", "DSC2015")
# set_lesson("RBasic/Learn_Swirl/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_0-The_Basics/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_1-Simple_Data_Analysis/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_2-Data_Structure_in_R/lesson.yaml")
# set_lesson("RBasic/R_Basic_Part_3-Control_Flow/lesson.yaml")

rm(list=ls())
uninstall_course("DSC2015")
install_course_directory("DSC2015")
system("zip -r DSC2015.zip DSC2015")
delete_progress("dboy")
swirl()

## Reset swirl
set_swirl_options(courses_dir = NULL)
swirl2html() # testing
getOption('courses_dir')

library("devtools")
devtools::install_github("swirl", "wush978")

# Slides

setwd("~/Documents/R_scripts/DSC2015/RBasic/slides/")
## Dboy
render("~/Documents/R_scripts/DSC2015/RBasic/slides/dboy.Rmd", 
       output_file = "RBasic0.html",
       output_format = "ioslides_presentation")

render("~/Documents/R_scripts/DSC2015/RBasic/slides/dboy.Rmd", 
       output_file = "RBasic0.html",
       output_format = "slidy_presentation")

## Ning
render("~/Documents/R_scripts/DSC2015/RBasic/slides/RBasic1.Rmd", 
       output_file = "RBasic1.html",
       output_format = "ioslides_presentation")

render("~/Documents/R_scripts/DSC2015/RBasic/slides/Ning_RBasic1.Rmd", 
       output_file = "Ning_RBasic1.html",
       output_format = "revealjs::revealjs_presentation")

## Noah
render("~/Documents/R_scripts/DSC2015/RBasic/slides/noah.Rmd", 
       output_file = "RBasic2.html",
       output_format = "ioslides_presentation")
