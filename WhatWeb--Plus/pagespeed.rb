Plugin.define do
    name "pagespeed" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Mod-Pagespeed'   },
    { :search => "headers", :text => 'X-Page-Speed'   }
]
end