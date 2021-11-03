Plugin.define do
    name "litespeed_web_admin_console" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'LSWSWEBUI'   },
    { :text => 'LiteSpeed Web Admin Console'   }
]
end