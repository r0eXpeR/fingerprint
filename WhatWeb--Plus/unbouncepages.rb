Plugin.define do
    name "unbouncepages" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Unbounce-Pageid'   }
]
end