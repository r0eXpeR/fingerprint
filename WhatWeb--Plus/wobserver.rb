Plugin.define do
	name "Wobserver"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "Wobserver is a web based metrics, monitoring, and observer drop-in system for web apps. It is written in Elixir (based on Erlang), and available as a plugin for Phoenix web applications."
	website "https://github.com/shinyscorpion/wobserver"
	matches [
		{ :text => '<meta name="description" content="A web based version of the Erlang observer.">' },
		{ :text => '<title>Wobserver</title>' },
		{ :url => "/wobserver/api/system", :status=>200, :name=> 'system_architecture', :string => /system_architecture":"([^"]+)"/ },
		{ :url => "/wobserver/api/system", :status=>200, :name=> 'elixir_version', :string => /elixir_version":"([^"]+)"/ },
		{ :url => "/wobserver/api/system", :status=>200, :name=> 'erts_version', :string => /erts_version":"([^"]+)"/ },
	] 
end
