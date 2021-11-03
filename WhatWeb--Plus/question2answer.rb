Plugin.define do
    name "question2answer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!-- Powered by Question2Answer/  },
    { :regexp => /\..qa-content.qa-page\.js\?([0-9.]+)/,:offset => 1, :search => 'body'  }
]
end