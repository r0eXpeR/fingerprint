Plugin.define do
    name "redoc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<redoc/  },
    { :search => 'body', :regexp => /.redoc\.(?:min\.)?js/  }
]
end