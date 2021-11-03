Plugin.define do
    name "vuepress" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^VuePress(?: ([0-9.]+))?$/, :search => 'body',:offset => 1  }
]
end