Plugin.define do
    name "atlassian_jira" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /JIRA/, :search => 'body'  }
]
end