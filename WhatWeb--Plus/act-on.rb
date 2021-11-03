Plugin.define do
    name "act-on" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /.cdnr.\d+.acton.bn.tracker.\d+/  }
]
end