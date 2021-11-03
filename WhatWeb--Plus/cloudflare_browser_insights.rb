Plugin.define do
    name "cloudflare_browser_insights" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /static\.cloudflareinsights\.com.beacon(?:\.min)?\.js/  }
]
end