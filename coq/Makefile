all: day.vo day.cmo ex1.vo foo.cmo

day.vo day.mli day.ml: day.v
	coqc day.v

day.cmo: day.mli day.ml
	ocamlc day.mli day.ml

ex1.vo foo.mli foo.ml: ex1.v
	coqc ex1.v

foo.cmo: foo.mli foo.ml
	ocamlc foo.mli foo.ml

.PHONY: doc
doc:
	coqdoc -d doc day.v ex1.v

.PHONY: clean
clean:
	rm -f a.out *.ml *.mli .*.aux *.cmi *.cmo *.cmx *.glob *.vo *.vok *.vos
