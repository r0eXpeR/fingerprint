Plugin.define do
    name "infusionsoft" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<input [^>]*value="([^>]*)" [^>]*name="infusionsoft_version" [^>]*\.>/  },
    {:offset => 1, :regexp => /<input [^>]*name="infusionsoft_version" [^>]*value="([^>]*)" [^>]*\.>/  }
]
end