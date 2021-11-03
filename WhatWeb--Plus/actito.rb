Plugin.define do
    name "actito" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.actito\.be/, :search => 'body'  },
    { :search => 'body', :regexp => /\.advisor\.smartfocus\.com/  }
]
end