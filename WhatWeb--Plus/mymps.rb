Plugin.define do
    name "mymps" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/css/mymps.css'   },
    { :text => 'content="mymps'   },
    { :text => 'mymps'   }
]
end