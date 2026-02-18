return {
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- Тема должна загружаться при старте
    priority = 1000, -- И приоритет должен быть выше других плагинов
    config = function()
	    require("tokyonight").setup({
		    style = "storm",      -- Варианты: storm, moon, night, day
		    transparent = true,   -- Включить прозрачный фон
		    terminal_colors = true, 
		    styles = {
			    sidebars = "dark",  -- Стиль панелей (н-р nvim-tree)
			    floats = "dark",    -- Стиль плавающих окон
		    },
	    })

      -- Загружаем цветовую схему
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
