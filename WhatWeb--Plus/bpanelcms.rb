Plugin.define do
    name "bpanelcms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Powered-Cms: BPanel CMS'   }
]
end