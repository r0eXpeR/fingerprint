Plugin.define do
    name "synology_nas" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'webman/index.cgi'   },
    { :text => 'modules/BackupReplicationApp'   }
]
end