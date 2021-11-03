Plugin.define do
    name "decimal.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /decimal[.-]([\d.]*\d+)(?:\.min)?\.js/, :search => 'body'  },
    { :regexp => /decimal(?:\.min)?\.js(?:\?ver(?:sion)?=([\d.]*\d+))?/,:offset => 1, :search => 'body'  },
    {:offset => 1, :regexp => /.([\d.]*\d+).decimal(?:\.min)?\.js/, :search => 'body'  }
]
end