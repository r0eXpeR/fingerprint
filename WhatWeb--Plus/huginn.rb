Plugin.define do
	name "Huginn"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "Huginn is a system for building agents that perform automated tasks for you online. They can read the web, watch for events, and take actions on your behalf. Huginn's Agents create and consume events, propagating them along a directed graph. Think of it as a hackable version of IFTTT or Zapier on your own server."
	website "https://github.com/huginn/huginn"
	dorks [
	'"Your agents are standing by" "Huginn monitors the world and acts on your behalf." Login Signup',
	]
	matches [
		{ :text => '<a tabindex="-1" href="https://github.com/huginn/huginn">About</a>' }
	] 
end
