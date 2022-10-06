FROM rocker/verse
COPY packages.R /home/rstudio/packages.R
RUN R -q -e "source('/home/rstudio/packages.R')" \
	&& rm -rf /tmp/* \
	&& strip /usr/local/lib/R/site-library/*/libs/*.so
