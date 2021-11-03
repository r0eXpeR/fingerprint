Plugin.define do
    name "华为（huawei）secoway设备" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Secoway'     },
    { :text => 'Secoway'     },
    { :text => 'Secoway'    }
]
end