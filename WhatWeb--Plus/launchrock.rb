Plugin.define do
    name "launchrock" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /js.ignition-current\.min\.js/, :certainty => 50, :search => 'body'  }
]
end