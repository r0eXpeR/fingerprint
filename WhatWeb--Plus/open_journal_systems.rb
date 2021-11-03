Plugin.define do
    name "open_journal_systems" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Open Journal Systems(?: ([\d.]+))?/,:offset => 1, :search => 'body'  }
]
end