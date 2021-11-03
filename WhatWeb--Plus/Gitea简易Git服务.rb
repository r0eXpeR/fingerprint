Plugin.define do
    name "Gitea简易Git服务" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :serach => 'headers', :text => 'i_like_gitea'   }
]
end