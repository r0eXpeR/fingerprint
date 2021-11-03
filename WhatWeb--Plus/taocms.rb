Plugin.define do
    name "taocms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '>taoCMS<'   },
    { :url => '/template/taoCMS/images/style.css', :text => 'taogogo'   },
    { :url => '/template/taoCMS/images/tao.js', :text => '$tao'   }
]
end