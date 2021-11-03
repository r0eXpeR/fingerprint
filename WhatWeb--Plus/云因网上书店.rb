Plugin.define do
    name "云因网上书店" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'href="../css/newscomm.css'   },
    { :text => 'main/building.cfm'   }
]
end