# NavTo
Rails link helper for generating Bootstrap nav items

## Usage
For default `nav_to` behavior, load the helper file in your application controller:
```
class ApplicationController < ActionController::Base
  helper NavTo::Helper
```

To customize behavior, define your own helper instead:
```
module NavToHelper
  include NavTo::Helper

  def nav_to(nav, tab, path, options={})
    options[:id] = "#{nav}_#{tab}_tab"
    super(nav, tab, path, options)
  end
end
```

To use an alternate name for the tabs hash, define `hash_name` in an initializer:
```
NavTo.hash_name = :tabs
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
