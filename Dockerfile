FROM rocker/tidyverse
COPY packages.R /home/rstudio/packages.R
RUN R -q -e "source('/home/rstudio/packages.R')"
RUN rm -rf /tmp/* 
RUN strip /usr/local/lib/R/site-library/*/libs/*.so
