#' Setting up the package dartR.popgenomics
#'
#' Setting up dartR.popgenomics
#' @importFrom crayon blue
#' @importFrom utils packageVersion read.csv read.delim read.table write.csv write.table
#' @importFrom methods getPackageName is new
#' @importFrom grDevices rainbow hcl
#' @importFrom graphics lines par
#' @importFrom stats ave pchisq var variable.names complete.cases
#' @import adegenet
#' @import dartR.base
#' @import ggplot2
#' @import stringr
#' @import data.table
#' @importFrom dplyr "%>%" arrange bind_rows everything group_by mutate mutate_all mutate_at n n_distinct rename select starts_with ungroup vars

#' @keywords internal


#needed to avoid error
zzz<-NULL


build = "Jody"
error <- crayon::red
warn <- crayon::yellow
report <- crayon::green
important <- crayon::blue
code <- crayon::cyan

# SET PLOTS COLORS [do not like it much, but fine for the interim]

# function to replicate defaults colors of ggplot
discrete_palette <- function(n) {
  hues <-seq(15, 375, length = n + 1)
  return(hcl(h = hues, l = 65, c = 100)[1:n])
}

# taken from wes_palette::Zissou1
diverging_palette <-
  colorRampPalette(c("#3B9AB2", "#78B7C5", "#EBCC2A", "#E1AF00", "#F21A00"))
# creating convergent to 0 palette
cool <-
  rainbow(50, start = rgb2hsv(col2rgb("cyan"))[1], end = rgb2hsv(col2rgb("blue"))[1])
warm <-
  rainbow(50, start = rgb2hsv(col2rgb("red"))[1], end = rgb2hsv(col2rgb("yellow"))[1])
cols <- c(rev(cool), rev(warm))
convergent_palette <- colorRampPalette(cols)
# taken from adegenet
viridis_palette <-
  colorRampPalette(
    c(
      "#440154FF",
      "#482173FF",
      "#433E85FF",
      "#38598CFF",
      "#2D708EFF",
      "#25858EFF",
      "#1E9B8AFF",
      "#2BB07FFF",
      "#51C56AFF",
      "#85D54AFF",
      "#C2DF23FF",
      "#FDE725FF"
    )
  )
two_colors <- c("#3B9AB2", "#78B7C5")
two_colors_contrast <- c("deeppink", "chartreuse3")
three_colors <- c("#3B9AB2", "deeppink", "lemonchiffon")
four_colors <- c("lemonchiffon", "deeppink", "dodgerblue", "chartreuse3")
# taken from package pals palette polychrome
structure_colors <- cols <-  c( "#E4E1E3", "#F6222E", "#FE00FA", "#16FF32", 
                                "#3283FE", "#FEAF16", "#B00068", "#1CFFCE", "#90AD1C", 
                                "#2ED9FF", "#DEA0FD", "#AA0DFE", "#F8A19F", "#325A9B", 
                                "#C4451C", "#1C8356", "#85660D", "#B10DA1", "#FBE426", 
                                "#1CBE4F", "#FA0087", "#FC1CBF", "#F7E1A0", "#C075A6", 
                                "#782AB6", "#AAF400", "#BDCDFF", "#822E1C", "#B5EFB5", 
                                "#7ED7D1", "#1C7F93", "#D85FF7", "#683B79", "#66B0FF", 
                                "#3B00FB")


# WELCOME MESSAGE
.onAttach <- function(...) {
  pn <- getPackageName()
  packageStartupMessage(important(
    paste(
      "**** Welcome to",pn,"[Version",
      packageVersion(pn),
      "] ****\n"
    )
  ))
}

