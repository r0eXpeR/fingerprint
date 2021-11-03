Plugin.define do
    name "easethink" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/admin/Tpl/default/Common/js/main.js', :text => 'easethink'   },
    { :url => '/app/Tpl/default/css/img/w_hd.gif', :md5 => 'a30a9392e16c1f08a4f85ccb54696dfb'   },
    { :url => '/app/Tpl/default/images/bg-progress-top-r.gif', :md5 => 'e4984cc5a746e89a78615cdc57bf4a03'   }
]
end