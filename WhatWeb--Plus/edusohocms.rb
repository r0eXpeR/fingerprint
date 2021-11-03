Plugin.define do
    name "edusohocms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/assets/libs/seajs-global-config.js', :text => 'edusoho'   }
]
end