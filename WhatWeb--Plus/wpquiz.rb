Plugin.define do
name "wpQuiz"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "wpQuiz is a fully-featured quiz script."
website "http://www.wireplastik.com/"
matches [
{ :regexp=>/<title>[^>]*>> [Register|Login]+ - wp[q|Q]+uiz<\/title>/ },
{ :text=>"<div class='small' style='text-align: center;'>Powered by wpQuiz</div>
" },

]
passive do
        m=[]
        if @body =~ /<span class='big'><b><img src='img\/mainlogo.png' alt='[^\']+' \/> [\d\.a-z]+<\/b><\/span>/
                version=@body.scan(/<span class='big'><b><img src='img\/mainlogo.png' alt='[^\']+' \/> ([\d\.a-z]+)<\/b><\/span>/)[0][0]
                m << {:version=>version}
        end
	if @body =~ /<img src="http:\/\/www.wireplastik.com\/wplog.php\?al=/
		if @body =~ /[\d\.a-z]+ \| [0-9]+ Template/
			version=@body.scan(/([\d\.a-z]+) \| [0-9]+ Template/)[0][0]
			m << {:version=>version}
		end
	end
        m
end
end
