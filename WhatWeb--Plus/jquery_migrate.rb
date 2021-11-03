Plugin.define do
    name "jquery_migrate" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /jquery[.-]migrate(?:-([\d.]+))?(?:\.min)?\.js(?:\?ver=([\d.]+))?/  }
]
end