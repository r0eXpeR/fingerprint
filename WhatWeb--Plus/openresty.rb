Plugin.define do
	name "OpenResty"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "OpenResty® is a dynamic web platform based on NGINX and LuaJIT."
	website "https://openresty.org/"
	dorks [
	'"If you see this page, the OpenResty web platform is successfully installed"',
	]
matches [
    {:regexp=>/<hr><center>openresty<\/center>\s*<\/body>\s*<\/html>/},
    {:search=>"headers[server]", :version=>/^openresty\/(.*)/},
    {:search=>'headers[server]',:offset=>1, :regexp=>/openresty(?:.([\d.]+))?/},
    {:text=>"If you see this page, the OpenResty web platform is successfully installed and working"}
]
end
