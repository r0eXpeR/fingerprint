Plugin.define do
    name "marketo_forms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /v([\d.]+).js.marketo-alt-form\.min\.js/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /marketo\.\w+.js.forms(?:[\d.]+).js.forms([\d.]+)\.min\.js/  }
]
end