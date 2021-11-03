Plugin.define do
    name "kendo_ui" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]*\s+href=[^>]*styles.kendo\.common(?:\.min)?\.css[^>]*.>/  }
]
end