{ pkgs }:

let
  src = pkgs.fetchFromGitHub {
    owner = "Computerdores";
    repo = "portal-escape";
    rev = "f1132a8e508d7fdae5938ee5bbe63799ab4b289d";
    sha256 = "sha256-wus80g8I32mvV7hoOL+aRvEd1OqTt8jSYJMRreipfoc=";
  };
in pkgs.callPackage (src + "/derivation.nix") { }
