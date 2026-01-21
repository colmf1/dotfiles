# C++ Support in Neovim

## LSP with clangd
- Automatically installed via Mason.
- Provides autocompletion, diagnostics, and navigation.
- Keybinds (based on your current setup):
  - `K`: Hover documentation
  - `<leader>k`: Show diagnostics float
  - `gd`: Go to definition
  - `gD`: Go to declaration
  - `gi`: Go to implementation
  - `go`: Go to type definition
  - `gr`: Find references
  - `gs`: Signature help
  - `<F2>`: Rename symbol
  - `<F4>`: Code actions

## Code Formatting
- clang-format runs automatically on save for `.cpp`, `.hpp`, `.cc`, `.h` files.
- Installed via Mason.

## Documentation
- **cppman**: Command-line tool for offline C++ standard library docs.
  - Usage: `:terminal cppman <topic>` or `:!cppman <topic>` (e.g., `:terminal cppman vector`)
- **vim-man plugin**: View man pages directly in Neovim buffers.
  - Usage: `:Man <topic>` (opens man page in a split; e.g., `:Man std::vector`)

## Notes
- All tools work offline once installed (perfect for planes).
- Mason will install clangd and clang-format on Neovim startup if not present.
- External dependency: `pip install cppman` (run this once).