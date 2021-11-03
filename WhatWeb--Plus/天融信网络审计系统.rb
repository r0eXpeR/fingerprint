Plugin.define do
    name "天融信网络审计系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'onclick="dlg_download()'     },
    { :text => 'onclick=dlg_download('     },
    { :text => 'onclick=dlg_download('    }
]
end