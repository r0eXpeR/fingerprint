Plugin.define do
name "AnyGate"
authors [
  "Andrew Horton",

]
version "0.1"
description "Korean home wifi/router device"
website "http://www.anygate.co.kr/"
matches [
    {:text=>'/anygate.php'},
    {:text=>'AnyGate'},
    {:url=>'/index.asp', :text=>"사용자 암호가 설정되어 있지 않습니다.",  :string=>"No Password"},
    {:url=>'/index.asp', :text=>'<title>AnyGate'}
]
end
