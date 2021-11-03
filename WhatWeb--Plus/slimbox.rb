Plugin.define do
    name "slimbox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*href="[^.]*slimbox(?:-rtl)?\.css/  },
    { :regexp => /slimbox\.js/, :search => 'body'  }
]
end