{ pkgs }:

let
  src = pkgs.fetchFromGitHub {
    owner = "Computerdores";
    repo = "portal-escape";
    rev = "ef3b28d5b5a41de4ba2e975f0110ce9a5f60ca9e";
    sha256 = "sha256-HAnjBe8Gw1/1FtFRMcnlCW2ZNK4RINcJXhbZdTcQfg8=";
  };
in pkgs.callPackage (src + "/derivation.nix") { }
