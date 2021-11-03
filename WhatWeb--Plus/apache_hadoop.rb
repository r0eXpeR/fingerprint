Plugin.define do
    name "apache_hadoop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<style[^>]+static.hadoop/  }
]
end