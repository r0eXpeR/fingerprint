Plugin.define do
name "Artifactory"
authors [
  "bcoles", 

]
version "0.1"
description "JFrog Artifactory enterprise universal repository manager supports all major packages, enterprise ready secure, clustered, HA, Docker registry, multi-site replication and scalable."
website "https://jfrog.com/artifactory/"
dorks [
'"Artifactory is happily serving" "Artifactory Version" intitle:"Artifactory"'
]
matches [
    {:regexp=>/<span class="version">Artifactory(?: Pro)?(?: Power Pack)?(?: ([\d.]+))?/,:offset=>1},
    {:regexp=>/wicket.resource.org\.artifactory\./, :search=>'body'},
    {:text=>'<body jf-body-class ng-class="{\'load-complete\':jfBodyClass.isLoadCompleted()}">'},
    {:text=>'<html ng-app="artifactory.ui">'},
    {:url=>'/artifactory/ui/auth/screen/footer', :version=>/"buildNumber":"([\d\.]+ rev \d+)"/},
    {:url=>'/ui/auth/screen/footer', :version=>/"buildNumber":"([\d\.]+ rev \d+)"/}
]
end
