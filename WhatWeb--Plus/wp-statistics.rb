Plugin.define do
    name "wp-statistics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Analytics by WP-Statistics v([\d.]+) -/,:offset => 1  }
]
end