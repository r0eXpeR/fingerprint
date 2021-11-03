Plugin.define do
    name "whm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'whostmgrsession'   }
]
end