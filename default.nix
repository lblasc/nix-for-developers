with (import <nixpkgs> { config = import ./config.nix; });

stdenv.mkDerivation rec {
  name = "app";
  builder = "${bash}/bin/bash";

  buildInputs = [
    cpp-netlib
  ];

  src = ".";
}
