Plugin.define do
    name "modified" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /\(c\) by modified eCommerce Shopsoftware ------ http:..www\.modified-shop\.org/  }
]
end