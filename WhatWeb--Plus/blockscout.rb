Plugin.define do
	name "BlockScout"
	authors [
		"Andrew Horton", 

	]
	version "0.1"
	description "BlockScout provides a comprehensive, easy-to-use interface for users to view, confirm, and inspect transactions on EVM (Ethereum Virtual Machine) blockchains. This includes the POA Network, xDai Chain, Ethereum Classic and other Ethereum testnets, private networks and sidechains. BlockScout is opensource, licensed under GPLv3 and developed with Elixir. Many crypto currencies or tokens use this project."
	website "https://github.com/poanetwork/blockscout/"
	dorks [
	'BlockScout explorer'
	]
	matches [
		{ :name => "footer-info-text", :text => '<p class="footer-info-text">Blockscout is a' },
		{ :name => "input-group", :text => '<div class="input-group" title=\'Search by address, token symbol name, transaction hash, or block number\'>' },
		{ :name => "GitHub footer link", :version => /Version: <a href="https:\/\/github.com\/[^\/]+\/blockscout\/.*" class="footer-link" target="_blank">([^<]+)</ },
		{ :url => "/admin", :status => 200, :text => '<h2 class="card-title text-center" data-test="administrator_login">Administrator Login</h2>' }
	]
end
