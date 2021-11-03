Plugin.define do
    name "webedition" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /webEdition/   },
    { :text => 'generator" content="webEdition'    }
]
end