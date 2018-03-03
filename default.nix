with (import <nixpkgs> {});

stdenv.mkDerivation rec {
  name = "app";
  builder = "${bash}/bin/bash";

  buildInputs = [
    cpp-netlib
  ];

  src = ".";
}
