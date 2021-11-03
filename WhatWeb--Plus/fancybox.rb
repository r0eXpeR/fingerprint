Plugin.define do
    name "fancybox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /jquery\.fancybox(?:\.pack|\.min)?\.js(?:\?v=([\d.]+))?$/,:offset => 1, :search => 'body'   },
    { :text => 'jquery.fancybox.js'    }
]
end