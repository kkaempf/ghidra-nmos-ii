all: data/languages/NMOS-II-bpc.sla data/languages/NMOS-II-hybrid.sla test

data/languages/NMOS-II-hybrid.sla: data/languages/NMOS-II-hybrid.slaspec data/languages/NMOS-II.sinc data/languages/NMOS-II.ldefs data/languages/NMOS-II.cspec 
	sleigh $< $@

data/languages/NMOS-II-bpc.sla: data/languages/NMOS-II-bpc.slaspec data/languages/NMOS-II.sinc data/languages/NMOS-II.ldefs data/languages/NMOS-II.cspec 
	sleigh $< $@

test:
	make -C tests

clean:
	rm -rf data/languages/*.sla
	make -C tests clean
