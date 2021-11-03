Plugin.define do
    name "asp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-By: ASP'   }
]
end