# `make` is expected to be called from the directory that contains 
# `Makefile`
$(eval PKG_NAME := $(shell Rscript -e "cat(basename(dirname(getwd())))"))

build: desc
	@echo Building package: \"$(PKG_NAME)\"
	@Rscript -e 'library(devtools)' -e 'install_deps(".")'
	@R CMD INSTALL --no-multiarch --with-keep.source .

test:
	@echo $(shell env)


desc: DESCRIPTION.tpl
	@echo "Generating \"DESCRIPTION\" from \"DESCRIPTION.tpl\""
	@echo "Vantage-Comment:" > DESCRIPTION
	@echo "    ************************************************" >> DESCRIPTION
	@echo "    * This file was generated from DESCRIPTION.tpl *" >> DESCRIPTION
	@echo "    * Please don't modify it directly!             *" >> DESCRIPTION
	@echo "    ************************************************" >> DESCRIPTION
	@sed "s/{{PKG_NAME}}/${PKG_NAME}/g" DESCRIPTION.tpl >> DESCRIPTION

document:
	Rscript -e "devtools::document(roclets=c('rd', 'collate', 'namespace', 'vignette'))"
