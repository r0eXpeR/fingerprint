Plugin.define do
    name "minero.cc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /..minero\.cc.lib.minero(?:-miner|-hidden)?\.min\.js/, :search => 'body'  }
]
end