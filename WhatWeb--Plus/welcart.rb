Plugin.define do
    name "welcart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+?href="[^"]+usces_default(?:\.min)?\.css/  },
    { :regexp => /uscesL10n/, :search => 'body'  },
    {:offset => 1, :regexp => /<!-- Welcart version : v([\d.]+)/  }
]
end