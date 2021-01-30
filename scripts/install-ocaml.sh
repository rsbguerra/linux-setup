sudo apt install m4 -y
sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)

opam init --disable-sandboxing
eval $(opam env)
opam update
opam install menhir merlin ocp-indent ocaml-lsp-server dune stdint utop
;opam user-setup install
;eval $(opam env)