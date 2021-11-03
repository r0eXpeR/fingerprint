Plugin.define do
    name "esccms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/Include/UserLogin.js', :text => 'openWindow("OperationManage/SelectUnitMemberForLogin.aspx?name="+ account +"&unId="+ userNameId +"&upId="+ pwdId +"&param="+ param +"&divId="+ dataDivId'   }
]
end