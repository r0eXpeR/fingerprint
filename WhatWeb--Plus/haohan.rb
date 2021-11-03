Plugin.define do
    name "haohan" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/Ineduportal/Script/BaseFunction.js', :text => 'LengthVolidation'   },
    { :url => '/ineduportal/Script/skmmenu.js', :text => 'skm_applyStyleInfoToElement'   },
    { :url => '/ineduportal/Script/topflash.js', :text => 'D27CDB6E-AE6D-11cf-96B8-444553540000'   }
]
end