Plugin.define do
    name "gitiles" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a href="https:..gerrit\.googlesource\.com.gitiles.">Gitiles</  }
]
end