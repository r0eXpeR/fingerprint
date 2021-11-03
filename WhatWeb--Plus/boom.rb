Plugin.define do
    name "boom" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /MANA/, :search => 'headers[x-supplied-by]'  },
    { :search => 'body', :regexp => /^boom site builder$/  }
]
end