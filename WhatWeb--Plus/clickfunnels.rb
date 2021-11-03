Plugin.define do
    name "clickfunnels" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<meta property="cf:app_domain" content="app\.clickfunnels\.com/  }
]
end