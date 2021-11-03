Plugin.define do
    name "netpower" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/direct/api.php', :text => 'Ext.ns(\'Ext.Netpower\')'   }
]
end