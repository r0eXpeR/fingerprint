Plugin.define do
name "Steam-Steal0r-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin extracts passwords from Steam Steal0r logs."
passive do
	m=[]
	if @body =~ /^--------------------[\s]+Steam Steal0r v2 by -=Player=-/
		if @body =~ /^ Possible Accountnames: [^\r^\n]+[\s]+Password: ([^\r^\n]+)/
			accounts=@body.scan(/^ Possible Accountnames: [^\r^\n]+[\s]+Password: ([^\r^\n]+)/)
			m << {:account=>accounts}
		end
	end
	m
end
end
