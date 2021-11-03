Plugin.define do
    name "kingdee_eas" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/easweb/cp/stamp/res/CheckIEUtils.js', :text => 'showEachClientCheckResult'   }
]
end