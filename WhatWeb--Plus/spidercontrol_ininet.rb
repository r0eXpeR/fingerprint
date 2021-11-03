Plugin.define do
    name "spidercontrol_ininet" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /iniNet SpiderControl/  }
]
end