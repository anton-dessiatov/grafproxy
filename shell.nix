let current= import <nixpkgs> {};
    unstable = import (builtins.fetchGit {
      url = "git://github.com/NixOS/nixpkgs.git";
      rev = "3fe7a65e236e55dfb70ad722b174177426e5cecf";
    }) {};
in
current.stdenv.mkDerivation {
  name = "grafproxy";

  buildInputs = [
    current.docker unstable.docker_compose
    ];
}
