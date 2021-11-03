Plugin.define do
    name "lua" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /\bLua(?: ([\d.]+))?/   },
    { :search => "headers", :text => 'Server: lua'    }
]
end