Plugin.define do
    name "a-blog_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /a-blog cms/, :search => 'body'  }
]
end