Plugin.define do
    name "salecycle" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<iframe[^>]+title="SaleCycle"[^>]+src="[^>]+salecycle\.com/  }
]
end