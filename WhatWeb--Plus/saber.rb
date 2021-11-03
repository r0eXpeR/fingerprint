Plugin.define do
    name "saber" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div [^>]*id="_saber/  },
    {:offset => 1, :search => 'body', :regexp => /^Saber v([\d.]+)$/  }
]
end