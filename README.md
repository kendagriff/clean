# Clean

Provides a set of generators for implementing DCI, a simple and clean development pattern, in Rails.

## Generators

### Data

```
rails g data teachers:user
```

Generates:

### ./test/unit/teachers/user.rb
```
require 'test_helper'

module Teacher
  class User < ActiveSupport::TestCase
    setup do
    end

    test "do something" do
    end
  end
end
```

### ./app/models/teachers/user.rb
```
module Teacher
  class User
    # attr_accessor :name, :title
  end
end
```
