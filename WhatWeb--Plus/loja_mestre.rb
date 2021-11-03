Plugin.define do
    name "loja_mestre" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /lojamestre\.\w+\.br/, :search => 'body'  },
    { :regexp => /www\.lojamestre\.\w+\.br/, :search => 'body'  }
]
end