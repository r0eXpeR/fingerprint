Plugin.define do
    name "timify" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /https:..widget\.timify\.com.js.widget\.js/, :search => 'body'  }
]
end