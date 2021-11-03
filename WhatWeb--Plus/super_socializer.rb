Plugin.define do
    name "super_socializer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /plugins.super-socializer..+?ver=([\d.]+)/, :search => 'body'  }
]
end