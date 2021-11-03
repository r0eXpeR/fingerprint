Plugin.define do
    name "万户oa" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'LocLan'},
    {:serach=>'headers', :text=>'LocLan'},
    {:url=>'/defaultroot/images/bg.png', :md5=>'f8b341940465d9d73f042562813dbde4'},
    {:url=>'/favicon.ico', :md5=>'6c6265b5ca201dda38c07242d76b738d'}
]
end