Plugin.define do
    name "rotic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /https:..rotic.ir.api.v1.enterprise.\S+.widget.\S+/  }
]
end