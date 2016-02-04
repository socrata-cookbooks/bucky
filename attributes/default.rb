# Encoding: UTF-8
#
# Cookbook Name:: bucky
# Attributes:: default
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

default['bucky']['version'] = '2.3.0'
default['bucky']['user']    = 'root'
default['bucky']['group']   = 'root'
default['bucky']['log_dir'] = '/var/log/bucky'
default['bucky']['exe']     = '/usr/local/bin/bucky'
default['bucky']['opts']    = %w(/etc/bucky.conf)

default['bucky']['metricsd_enabled'] = true
default['bucky']['metricsd_ip'] = '0.0.0.0'
default['bucky']['metricsd_port'] = 23632

default['bucky']['collectd_enabled'] = true
default['bucky']['collectd_ip'] = '0.0.0.0'
default['bucky']['collectd_port'] = 25826

default['bucky']['statsd_enabled'] = true
default['bucky']['statsd_ip'] = '0.0.0.0'
default['bucky']['statsd_port'] = 8125

default['bucky']['name_host_trim_array'] = nil
default['bucky']['name_prefix'] = nil

default['bucky']['name_postfix'] = nil

# These must be set per environment
default['bucky']['graphite-url']  = nil
default['bucky']['graphite-port'] = nil
