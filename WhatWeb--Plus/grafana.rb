Plugin.define do
	name "Grafana"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "Grafana is a multi-platform open source analytics and interactive visualization web application. It provides charts, graphs, and alerts for the web when connected to supported data sources. It is expandable through a plug-in system. End users can create complex monitoring dashboards using interactive query builders. It is written in Go."
	website "https://github.com/grafana/grafana"
	dorks [
		'intitle:Grafana "Welcome to Grafana"'
	]
	matches [
		{ :name => "title", :status => 200, :text => "<title>Grafana</title>" },
		{ :name => "window.grafanaBootData version", :version => /window.grafanaBootData = {.*"version":"([^\"]+)"/m }
	] 
end
