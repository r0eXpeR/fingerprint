Plugin.define do
name "error_log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies PHP error_logs and and extracts the local file path."
dorks [
'warning|error inurl:error_log "PHP" "on line"'
]
matches [
{ :filepath=>/\[[\d]{2}\-[A-Za-z]{3,4}\-[\d]{4} [\d]{2}:[\d]{2}:[\d]{2}\] PHP .{1,50}: .* in (.*) on line [0-9]+/ },
{ :account=>/\[[\d]{2}\-[A-Za-z]{3,4}\-[\d]{4} [\d]{2}:[\d]{2}:[\d]{2}\] PHP .{1,50}: .* in \/home\/([^\/]{1,32})\/.* on line [0-9]+/ },
]
end
