{ pkgs }:

let
  src = pkgs.fetchFromGitHub {
    owner = "Computerdores";
    repo = "portal-escape";
    rev = "8ae22d751da10d33fe6a65d02b96c58198e74821";
    sha256 = "sha256-eLOlqSac+Lt9159UiHLSp5w22BzimHT22ueS0n5MfSo=";
  };
in pkgs.callPackage (src + "/derivation.nix") { }
