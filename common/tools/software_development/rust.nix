{ pkgs, inputs, ... }:
let
  rust-analyzer = inputs.fenix.packages.${pkgs.system}.rust-analyzer;
  cargo = inputs.fenix.packages.${pkgs.system}.cargo;
  clippy = inputs.fenix.packages.${pkgs.system}.clippy;
  rust-src = inputs.fenix.packages.${pkgs.system}.rust-src;
  rustc = inputs.fenix.packages.${pkgs.system}.rustc;
  rustfmt = inputs.fenix.packages.${pkgs.system}.rustfmt;
in
{
   environment.systemPackages = [
    rust-analyzer
  ] ++ (with pkgs; [
    # Generate Rust projects from templates
    cargo-generate
    # Easily edit Cargo.toml
    cargo-edit
    # Expand code generated from macros
    cargo-expand
    # Debuggers
    gdb
    lldb
    # JetBrains IDE
    jetbrains.rust-rover
    # Toolchain
    cargo
    clippy
    rust-src
    rustc
    rustfmt
  ]);
}
