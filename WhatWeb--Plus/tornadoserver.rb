Plugin.define do
    name "tornadoserver" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'TornadoServer'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /TornadoServer(?:.([\d.]+))?/   },
    { :text => 'TornadoServer'    }
]
end