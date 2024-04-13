{
  pkgs,
  system,
  forester,
  ...
}:
pkgs.mkShell {
  packages =
    (with pkgs; [
      texlive.combined.scheme-full
      fswatch

      yamlfmt
    ])
    ++ [forester.packages.${system}.default];
}
