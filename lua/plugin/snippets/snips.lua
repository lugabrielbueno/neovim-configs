local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l
local postfix = require("luasnip.extras.postfix").postfix

ls.add_snippets("php", {
	s("debug", {
		t({ "ini_set('display_errors',1);" }),
		t({ "", "error_reporting(E_ALL);" }),
	}),
	s("new", {
		t({ "<div class='page-content-wrapper'>" }),
		t({ "", "    <div class='page-content'>" }),
		t({ "", "        <div class='row'>" }),
		t({ "", "            <div class='col-md-12'>" }),
		i(0),
		t({ "", "            </div>" }),
		t({ "", "         </div>" }),
		t({ "", "    </div>" }),
		t({ "", "</div>" }),
	}),

	s("foreach", {
		t({ "foreach($" }),
		i(1),
		t({ " as $" }),
		i(2),
		t({ "){", "" }),
		i(0),
		t({ "", "}", "" }),
	}),
}, {
	key = "php",
})
