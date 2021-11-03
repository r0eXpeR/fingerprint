Plugin.define do
    name "snowplow_analytics" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.jsdelivr\.net.gh.snowplow.sp-js-assets@(?:.+).sp\.js/, :search => 'body'  },
    { :regexp => /cdn\.jsdelivr\.net.npm.@snowplow.javascript-tracker@(?:.+).dist.sp\.js/, :search => 'body'  },
    { :regexp => /d1fc8wv8zag5ca\.cloudfront\.net..+.sp\.js/, :search => 'body'  },
    { :regexp => /sp\.js/, :certainty => 50, :search => 'body'  },
    { :regexp => /unpkg.com.@snowplow.javascript-tracker@(?:.+).dist.sp.*\.js/, :search => 'body'  },
    { :search => 'body', :regexp => /cdnjs\.cloudflare\.com.ajax.libs.snowplow.(?:.+).sp.*\.js/  }
]
end