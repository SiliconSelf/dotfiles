{ pkgs, inputs, ... }:
let
  rust-analyzer = inputs.fenix.packages.${pkgs.system}.rust-analyzer;
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
  ]);
}
