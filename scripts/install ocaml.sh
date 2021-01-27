#! bin/bash

sudo dnf install m4 -y
sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)

opam init --disable-sandboxing
eval $(opam env)
opam update
opam install menhir merlin ocaml-lsp-server stdint utop