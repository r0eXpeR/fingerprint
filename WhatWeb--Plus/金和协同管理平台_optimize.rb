Plugin.define do
    name "金和协同管理平台" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:serach=>'headers', :text=>'ASPSESSIONIDSSCDTDBS'},
    {:text=>'金和协同管理平台'}
]
end