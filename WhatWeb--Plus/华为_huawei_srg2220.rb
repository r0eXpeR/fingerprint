Plugin.define do
    name "华为_huawei_srg2220" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'HUAWEI SRG2220'     },
    { :text => 'HUAWEI SRG2220'     },
    { :text => 'HUAWEI SRG2220'    }
]
end