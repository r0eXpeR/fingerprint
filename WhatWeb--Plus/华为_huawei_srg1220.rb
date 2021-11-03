Plugin.define do
    name "华为_huawei_srg1220" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'HUAWEI SRG1220'     },
    { :text => 'HUAWEI SRG1220'     },
    { :text => 'HUAWEI SRG1220'    }
]
end