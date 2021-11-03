Plugin.define do
    name "科迈ras系统" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:text=>'type="application/npRas'},
    {:text=>'科迈RAS'},
    {:text=>'远程技术支持请求：<a href="http://www.comexe.cn'},
    {:url=>'/server/images/logo.gif', :md5=>'6fff06dc129824dbafa5dda0e3f89a9b'}
]
end