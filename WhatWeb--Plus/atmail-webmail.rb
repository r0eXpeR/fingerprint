Plugin.define do
name "Atmail-WebMail"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Atmail allows users to access IMAP Mailboxes on any server of your choice. You and your users can experience webmail via a fluid, intuitive interface that excels aesthetically and functionally; a benchmark that very few webmail clients have achieved."
website "http://www.atmail.com/webmail-client/"
dorks [
'"Powered by Atmail" "WebAdmin Control Panel" "Email" "Password" "More" " Mailserver" "Protocol" "Language"'
]
matches [
    {:regexp=>/<a href="http:\/\/www.atmail.com[\/]*" target="_blank">Powered by Atmail[\s]*<\/a>/},
    {:serach=>'headers', :text=>'atmail6'},
    {:string=>/<input id="Mailserverinput" class="input" type="text" name="MailServer" value="([^>]*)"/},
    {:text=>"<a href='http://atmail.com/webmail-client/' title='Webmail client' target='_blank'>Powered by Atmail Webmail UO</a>", :version=>"UO"},
    {:text=>'/index.php/mail/auth/processlogin'},
    {:text=>'<input id="Mailserverinput'},
    {:text=>'<td class="more"><a href="javascript:ExpandOptions()"><img src="imgs/login-more.gif" alt="more" border="none"></a></td>'},
    {:text=>'<title>Acceder a UOWebmail</title>'},
    {:text=>'Powered by Atmail'},
    {:version=>/<a href="http:\/\/www.atmail.com\/" target="_blank">Powered by Atmail ([\d\.]+)/},
    {:version=>/<title>Atmail ([\d\.]+) - Login Page<\/title>/}
]
end
