Plugin.define do
    name "phpsqlitecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^phpSQLiteCMS(?: (.+))?$/  }
]
end