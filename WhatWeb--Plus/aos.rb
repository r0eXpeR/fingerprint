Plugin.define do
    name "aos" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /unpkg\.com.aos@(next).dist.aos\.js/  }
]
end