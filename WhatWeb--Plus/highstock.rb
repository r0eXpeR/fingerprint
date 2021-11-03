Plugin.define do
    name "highstock" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<svg[^>]*><desc>Created with Highstock ([\d.]*)/  },
    {:offset => 1, :regexp => /highstock[.-]?([\d\.]*\d).*\.js/, :search => 'body'  }
]
end