Plugin.define do
    name "kooboo_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.Kooboo/, :search => 'body'  }
]
end