Plugin.define do
    name "bootstrap_table" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<link[^>]+href="[^>]*bootstrap-table(?:\.min)?\.css/  },
    { :search => 'body', :regexp => /bootstrap-table(?:\.min)?\.js/  }
]
end