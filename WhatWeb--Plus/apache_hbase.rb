Plugin.define do
    name "apache_hbase" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<style[^>]+static.hbase/  }
]
end