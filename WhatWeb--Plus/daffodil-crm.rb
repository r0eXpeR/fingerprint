Plugin.define do
name "Daffodil-CRM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Daffodil CRM is a software that enables seamless coordination between sales, marketing, customer service, field support and other functions that handle customer contact for an enterprise."
website "http://crm.daffodilsw.com/"
dorks [
'"Daffodil" inurl:app=forgot_passwd'
]
matches [
    {:regexp=>/ href="\?app=forgot_passwd&amp;cmd=passwd_send">[^>]*Forgot Password\?<\/a><\/td>/},
    {:text=>'<div id="right_footer">Design & Development by Daffodil Software Ltd</div>'},
    {:text=>'<div id="right_footer">Powered by Daffodil Software Ltd</div>'},
    {:text=>'Design & Development by Daffodil Software Ltd'},
    {:text=>'Powered by Daffodil'}
]
end
