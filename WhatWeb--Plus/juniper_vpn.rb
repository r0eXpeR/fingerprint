Plugin.define do
    name "juniper_vpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ 
    { :text => 'welcome.cgi?p=logo'},
    { :text => '/images/logo_juniper_reversed.gif'},
    { :url => '/dana-na/css/ds.js', :text => 'GDocumentOnKeyDown(evt)'     }
]
end