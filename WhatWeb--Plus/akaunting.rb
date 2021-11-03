Plugin.define do
    name "akaunting" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+akaunting-green\.css/  },
    { :regexp => /Powered By Akaunting: <a [^>]*href="https?:..(?:www\.)?akaunting\.com[^>]+>/  },
    { :regexp => /^Free Accounting Software$/, :search => 'headers[x-akaunting]'  }
]
end