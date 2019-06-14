# OCaml Light for Coq Extraction

[![Travis][travis-shield]][travis-link]

[travis-shield]: https://travis-ci.org/palmskog/ocaml-light-extraction.svg?branch=master
[travis-link]: https://travis-ci.org/palmskog/ocaml-light-extraction/builds

Revival of [OCaml Light](https://www.cl.cam.ac.uk/~pes20/ott/) definition and formal semantics for Coq, for use in verified extraction in [MetaCoq](https://github.com/MetaCoq/metacoq/issues/163).

## Dependencies

- [Coq 8.8](https://coq.inria.fr)
- [Ott](https://github.com/ott-lang/ott)
- [MetaCoq](https://github.com/MetaCoq/MetaCoq)

## Building

The easiest way to install the dependencies
is via [OPAM](https://opam.ocaml.org/doc/Install.html):

```shell
opam repo add coq-released https://coq.inria.fr/opam/released
opam repo add coq-extra-dev https://coq.inria.fr/opam/extra-dev
opam install ott coq-ott
```

Then, run `make` to generate and check all definitions.
