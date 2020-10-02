{ pkgs ? import <nixpkgs> {inherit system;}
, system ? builtins.currentSystem
, nodejs ? pkgs."nodejs-12_x"}:

(pkgs.buildFHSUserEnv {
  name  = "ITF";
  targetPkgs = p: with p; [ autoconf automake libtool zlib nodejs nodePackages.npm ]; # ++ deps;
}).env
