Plugin.define do
name "Microsoft-ODBC-Error"
authors [
  "Caleb Anderson",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin identifies Microsoft ODBC error codes."
passive do
	m=[]
	if @body =~ /\[ODBC/
		m << { :certainty=>25, :string=>@body.scan(/ODBC Error Code = ([a-zA-Z0-9]{3,5}) \(/) }
	end
	m
end
end
