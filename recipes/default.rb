# Encoding: UTF-8
#
# Cookbook Name:: bucky
# Recipe:: default
#
# Copyright 2015-2016, Socrata, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'snu_python'
include_recipe 'runit'

python_package 'bucky' do
  python '2'
  version node['bucky']['version']
end

directory node['bucky']['log_dir'] do
  owner node['bucky']['user']
  group node['bucky']['group']
  action :create
end

template '/etc/bucky.conf' do
  source 'bucky.conf.erb'
  owner node['bucky']['user']
  group node['bucky']['group']
  mode '0644'
  notifies :restart, 'runit_service[bucky]', :delayed
end

runit_service 'bucky' do
  owner   'root'
  group   'root'
  options 'log_dir' => node['bucky']['log_dir'],
          'exe'  => node['bucky']['exe'],
          'opts' => "#{node['bucky']['opts'].join(' ')}" \
                    " --graphite-ip=#{node['bucky']['graphite-url']}" \
                    " --graphite-port=#{node['bucky']['graphite-port']}"
end
