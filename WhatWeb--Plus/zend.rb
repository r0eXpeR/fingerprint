Plugin.define do
name "Zend"
authors [
  "Aung Khant <http://yehg.net>",

  "Andrew Horton", 

]
version "0.5"
description "Zend PHP Framework (http://framework.zend.com/) and Zend Server (http://zend.com) Detection"
matches [
    {:name=>'GHDB: "Powered by Zend Framework"',:certainty=>75,:ghdb=>'"Powered by Zend Framework"'},
    {:regexp=>/Zend Framework/, :search=>"headers[x-powered-by]"},
    {:regexp=>/Zend(?:Server)?(?:[\s.]?([0-9.]+))?/,:offset=>1, :search=>'headers[x-powered-by]'},
    {:regexp=>/^Zend /, :search=>"headers[server]"},
    {:string=>'Footer Link',:text=>' alt="Powered by Zend Framework!" />'},
    {:string=>'Null Controller',:url=>randstr(),:regexp=>/<h1>Controller\/action not found!<\/h1>(\r\n|\n)<p>Controller\/action not found!<\/p>/},
    {:string=>'Null Controller',:url=>randstr(),:text=>'controllers/images/PoweredBy_ZF.gif" alt="Powerd by Zend Framework!" />'},
    {:string=>'PoweredBy Image',:url=>'images/PoweredBy_ZF.gif',:md5=>'eecf384879cde19f8f7f80c768c12295'},
    {:string=>'Zend Logo Small',:url=>'images/logo_small.gif',:md5=>'0f76017aa12a3dcb9cabbff26e37ff5c'},
    {:string=>'Zend_Controller_Dispatcher_Exception',:url=>randstr(),:text=>"<b>Fatal error</b>:  Uncaught exception 'Zend_Controller_Dispatcher_Exception"},
    {:string=>'Zend_Controller_Dispatcher_Exception',:url=>randstr(),:text=>'( ! )</span> Zend_Controller_Dispatcher_Exception: Invalid controller specified (application) in'},
    {:string=>'Zend_Controller_Router_Exception',:url=>randstr(),:text=>"/Zend/Controller/Router/Rewrite.php</b> on line <b>"},
    {:string=>'Zend_Controller_Router_Exception',:url=>randstr(),:text=>"Uncaught exception 'Zend_Controller_Router_Exception' with message 'No route matched the request'"},
    {:text=>'<meta name="vendor" content="Zend Technologies'},
    {:version=>/<meta name="generator" content="Zend.com CMS ([\d\.]+)"/},
    {:version=>/Zend Core\/([a-zA-Z0-9\.\/\+\-\(\)]+)/, :string=>"Core", :search=>"headers[server]"},
    {:version=>/Zend Core\/([a-zA-Z0-9\.\/\+\-\(\)]+)/, :string=>"Core", :search=>"headers[x-powered-by]"},
    {:version=>/Zend Framework ([a-zA-Z0-9\.\/\+\-\(\)]+)/, :string=>"Framework", :search=>"headers[x-powered-by]"}
]
aggressive do
	m=[]
	aggressive_target = Target.new(@base_uri.to_s)
	aggressive_target.http_options={:method=>"POST", :data=> {"whatweb"=>"true"} }
	aggressive_target.open
	unless aggressive_target.body.nil?
		if aggressive_target.body =~ /<h1>Application error!<\/h1>(\r\n|\n)<p>An application error occured!<\/p>/
			m << {:string=>"Invalid Post Method"}
		end
	end
	m 
end
end
