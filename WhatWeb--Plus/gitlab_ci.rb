Plugin.define do
    name "gitlab_ci" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /GitLab Continuous Integration/, :search => 'body'  }
]
end