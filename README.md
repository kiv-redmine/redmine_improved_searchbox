Redmine per project formatting plugin
=======================

[![Build Status](https://travis-ci.org/kiv-redmine/redmine_improved_searchbox.svg?branch=testing)](https://travis-ci.org/kiv-redmine/redmine_improved_searchbox) [![Inline docs](http://inch-ci.org/github/kiv-redmine/redmine_improved_searchbox.svg?branch=master)](http://inch-ci.org/github/kiv-redmine/redmine_improved_searchbox)

This plugin switch default select for project choosing to select2
plugin.

Plugin installation and setup
-----------------------------

1. Copy the plugin directory into the plugins directory (make sure the name is redmine_per_project_formatting)
2. Start Redmine

How it looks like?
------------------

![Screenshot](https://raw.githubusercontent.com/kiv-redmine/redmine_improved_searchbox/master/screenshot.png)

How to run build on travis?
---------------------------
First of all try to run tests in your environment:

```ruby
ruby plugins/redmine_more_blocks_extension/test/**/*.rb
```

If everyhting is ok, push your changes into master branch and run merge script, which merge master into testing and push to remote (github):

```bash
./push_for_test.sh
```
