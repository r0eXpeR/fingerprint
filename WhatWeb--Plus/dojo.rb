Plugin.define do
    name "dojo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /([\d.]+).dojo.dojo(?:\.xd)?\.js/, :search => 'body'  }
]
end