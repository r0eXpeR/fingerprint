Plugin.define do
    name "dublincore" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'name="DC.title'   }
]
end