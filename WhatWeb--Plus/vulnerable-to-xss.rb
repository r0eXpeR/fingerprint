Plugin.define do
name "Vulnerable-To-XSS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin can be used as a very basic xss scanner. It searches for instances of <script>alert(*)</script> in the HTML source."
passive do
        m=[]
        result=""
        if @body =~ /<script>([\s]*)(alert\([a-zA-Z0-9\/\'\"]+\))([\s]*[\;]?[\s]*)<\/script>/i
                version = @body.scan(/<script>([\s]*)(alert\([a-zA-Z0-9\/\'\"]+\))[\s]*[\;]?[\s]*<\/script>/i) { |match|
                        result << "#{match} "
                }
                m << {:version=>result, :certainty=>25}
        end
        m
end
end
