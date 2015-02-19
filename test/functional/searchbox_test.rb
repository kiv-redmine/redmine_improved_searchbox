# encoding: utf-8
#
# This file is a part of search box
#
# @author Strnadj <jan.strnadek@gmail.com>

require File.expand_path('../../test_helper', __FILE__)

class SearchboxTest < ActionController::TestCase
  tests ::WelcomeController
  fixtures :projects, :versions, :users, :roles, :members,
           :member_roles, :issues, :journals, :journal_details,
           :trackers, :projects_trackers, :issue_statuses,
           :enabled_modules, :enumerations, :boards, :messages,
           :attachments, :custom_fields, :custom_values, :time_entries

  def setup
    @request.session[:user_id] = 2
    Setting.default_language = 'en'
  end


  def test_textile_formatter
    get :index

    # Test presence of select2 etc..
    scripts = css_select("script[src], link[href]")
    found_scripts = 0
    test_scripts = %w(select2.min select2.css redmine_improved_searchbox.css redmine_improved_searchbox.js)

    scripts.each do |script|
      test_scripts.each do |script_name|
        if (script['src'] || script['href']).include? script_name
          found_scripts += 1
        end
      end
    end

    assert_equal found_scripts, test_scripts.count

    # There will be nice to use javascript test framework such as capybara
    # with javascript driver
  end
end
