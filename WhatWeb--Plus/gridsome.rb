Plugin.define do
    name "gridsome" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^Gridsome v([\d.]+)$/  }
]
end