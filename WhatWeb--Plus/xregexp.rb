Plugin.define do
    name "xregexp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /xregexp.*\.js/, :search => 'body'  },
    {:offset => 1, :regexp => /.([\d.]+).xregexp(?:\.min)?\.js/, :search => 'body'  },
    {:offset => 1, :regexp => /xregexp[.-]([\d.]*\d)[^.]*\.js/, :search => 'body'  }
]
end