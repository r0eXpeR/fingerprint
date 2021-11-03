Plugin.define do
    name "yahoo_advertising" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+adserver\.yahoo\.com/  },
    { :regexp => /<img[^>]+clicks\.beap\.bc\.yahoo\.com/  },
    { :regexp => /adinterax\.com/, :search => 'body'  }
]
end