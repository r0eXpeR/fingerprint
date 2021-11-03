Plugin.define do
name "Qcodo-Development-Framework"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Qcodo Development Framework is an open-source PHP framework that focuses on freeing developers from unnecessary tedious, mundane coding."
website "http://www.qcodo.com/"
dorks [
'"qcodo/_devtools/codegen.php" intitle:"Development Framework - Start Page"'
]
matches [
{ :version=>/<b>PHP Version:<\/b> [^;]+;&nbsp;&nbsp;<b>Zend Engine Version:<\/b> [^;]+;&nbsp;&nbsp;<b>Qcodo Version:<\/b> ([^\(]+) \([^\(]+\)<br \/>/, :string=>"Error" },
]
passive do
	m=[]
	if @body =~ /<title>Qcodo Development Framework - Start Page<\/title>/
		m << { :version=>@body.scan(/<div class="title_action">Qcodo Development Framework ([\d\.]+) \([^\)]+\)<\/div>/) } if @body =~ /<div class="title_action">Qcodo Development Framework ([\d\.]+) \([^\)]+\)<\/div>/
		if @body =~ /<li>QApplication::\$ServerAddress = "([^"]+)"<\/li><li>QApplication::\$Database\[1\] = array \([\r\n]  'adapter' => '([^']+)',[\r\n]  'server' => '([^']+)',[\r\n]  'port' => '?([^'^,]+)'?,[\r\n]  'database' => '([^']+)',[\r\n]  'username' => '([^']+)',[\r\n]  'password' => '([^']+)',[\r\n]  'profiling' => (false|true),/
			db=@body.scan(/<li>QApplication::\$ServerAddress = "([^"]+)"<\/li><li>QApplication::\$Database\[1\] = array \([\r\n]  'adapter' => '([^']+)',[\r\n]  'server' => '([^']+)',[\r\n]  'port' => '?([^'^,]+)'?,[\r\n]  'database' => '([^']+)',[\r\n]  'username' => '([^']+)',[\r\n]  'password' => '([^']+)',[\r\n]  'profiling' => (false|true),/)
			m << { :string=>"Database:"+db[0][4] }
			m << { :account=>db[0][5]+":"+db[0][6]+"@"+db[0][2]+":"+db[0][3] }
		end
	end
	m
end
end
