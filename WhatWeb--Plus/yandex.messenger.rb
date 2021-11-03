Plugin.define do
    name "yandex.messenger" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /chat\.s3\.yandex\.net.widget\.js/, :search => 'body'  }
]
end