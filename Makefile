all: data/languages/NMOS-II-bpc.sla data/languages/NMOS-II-hybrid.sla test

data/languages/NMOS-II-hybrid.sla: data/languages/NMOS-II-hybrid.slaspec data/languages/NMOS-II.sinc 
	/abuild/projects/Ghidra/ghidra/Ghidra/Features/Decompiler/src/decompile/cpp/sleigh_dbg $<
	sleigh $< $@

data/languages/NMOS-II-bpc.sla: data/languages/NMOS-II-bpc.slaspec data/languages/NMOS-II.sinc 
	/abuild/projects/Ghidra/ghidra/Ghidra/Features/Decompiler/src/decompile/cpp/sleigh_dbg $<
	sleigh $< $@

test:
	make -C tests

clean:
	rm -rf NMOS-II/data/languages/NMOS-II.sla
	make -C tests clean
