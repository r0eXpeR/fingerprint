Plugin.define do
    name "亿邮email" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'EMPHPSID'},
    {:search=>"headers", :text=>'eYouWS'},
    {:text=>'EYOU企业邮箱'},
    {:text=>'cr">eYouMail'},
    {:url=>'/images/lajipic010_1.gif', :md5=>'4fd26fa6dc51a12cdbb6adc39ef7ce83'},
    {:url=>'/images/lajipic012.gif', :md5=>'d23fb928a0b8757786b003fe9c2ec72e'},
    {:url=>'/php/user/css/main.css', :md5=>'518941ec31b77d0edec5f04aac2b918d'},
    {:url=>'/php/user/images/laji05.gif', :md5=>'e186e2e55812321359d1c68ac27da9f1'}
]
end