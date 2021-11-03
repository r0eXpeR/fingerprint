Plugin.define do
    name "typecho" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Typecho( [\d.]+)?/,:offset => 1, :search => 'body'    },
    { :text => 'Typecho</a>'      },
    { :text => 'Typecho</a>'    },
    { :text => 'generator" content="Typecho'      },
    { :url => '/admin/img/editor.png', :md5 => 'd66b387b6c3088903e6d75090a90cee7'      },
    { :url => '/usr/themes/default/style.css', :md5 => '0b2f73087b723f221db5c04a4249fa14'      }
]
end