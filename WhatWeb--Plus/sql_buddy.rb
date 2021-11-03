Plugin.define do
    name "sql_buddy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<title>SQL Buddy<.title>|<[^>]+onclick="sideMainClick\("home\.php)/  }
]
end