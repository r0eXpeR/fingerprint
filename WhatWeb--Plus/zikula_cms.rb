Plugin.define do
    name "zikula_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'ZKSID2'   }
]
end