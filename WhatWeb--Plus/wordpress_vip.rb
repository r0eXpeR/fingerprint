Plugin.define do
    name "wordpress_vip" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^WordPress\.com VIP/, :search => 'headers[x-powered-by]'  }
]
end