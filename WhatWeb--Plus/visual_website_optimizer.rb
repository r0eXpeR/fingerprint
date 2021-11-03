Plugin.define do
    name "visual_website_optimizer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- (?:Start|End) Visual Website Optimizer A?Synchronous Code -->/  },
    { :regexp => /dev\.visualwebsiteoptimizer\.com/, :search => 'body'  }
]
end