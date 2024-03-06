# LUA 

lua bootstraps from: `~/.config/nvim/lua.init` not ~/.vimrc

## PACKER - package management

See https://github.com/wbthomason/packer.nvim

`:PackerSync`
`:PackerCompile`

## LANGUAGE SERVER

* LUA uses LSP for its language server not CoC

## AstroCommunity

Update `plugins` with this https://docs.astronvim.com/#-community-plugin-configurations

### Usage

Docs on things relative to LSP.

(1) https://neovim.io/doc/user/lsp.html
(2) https://neovim.io/doc/user/vimindex.html

run `:help` lsp in neovim

### Functions:

(1) hover \
(2) format \
(3) reference 
(4) implementation \
(5) code_action


### Rust 

* run `:MasonInstall rust-analyzer codelldb` after 

Docs:

(1) https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer \
(2) https://github.com/rust-lang/rust-analyzer/blob/master/docs/user/generated_config.adoc \
(3) https://github.com/simrat39/rust-tools.nvim#configuration \
(4) https://rishabhrd.github.io/jekyll/update/2020/09/19/nvim_lsp_config.html 

