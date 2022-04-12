with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    (python3.withPackages (_: with _; [ sphinx sphinx_rtd_theme ]))
  ];
}