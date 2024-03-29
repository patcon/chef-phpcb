#
# Cookbook Name:: phpcb
# Recipe:: default
#
# Copyright 2011, Myplanet Digital
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

require_recipe "php"

php_pear_channel "pear.phpunit.de" do 
  action :discover 
end

php_pear "PHP_CodeBrowser" do
  version node['phpcb']['version']
  channel "phpunit"
  action :install
end
