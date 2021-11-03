Plugin.define do
    name "slimbox_2" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link [^>]*href="[^.]*slimbox2(?:-rtl)?\.css/  },
    { :regexp => /slimbox2\.js/, :search => 'body'  }
]
end