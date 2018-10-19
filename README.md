# NavTo
Rails `link_to` wrapper for generating Bootstrap nav items

## Installation
Add the repository to you Gemfile (and then run bundler):
```
gem 'nav_to', git: 'https://github.com/allknowingfrog/nav_to'
```

Then, load the helper file in your application controller:
```
class ApplicationController < ActionController::Base
  helper NavTo::Helper
```

Instead of loading the helper directly, you can also define your own helper and use `super` to customize `nav_to`:
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

## Usage
Generating Bootstrap nav elements tends to require keeping track of active tabs with a hash:
```
link_to 'Books', books_path, class: "nav-link #{'active' if @active_tabs[:main] == :books}"
```

`nav_to` accepts a key/value pair from this hash and does the heavy lifting itself:
```
nav_to :main, :books, books_path
```

By default, `nav_to` uses `titleize` to turn the second argument into a display value. This can be overridden with a `label` value:
```
nav_to :main, :books, books_path, label: 'Library'
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
