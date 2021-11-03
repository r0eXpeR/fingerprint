Plugin.define do
    name "swagger_ui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'swagger-ui/css|\swagger\":|swagger-ui.min.js'   }
]
end