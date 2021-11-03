Plugin.define do
    name "wpcacheon" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^Optimized by WPCacheOn/, :search => 'headers[x-powered-by]'  }
]
end