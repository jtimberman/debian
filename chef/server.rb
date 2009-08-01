# Configuration File For Chef (chef-server)
# 
# chef-server is a Merb application slice. By default on Debian, it is 
# configured to run as a mod_rack Passenger application under Apache.
#
# This file configures the behavior of the running server itself.
#
# Chef uses a Ruby DSL for configuration, and this file contains a few
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
# log_level specifies the level of verbosity for output.
# valid values are: :debug, :info, :warn, :error, :fatal

log_level          :info

# log_location specifies where the server should log to.
# valid values are: a quoted string specifying a file, or STDOUT with
# no quotes. This is the application log for the Merb workers that get
# spawned by Passenger. Apache and Passenger will log to the files specified
# in the vhost.

log_location       "/var/log/chef/server.log"

# ssl_verify_mode specifies if the REST client should verify SSL certificates.
# valid values are :verify_none, :verify_peer. The default Chef Server 
# installation on Debian will use a self-generated SSL certificate so this
# should be :verify_none unless you replace the certificate.

ssl_verify_mode    :verify_none

# registration_url specifies the URL which clients retrieve to register.
# valid values are any HTTP URL.

registration_url   "https://localhost"

# openid_url specifies the URL where the server's OpenID relay is listening.
# valid values are any HTTP URL. The default server configuration is set to
# use a vhost running on port 444 for this.
#
# NOTE: The client/server openid communication will be removed in favor of a
# pre-shared key authentication and authorization architecture in a future 
# release of Chef. This is currently scheduled for version 0.8.0.

openid_url         "https://localhost:444"

# template_url specifies the URL where clients should retrieve templates.
# valid values are any HTTP URL.

template_url       "https://localhost"

# remotefile_url specifies the URL where clients should retrieve remote 
# static file and directory contents.
# valid values are any HTTP URL.

remotefile_url     "https://localhost"

# search_url specifies the URL where the client should send queries for search
# indexes.
# valid values are any HTTP URL.

search_url         "https://localhost"

# role_url specifies the URL where the client should look for role data.
# valid values are any HTTP URL.

role_url           "https://localhost"

# file_cache_path specifies where the client should cache cookbooks, server
# cookie ID, and openid registration data.
# valid value is any filesystem directory location.

file_cache_path    "/var/cache/chef"

# validation_token specifies a token that clients can use to automatically authorize
# with the server, normally this must be done through the webui.
# valid value is a string. This should be alphanumeric, otherwise unexpected things 
# may occur. This is commented out so the default value gets set to nil (invalid,
# unusable) so we're not shipping a default known value. If you want to use this
# feature, you'll need to uncomment it, set a good value (random strings of 20+ 
# characters work well), and restart the chef-server.

#validation_token   ""

# cookbook_path is a Ruby array of filesystem locations to search for cookbooks.
# valid value is a string, or an array of strings of filesystem directory locations.
# This setting is searched beginning (index 0) to end in order. You might specify
# multiple search paths for cookbooks if you want to use an upstream source, and
# provide localised "site" overrides.
# The default value, /srv/chef/cookbooks does not contain any cookbooks by default.
# See the Chef Wiki for more information about setting up a local repository for
# working on cookbooks.
# http://wiki.opscode.com/display/chef/Chef+Repository

#cookbook_path      [ "/srv/chef/site-cookbooks", "/srv/chef/cookbooks" ]
cookbook_path      [ "/srv/chef/cookbooks" ]

# file_cache_path specifies where the client should cache cookbooks, server
# cookie ID, and openid registration data.
# valid value is any filesystem directory location.

file_cache_path    "/var/cache/chef"

# node_path specifies a location for where to find node-specific recipes.
# valid values are any filesystem direcory location.

node_path          "/srv/chef/nodes"

# openid_store_path specifies a location where to keep openid nonces for clients.
# valid values are any filesystem directory location.

openid_store_path  "/var/lib/chef/openid/store"

# openid_store_path specifies a location where to keep openid nonces for clients.
# valid values are any filesystem directory location.

openid_cstore_path "/var/lib/chef/openid/cstore"

# search_index_path tells the indexer where to store search indexes.
# valid values are any filesystem directory location.

search_index_path  "/var/lib/chef/search_index"

# role_path designates where the server should load role JSON and Ruby DSL 
# files from.
# valid values are any filesystem directory location. Roles are a feature 
# that allow you to easily reuse lists of recipes and attribute settings.
# Please see the Chef Wiki page for information on how to utilize the feature.
# http://wiki.opscode.com/display/chef/Roles

role_path          "/srv/chef/roles"

# Chef::Log::Formatter.show_time specifies whether the chef-client log should
# contain timestamps. 
# valid values are true or false (no quotes, see above about Ruby idioms). The
# printed timestamp is rfc2822, for example:
# Fri, 31 Jul 2009 19:19:46 -0600

Chef::Log::Formatter.show_time = true

