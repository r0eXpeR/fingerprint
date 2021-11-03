Plugin.define do
    name "proximis_web_to_store" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /widget-commerce(?:\.min)?\.js/  }
]
end