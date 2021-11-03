Plugin.define do
    name "hybris" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+.(?:sys_master|hybr|_ui.(?:responsive.)?(?:desktop|common(?:.images|.img)?))./  }
]
end