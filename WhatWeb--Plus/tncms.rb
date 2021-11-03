Plugin.define do
    name "tncms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Tncms-Version'   }
]
end