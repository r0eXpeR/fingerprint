Plugin.define do
    name "neos_flow" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[x-flow-powered]',:offset => 1, :regexp => /Flow.?(.+)?$/  }
]
end