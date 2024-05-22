
-- Toggling between dark and light background
function ToggleBackground()
    if vim.o.background == "dark" then
        vim.o.background = "light"
    else
        vim.o.background = "dark"
    end

    -- to print in command line
    vim.api.nvim_echo({{"set background=" .. vim.o.background}}, false, {})

    -- to print in a 'popup' info
    require "notify" (
        "set background to " .. vim.o.background,
        "info",
        { title = "Background Option Toggled:" }
    )
end


-- global variable to control the current spell check option
CurrentSpell = 'None'

-- Toggling Spell check between en/pt_br - None
function ToggleSpell()

   -- Setting spell check options

   if vim.opt.spell:get() == false then
       -- changing to english
       vim.opt.spell = true
       vim.opt.spelllang = "en"
       CurrentSpell = 'en'
   else
       if CurrentSpell == 'en' then
           -- changing to Portuguese
           vim.opt.spelllang = "pt_br"
           CurrentSpell = 'pt_br'
       else
           -- disabling spell check
           CurrentSpell = 'None'
           vim.opt.spell = false
       end
   end

   -- Notifications

   vim.api.nvim_echo({{"Spell check = " .. CurrentSpell}}, false, {})

   -- to print in a 'popup' info
   require "notify" (
       "The current spell is '" .. tostring(vim.opt.spell:get()) .. "' language is '" .. CurrentSpell .. "'",
       "info",
       { title = "Spell Check Option Toggled:" }
   )
end


