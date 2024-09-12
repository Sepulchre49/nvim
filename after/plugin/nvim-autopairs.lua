local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

cmp.event:on(
    'confirm done',
    cmp_autopairs.on_confirm_done()
)

local npairs = require('nvim-autopairs')
-- Add rules for Lisp and Scheme programs
-- Note: get_rule works for "'", but not for "`". To keep it consistent,
-- use get_rules
npairs.get_rules("'")[1].not_filetypes = { "scheme", "lisp" }
npairs.get_rules("`")[1].not_filetypes = { "scheme", "lisp" }
