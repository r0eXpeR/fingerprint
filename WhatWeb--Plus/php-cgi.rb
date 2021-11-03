Plugin.define do
    name "php-cgi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'PHP-CGI'   }
]
end