all: day.vo day.cmo ex1.vo foo.cmo lexical_analysis.vo lex.cmo

day.vo day.mli day.ml: day.v
	coqc day.v

day.cmo: day.mli day.ml
	ocamlc day.mli day.ml

MyExtraction.vo: MyExtraction.v
	coqc MyExtraction.v

ex1.vo foo.mli foo.ml: MyExtraction.vo ex1.v
	coqc ex1.v

foo.cmo: foo.mli foo.ml
	ocamlc foo.mli foo.ml

lexical_analysis.vo lex.mli lex.ml: MyExtraction.vo lexical_analysis.v
	coqc lexical_analysis.v

lex.cmo: lex.mli lex.ml
	ocamlc lex.mli lex.ml

.PHONY: doc
doc:
	coqdoc -d doc day.v ex1.v lexical_analysis.v

.PHONY: clean
clean:
	rm -f a.out *.ml *.mli .*.aux *.cmi *.cmo *.cmx *.glob *.vo *.vok *.vos
