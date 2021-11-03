Plugin.define do
    name "airform" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<form[^>]+?action="[^"]*airform\.io[^>]+?>/  }
]
end