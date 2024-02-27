Redmine::Plugin.register :redmineflux_announcement do
  name 'Redmineflux Announcement plugin'
  author 'Raj Shrivansh'
  description 'This is a plugin for Announcement in Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end
require_dependency File.expand_path('../lib/hooks', __FILE__)