Plugin.define do
    name "zuitu" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/include/template/manage_system_upgrade.html', :text => 'Zuitu'   },
    { :url => '/readme.txt', :text => 'zuitu'   }
]
end