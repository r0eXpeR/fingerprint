Plugin.define do
name "OpenSearch"
authors [
  "Caleb Anderson",

]
version "0.2"
description "This plugin identifies open search and extracts the URL. OpenSearch is a collection of simple formats for the sharing of search results."
matches [
{:name=>"open search",
:regexp=>/<link[^>]+type=["']?application\/opensearchdescription\+xml['"]?[^>]*>/i },
{ :string=>/<link[^>]+href[\s]*=[\s]*["']([^'^"^>]+)["'][^>]+type[\s]*=[\s]*["']?application\/opensearchdescription\+xml['"]?[^>]*>/i },
{ :string=>/<link[^>]+type[\s]*=[\s]*["']?application\/opensearchdescription\+xml['"]?[^>]+href[\s]*=[\s]*["']([^'^"^>]+)["'][^>]*>/i },
]
end
