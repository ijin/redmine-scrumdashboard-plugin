require 'redmine'

Redmine::Plugin.register :redmine_scrumdashboard do
  name 'Scrumdashboard plugin'
  author 'Brokenteam'
  description 'This is a plugin for adding a scrum dashboard to Redmine.'
  version '1.2'

  project_module :redmine_scrumdashboard do
    permission :dashboard, { :dashboard => :index }, :public => true
    permission :edit_dashboard, { :dashboard => :settings }, :public => false
  end

  menu :project_menu, :dashboard, { :controller => 'dashboard', :action => 'index' }, :caption => :label_dashboard, :after => :activity, :param => :id
end
