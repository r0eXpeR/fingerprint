Plugin.define do
    name "open_classifieds" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /open-classifieds\.com/  },
    {:offset => 1, :regexp => /Open Classifieds ?([0-9.]+)?/, :search => 'body'  }
]
end