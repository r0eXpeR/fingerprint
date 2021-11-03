Plugin.define do
    name "sap_commerce_cloud" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+.(?:sys_master|hybr|_ui.(?:.*responsive.)?(?:desktop|common(?:.images|.img|.css|ico)?))./  },
    { :regexp => /<script[^>].*hybris.*.js/  }
]
end