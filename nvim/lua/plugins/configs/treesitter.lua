require("nvim-treesitter.install").prefer_git = true
return {
 {
   "nvim-treesitter/nvim-treesitter",
   version = "*",
   dependencies = {"p00f/nvim-ts-rainbow"},
   config = function()
    require("nvim-treesitter.install").prefer_git = true
    require'nvim-treesitter.configs'.setup {
      prefer_git = true,
      ensure_installed = { "vim", "vimdoc", "bash", "c", "cpp", "json", "lua", "python", "css"},

      highlight = { enable = true },
      indent = { enable = true },

      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      }
    }
   end
 }
}
