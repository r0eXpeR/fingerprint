Plugin.define do
    name "zk" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- ZK [.\d\s]+-->/  },
    { :regexp => /zkau./, :search => 'body'  }
]
end