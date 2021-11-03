Plugin.define do
    name "kolors4u" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /kolors4u (?: ([\d.]+))?/  },
    { :regexp => /kolors4u ([\d.]+)/, :search => 'headers[x-content-encoded-by]',:offset => 1  }
]
end