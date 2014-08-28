# Elasticsearch cookbook

Installs and configures
[Elasticsearch](http://www.elasticsearch.org/overview/elasticsearch/)

This project is managed by the [IceMobile](http://www.icemobile.com)
Operations team and highly opinionated.

## Requirements

- Chef 11 or higher
- [Yum cookbook](https://github.com/opscode-cookbooks/yum)

## Attributes
In order to keep the README manageable and in sync with the attributes,
this cookbook documents attributes inline. The usage instructions and
default values for attributes can be found in the individual attribute
files.

## Recipes

### config
The config recipe will enable the elasticsearch service to start at
boot and if its not running it will start the service. It defines
support for status, restart and reload commands.

### default
The default recipe includes all the others to provide an easy way to use
the recipe.

### packages
The packages recipe will fist install the java package which is
configured in the attributes file. When Java is installed it will
install the elasticsearch package following the configured atributes.

### repository
The repository recipe will setup the relevant yum repository by making
use of the yum_repository handler. It uses the attributes configured at
the attributes file.

## License & Authors

- Author: Daniel Paulus <daniel.paulus@icemobile.com>

```
Copyright 2014, IceMobile.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
