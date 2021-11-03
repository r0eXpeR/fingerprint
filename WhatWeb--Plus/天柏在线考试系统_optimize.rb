Plugin.define do
    name "天柏在线考试系统" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'index.html")'},
    {:text=>'App_Image/PXSystem'},
    {:text=>'App_Image/System'},
    {:url=>'/App_Image/Public/select.gif', :md5=>'4c1a1a8a10e2f85dfc208b73271c7b36'},
    {:url=>'/favicon.ico', :md5=>'da3eee9122f79d393ff6f105809c9d78'}
]
end