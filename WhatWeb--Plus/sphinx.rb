Plugin.define do
name "Sphinx"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Sphinx is a tool that makes it easy to create intelligent and beautiful documentation"
website "http://sphinx.pocoo.org/"
dorks [
'"Created using Sphinx" "Copyright"'
]
matches [
    {:offset=>1, :regexp=>/Created using <a href="https?:..(?:www\.)?sphinx-doc\.org.">Sphinx<.a> ([0-9.]+)\./},
    {:regexp=>/<div class="sphinxsidebar">[\s]+<div class="sphinxsidebarwrapper">/},
    {:version=>/Created using <a href="http:\/\/sphinx\.pocoo\.org\/">Sphinx<\/a> ([^\s]+)\./}
]
end
