Plugin.define do
    name "yoast_seo" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- This site is optimized with the Yoast (?:WordPress )?SEO plugin v([\d.]+) -/,:offset => 1  }
]
end