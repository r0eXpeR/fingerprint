Plugin.define do
    name "buysellads" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /^https?:..s\d\.buysellads\.com./  },
    { :search => 'body', :regexp => /servedby-buysellads\.com.monetization(?:\.[\w\d]+)?\.js/  }
]
end