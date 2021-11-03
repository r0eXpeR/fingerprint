Plugin.define do
    name "ophal" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Ophal(?: (.+))? \(ophal\.org\)/,:offset => 1, :search => 'headers[x-powered-by]'  },
    { :regexp => /ophal\.js/, :search => 'body'  },
    {:offset => 1, :regexp => /Ophal(?: (.+))? \(ophal\.org\)/, :search => 'body'  }
]
end