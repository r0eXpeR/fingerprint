Plugin.define do
    name "新浪sae" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'lib.sinaapp.com'   },
    { :text => 'lib.sinaapp.com'   }
]
end