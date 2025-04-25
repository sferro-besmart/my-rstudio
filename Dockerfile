#Actualizado al 202503
# la imagen rocker/ml fue deprecada!
FROM rocker/tidyverse:4.4.3
# Agregué libxt6 de acuerdoa a:
# https://notes.rmhogervorst.nl/post/2020/09/23/solving-libxt-so-6-cannot-open-shared-object-in-grdevices-grsoftversion/
RUN apt-get update && apt-get install -y  libxt6 git-core libcurl4-openssl-dev libgit2-dev libicu-dev libsecret-1-dev libsodium-dev libssl-dev libxml2-dev lsof make pandoc unixodbc-dev xclip zlib1g-dev && rm -rf /var/lib/apt/lists/*
RUN echo "options(repos = c(CRAN = 'https://cran.rstudio.com/'), download.file.method = 'libcurl', Ncpus = 4)" >> /usr/local/lib/R/etc/Rprofile.site
RUN install2.r --error --skipinstalled --ncpus -1 \
assertthat \
attempt \
broom \
config \
dplyr \
DT \
forcats \
fs \
ggplot2 \
glue \
gt \
gtExtras \
gtsummary \
htmltools \
keyring \
knitr \
listviewer \
lobstr \
magrittr \
markdown \
odbc \
openxlsx \
pkgload \
png \
plotly \
plumber \
plyr \
processx \
purrr \
readr \
readxl \
reticulate \
rlang \
rmarkdown \
rsample \
scales \
shiny \
shinyauthr \
shinyjs \
skimr \
spelling \
stringr \
testthat \
tibble \
tidyr \
tidymodels \
vctrs \
vroom \
yardstick \ 
# plotly y ggiraph added in 10.1.5 version
ggiraph \ 
# To plot coefficients. 
# from gtsummary. https://www.danieldsjoberg.com/gtsummary/reference/plot.html
GGally \
ggstance \
# https://jtools.jacob-long.com/
jtools \
broom.mixed \ 
broom.helpers \
# for Spearman weighted correlation
wCorr \ 
monotone \ 
quarto \
DiagrammeR \
# for rendering HTML equations
katex \
# Already included in former dependencies.  Just in case. 
diffobj \

