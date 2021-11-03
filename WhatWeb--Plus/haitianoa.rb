Plugin.define do
    name "haitianoa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/HTVOS.js', :text => 'function validateGoto(f)'   },
    { :url => '/oa/HTVOS.js', :text => 'function validateGoto(f)'   }
]
end