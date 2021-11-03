Plugin.define do
    name "inproces" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- CSS InProces Portaal default -->/  },
    { :search => 'body', :regexp => /brein.inproces.website.websitefuncties\.js/  }
]
end