Plugin.define do
    name "bokeh" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /bokeh.*\.js/, :search => 'body'  }
]
end