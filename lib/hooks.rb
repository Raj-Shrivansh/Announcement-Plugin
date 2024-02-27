class Hooks < Redmine::Hook::ViewListener
    def view_layouts_base_html_head(context = {})
      stylesheet_link_tag('announcement.css', :plugin => :redmineflux_announcement) +
      javascript_include_tag('announcement.js', :plugin => :redmineflux_announcement)
    end     
end

