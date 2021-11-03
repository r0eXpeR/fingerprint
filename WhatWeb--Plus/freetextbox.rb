Plugin.define do
    name "freetextbox" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- \* FreeTextBox v\d \((\d+\.\d+\.\d+)/,:offset => 1  }
]
end