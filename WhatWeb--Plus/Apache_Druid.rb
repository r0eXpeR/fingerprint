Plugin.define do
    name "Apache_Druid" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /druid.index|DruidDrivers|DruidVersion|Druid Stat Index/}
]
end