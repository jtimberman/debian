# Configuration File For Chef Indexer (chef-indexer) 
#
# The chef-indexer program runs on the Chef Server to generate search indexes
# of node data stored in the Server's CouchDB store. Currently, the search 
# uses ferret, a pure-Ruby search library. In a future version of Chef this 
# will change, so please be aware.
#
# Chef uses a Ruby DSL for configuration, and this file may contain some
# Ruby idioms. First, symbols. These are designated by a colon sigil, ie,
# :value. Second, in Ruby, everything but false and nil (no quotes or other
# designations) is true, including true, the integer 0 and the string "false".
# So to set the value of a setting to false, write:
#
# some_setting false
#
# Third, Ruby class methods can be used, for example we tell the log to show
# the current time stamp with Chef::Log::Formatter.show_time, below.
#
# search_index_path specifies where the indexer should store the indexes.
# valid value is any filesystem directory location.

search_index_path    "/var/lib/chef/search_index"

# pid_file specifies the location of where chef-indexer daemon should keep the 
# pid file.
# valid value is any filesystem file location.

pid_file           "/var/run/chef-client.pid"

# Chef::Log::Formatter.show_time specifies whether the chef-client log should
# contain timestamps. 
# valid values are true or false (no quotes, see above about Ruby idioms). The
# printed timestamp is rfc2822, for example:
# Fri, 31 Jul 2009 19:19:46 -0600

Chef::Log::Formatter.show_time = true
