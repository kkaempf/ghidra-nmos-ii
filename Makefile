all: data/languages/NMOS-II.sla test

data/languages/NMOS-II.sla: data/languages/NMOS-II.slaspec 
	/abuild/projects/Ghidra/ghidra/Ghidra/Features/Decompiler/src/decompile/cpp/sleigh_dbg $^
	sleigh $^ $@

test:
	make -C tests

clean:
	rm -rf NMOS-II/data/languages/NMOS-II.sla
	make -C tests clean
