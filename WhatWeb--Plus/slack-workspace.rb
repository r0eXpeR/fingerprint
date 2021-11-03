Plugin.define do
name "Slack-Workspace"
authors [
  'bcoles', 
]
version "0.1"
description "A Slack workspace is made up of channels where team members can communicate and work together. When you join a workspace, you'll need to create a Slack account using your email address."
website "https://slack.com/intl/en/help/articles/212675257-Join-a-Slack-workspace"
dorks [
]
matches [
]
passive do
  m = []
  return m unless @base_uri.to_s =~ %r{^https://[^\s^/]+?\.slack\.com}
  team_name = @body.to_s.scan(%r{teamName&quot;:&quot;(.+?)&quot;}).flatten.first
  if team_name
    m << { :string=>team_name }
  end
  email_domain = @body.to_s.scan(%r{formattedEmailDomains&quot;:&quot;(.+?)&quot;}).flatten.first
  if email_domain
    m << { :string=>email_domain }
  end
  m
end
end
