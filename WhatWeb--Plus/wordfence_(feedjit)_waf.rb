Plugin.define do
    name "wordfence_(feedjit)_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/plugins/wordfence'  },
    { :text => 'This response was generated by Wordfence'  },
    { :text => 'broke one of the Wordfence'  },
    { :text => 'generated by wordfence'  }
]
end