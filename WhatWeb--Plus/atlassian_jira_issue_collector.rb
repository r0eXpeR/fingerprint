Plugin.define do
    name "atlassian_jira_issue_collector" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /atlassian\.jira\.collector\.plugin/  },
    { :search => 'body', :regexp => /jira-issue-collector-plugin/  }
]
end