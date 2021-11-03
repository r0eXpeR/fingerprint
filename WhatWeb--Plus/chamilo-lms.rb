Plugin.define do
    name "chamilo-lms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/main/img/wrong.gif', :md5 => 'a51f4619646ad4764f5a980d39a833c2'   },
    { :url => '/main/newscorm/js/documentapi.js', :text => 'chamilo'   },
    { :url => '/main/wiki/css/ext.png', :md5 => '8ea7563eac773be6a466fd8a9866a411'   }
]
end