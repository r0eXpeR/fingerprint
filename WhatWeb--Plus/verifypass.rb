Plugin.define do
    name "verifypass" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.id\.services/, :search => 'body'  },
    { :search => 'body', :regexp => /cdn\.verifypass\.com/  }
]
end