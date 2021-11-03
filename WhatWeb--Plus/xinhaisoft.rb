Plugin.define do
    name "xinhaisoft" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/style/default/style.css', :text => 'border: 1px solid #C2CFDF;'   },
    { :url => '/xinhaisoft/style/default/style.css', :text => 'border: 1px solid #C2CFDF;'   }
]
end