return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      -- Размер окна (высота для горизонтального, ширина для вертикального)
      size = 15, 
      -- Хоткей для открытия/закрытия. <C-t> — это Ctrl + t
      open_mapping = [[<C-t>]], 
      hide_numbers = true, -- Скрыть номера строк в терминале
      shade_terminals = true,
      start_in_insert = true, -- Сразу входить в режим вставки
      insert_mappings = true, -- Хоткей работает и в режиме вставки
      terminal_mappings = true,
      persist_size = true,
      direction = 'horizontal', -- Открывать снизу как в VS Code
      close_on_exit = true, -- Закрывать окно, если оболочка завершила работу
      shell = vim.o.shell, -- Использовать системную оболочку по умолчанию
    })
  end
}
