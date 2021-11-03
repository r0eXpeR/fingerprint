Plugin.define do
    name "stack_analytix" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /api\.stackanalytix\.com/, :search => 'body'  }
]
end