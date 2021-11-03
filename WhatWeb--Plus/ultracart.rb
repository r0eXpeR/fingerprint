Plugin.define do
    name "ultracart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<form [^>]*action="[^"]*\.cgi-bin\.UCEditor\?(?:[^"]*&)?merchantId=[^"]/  },
    { :regexp => /cgi-bin\.UCJavaScript\?/, :search => 'body'  }
]
end