# encoding: utf-8

# Copyright 2013 Square Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

require Rails.root.join('app', 'views', 'projects', 'new.html.rb')

module Views
  module Projects
    class Edit < Views::Projects::New
      needs :project

      protected

      def body_content
        article(class: 'container') do
          page_header "Edit settings for #{@project.name}"
          project_form
        end
      end

      def active_tab() 'admin' end
    end
  end
end
