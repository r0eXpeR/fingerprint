Plugin.define do
    name "revslider" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<link[^>]* href=[\'"][^']+revslider[.\w-]+\.css\?ver=([0-9.]+)[\'"]/  },
    { :search => 'body', :regexp => /.revslider.[.\w-]+.js/  }
]
end