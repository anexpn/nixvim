default: run

# Run nixvim configuration
run:
  nix run .

# Format Nix code with alejandra
format:
  nix fmt

# Check flake and build derivation
check:
  nix flake check

# Build nixvim configuration
build:
  nix build

# Update flake inputs
update:
  nix flake update

# Enter development shell with pre-commit hooks
develop:
  nix develop

# Clean build artifacts and garbage collect
clean:
  nix store gc --delete-old
  nix-collect-garbage -d
