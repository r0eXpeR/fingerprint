Plugin.define do
    name "amaya" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Amaya(?: V?([\d.]+[a-z]))?/, :search => 'body'   },
    { :text => 'generator" content="Amaya'    }
]
end