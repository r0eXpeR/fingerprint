Plugin.define do
    name "secupress_(wordpress_)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<h1>SecuPress</h1><h2>'  }
]
end