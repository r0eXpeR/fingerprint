Plugin.define do
    name "techartcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-Cms: Techart CMS'   }
]
end