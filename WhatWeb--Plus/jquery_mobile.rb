Plugin.define do
    name "jquery_mobile" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /jquery[.-]mobile(?:-([\d.]))?(?:\.min)?\.js(?:\?ver=([\d.]+))?/, :search => 'body'  }
]
end