Plugin.define do
    name "jquery_ui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /([\d.]+).jquery-ui(?:\.min)?\.js/, :search => 'body',:offset => 1  },
    { :regexp => /jquery-ui.*\.js/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /jquery-ui[.-]([\d.]*\d)[^.]*\.js/  }
]
end