Plugin.define do
    name "eadmin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="eAdmin'   },
    { :text => 'eadmin'   }
]
end