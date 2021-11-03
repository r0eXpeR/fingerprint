Plugin.define do
    name "joomla-facebook" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'jfbconnect_permissions_granted'   }
]
end