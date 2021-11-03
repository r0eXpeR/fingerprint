Plugin.define do
    name "cdr-stats" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/static/cdr-stats/js/jquery'   },
    { :regexp => /CDR-Stats|Customer Interface/ }
]
end