{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    sage
    jupyter

    # Defines a python + set of packages.
    (python3.withPackages (ps: with ps; with python3Packages; [
      ipython
      jupyter
      pandas
      numpy
      matplotlib
	  scipy
    ]))
  ];

  # Automatically run jupyter when entering the shell.
  # shellHook = "jupyter notebook";
  shellHook = "sage -n jupyter";
}
