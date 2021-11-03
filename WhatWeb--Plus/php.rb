Plugin.define do
name "PHP"
authors [
  "Andrew Horton", 

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.6"
description "PHP is a widely-used general-purpose scripting language that is especially suited for Web development and can be embedded into HTML. This plugin identifies PHP errors, modules and versions and extracts the local file path and username if present."
website "http://www.php.net/"
dorks [
'PHP warning|error "in /home/*.php on line" ext:php -forum',
'warning|error PHP inurl:error_log "in /home/*.php on line"'
]
matches [
    {:account=>/<b>(Warning|Fatal error)<\/b>: .* in <b>[A-Z]{1}:\\(Documents and Settings|Users)\\([^<^\\]+)\\[^<]*<\/b> on line <b>[0-9]+<\/b><br \/>/i, :offset=>2},
    {:account=>/<b>(Warning|Fatal error)<\/b>: .* in <b>\/home\/([^<^\/]+)\/[^<]*<\/b> on line <b>[0-9]+<\/b><br \/>/, :offset=>1},
    {:filepath=>/<b>(Warning|Fatal error)<\/b>: .* in <b>([^<]+)<\/b> on line <b>[0-9]+<\/b><br \/>/, :offset=>1},
    {:filepath=>/^Error parsing (.+) on line [\d]+$/, :search=>"headers[php]"},
    {:filepath=>/^Error parsing \/home\/([^\/]+)\/.+ on line [\d]+$/, :search=>"headers[php]"},
    {:module=>/[^\r^\n]*PHP\/[^\s^\r^\n]+ with (Hardening-Patch|Suhosin-Patch)/, :search=>"headers[server]"},
    {:module=>/[^\r^\n]*PHP\/[^\s^\r^\n]+ with (Hardening-Patch|Suhosin-Patch)/, :search=>"headers[x-powered-by]"},
    {:name=>"PHP Warning Header", :regexp=>//, :search=>"headers[php warning]"},
    {:regexp=>/^Error parsing (.+) on line [\d]+$/, :search=>"headers[php]"},
    {:regexp=>/^php.?([\d.]+)?/,:offset=>1, :search=>'headers[x-powered-by]'},
    {:search=>"headers", :text=>'X-Powered-By: PHP'},
    {:search=>'headers[server]',:offset=>1, :regexp=>/php.?([\d.]+)?/},
    {:url=>"/?=PHPB8B5F2A0-3C92-11d3-A3A9-4C7B08C10000", :version=>/<tr class="h"><th colspan="2">PHP (\d) Authors<\/th><\/tr>/},
    {:url=>"/?=PHPB8B5F2A0-3C92-11d3-A3A9-4C7B08C10000", :version=>/<tr class="h"><th>PHP ([\d\.]+) Quality Assurance Team<\/th><\/tr>/},
    {:version=>/[^\r^\n]*PHP\/([^\s^\r^\n]+)/, :search=>"headers[server]"},
    {:version=>/[^\r^\n]*PHP\/([^\s^\r^\n]+)/, :search=>"headers[x-powered-by]"}
]
end
