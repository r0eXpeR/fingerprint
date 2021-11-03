Plugin.define do
    name "天融信防火墙" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'TopWebServer'     },
    { :text => '/cgi/maincgi.cgi'     },
    { :text => '/cgi/maincgi.cgi'    },
    { :text => 'WEB User Interface'     }
]
end