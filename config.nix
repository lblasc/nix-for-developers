{
  packageOverrides = pkgs: {
    cpp-netlib = pkgs.cpp-netlib.overrideAttrs (oldAttrs: rec {  
      src = pkgs.fetchFromGitHub {
        owner = "cpp-netlib";
        repo = "cpp-netlib";
        rev = "73d4024";
        sha256 = "0xkila1f66dk58dmrpf4qcfgmk48a9wr5syhm2vwfim8qpibfmvj";
      };
    });
  };
}
