Plugin.define do
    name "oracle_recommendations_on_demand" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /atgsvcs.+atgsvcs\.js/, :search => 'body'  }
]
end