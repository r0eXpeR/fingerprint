Plugin.define do
    name "outlook_web_app" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link\s[^>]*href="[^"]*?([\d.]+).themes.resources.owafont\.css/,:offset => 1  }
]
end