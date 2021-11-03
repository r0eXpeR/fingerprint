Plugin.define do
    name "深信服应用交付报表系统" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/reportCenter/index.php?cls_mode=cluster_mode_others'   }
]
end