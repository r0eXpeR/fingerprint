Plugin.define do
    name "华为_huawei_srg3250" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'HUAWEI SRG3250'     },
    { :text => 'HUAWEI SRG3250'     },
    { :text => 'HUAWEI SRG3250'    }
]
end