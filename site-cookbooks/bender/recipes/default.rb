require 'yaml'
include_recipe "bender::base"
include_recipe "bender::containers"
include_recipe "bender::firewall"
include_recipe "bender::nginx"
include_recipe "bender::monitoring"
