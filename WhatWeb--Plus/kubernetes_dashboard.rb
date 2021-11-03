Plugin.define do
    name "kubernetes_dashboard" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<html ng-app="kubernetesDashboard">/  }
]
end