Plugin.define do
    name "列目录" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '- /</title>'   },
    { :text => 'Index of /'   }
]
end