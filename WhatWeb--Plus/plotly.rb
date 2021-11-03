Plugin.define do
    name "plotly" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /https?:..cdn\.plot\.ly.plotly/  }
]
end