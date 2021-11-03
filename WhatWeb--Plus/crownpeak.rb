Plugin.define do
    name "crownpeak" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /js.crownpeak\./, :search => 'body'  },
    { :search => 'body', :regexp => /c\.evidon\.com/  }
]
end