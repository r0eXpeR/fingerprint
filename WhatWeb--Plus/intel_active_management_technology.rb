Plugin.define do
    name "intel_active_management_technology" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Intel\(R\) Active Management Technology(?: ([\d.]+))?/  }
]
end