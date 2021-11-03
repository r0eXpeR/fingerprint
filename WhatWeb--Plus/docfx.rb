Plugin.define do
    name "docfx" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /toc.html/, :search => 'body'  },
    {:offset => 1, :search => 'body', :regexp => /docfx\s([\d\.]+)/  }
]
end