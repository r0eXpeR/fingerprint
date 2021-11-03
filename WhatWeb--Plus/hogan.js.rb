Plugin.define do
    name "hogan.js" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /hogan-[.-]([\d.]*\d)[^.]*\.js/  },
    {:offset => 1, :search => 'body', :regexp => /([\d.]+).hogan(?:\.min)?\.js/  }
]
end