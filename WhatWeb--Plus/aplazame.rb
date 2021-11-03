Plugin.define do
    name "aplazame" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /aplazame\.com.static.aplazame\.js/, :search => 'body'  },
    { :regexp => /cdn\.aplazame\.com.aplazame\.js/, :search => 'body'  }
]
end