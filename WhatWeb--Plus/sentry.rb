Plugin.define do
    name "sentry" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<script[^>]*>\s*Raven\.config\('[^']*', \{\s+release: '([0-9\.]+)/,:offset => 1  },
    { :regexp => /<script[^>]*src="[^"]*browser\.sentry\-cdn\.com.([0-9.]+).bundle(?:\.tracing)?(?:\.min)?\.js/,:offset => 1  },
    { :regexp => /browser\.sentry\-cdn\.com.([0-9.]+).bundle(?:\.tracing)?(?:\.min)?\.js/, :search => 'body',:offset => 1  }
]
end