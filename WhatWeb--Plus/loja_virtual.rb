Plugin.define do
    name "loja_virtual" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 20,:offset => 1, :regexp => /.js.ljvt_v(\d+)./, :search => 'body'  },
    { :regexp => /cdn1\.solojavirtual\.com/, :search => 'body'  }
]
end