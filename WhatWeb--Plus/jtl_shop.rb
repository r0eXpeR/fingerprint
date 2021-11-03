Plugin.define do
    name "jtl_shop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<input[^>]+name="JTLSHOP|<a href="jtl\.php)/  }
]
end