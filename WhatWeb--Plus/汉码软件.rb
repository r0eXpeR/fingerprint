Plugin.define do
    name "汉码软件" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'alt="汉码软件LOGO'   },
    { :text => 'content="汉码软件'   },
    { :text => '汉码软件'   }
]
end