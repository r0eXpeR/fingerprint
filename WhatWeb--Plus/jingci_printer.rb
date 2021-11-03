Plugin.define do
    name "jingci_printer" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/startwlm/Start_Wlm.html', :text => 'KYOCERA MITA'   }
]
end