g ?= ""
gt ?= ""
FILE ?= nome2.port

zip: clear
	@rm portugol.zip
	@zip -rv portugol.zip $(FILE)
	@unzip -l portugol.zip
	echo ""

clear:
	clear
	@ls --color=always -alh
	@echo ""

git: add
	@git push
	@echo ""

add:
ifeq ($(gt),)
	@git add .
	@git commit -m "$(g)"
	@echo ""
else
	@git add .
	@git commit -m "$(g)" -m "$(gt)"
	@echo ""
endif
