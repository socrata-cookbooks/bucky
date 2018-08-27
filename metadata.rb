# frozen_string_literal: true

name 'bucky'
maintainer 'Socrata Engineering'
maintainer_email 'sysadmin@socrata.com'
license 'All rights reserved'
description 'Installs and configures Bucky'
long_description 'Installs and configures Bucky'
version '0.3.0'
chef_version '>= 12.1'

source_url 'https://github.com/socrata-cookbooks/bucky'
issues_url 'https://github.com/socrata-cookbooks/bucky/issues'

depends 'runit'
depends 'snu_python'

supports 'ubuntu'
