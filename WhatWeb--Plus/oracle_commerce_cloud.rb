Plugin.define do
    name "oracle_commerce_cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+id="oracle-cc/  }
]
end