Plugin.define do
    name "fangwei" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/Public/printbond.jpg', :md5 => '91efed2b72c8d773dec279385ec6cdf1'   },
    { :url => '/admin/Tpl/default/ThemeFiles/Images/login/logins_01.png', :md5 => 'f2f98f79ea7b2c3713fc1c44e08a6479'   },
    { :url => '/mobile/Tpl/default/Inc/footer.html', :text => './m.php?m=Goods&a=other&s={$s}'   }
]
end