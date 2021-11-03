Plugin.define do
    name "twilightcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-Cms: Twilight CMS'   }
]
end