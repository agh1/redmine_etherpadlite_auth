require 'redmine'
require_dependency 'redmine_etherpadlite_auth/hooks'

Redmine::Plugin.register :redmine_etherpadlite_auth do
  name 'Redmine Etherpad-lite Authentication Plugin'
  author 'Andrew Hunt'
  description 'Authenticate with etherpad-lite when you log in to Redmine'
  version '0.0.1'
  url 'https://github.com/agh1/redmine_etherpadlite_auth'
  author_url 'https://aghstrategies.com'
end
