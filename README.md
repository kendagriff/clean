# Clean

Provides a set of generators for implementing DCI, a simple and clean development pattern.

## Generators

### Data

```
clean data teachers:user
```

Generates:

##### test/unit/teachers/user_test.rb
```
require 'test_helper'

module Teachers
  class UserTest < ActiveSupport::TestCase
    setup do
    end

    test "do something" do
    end
  end
end
```

##### app/models/teachers/user.rb
```
module Teachers
  class User
    # attr_accessor :name, :title
  end
end
```

### Roles

```
clean role teachers:admin
```

##### test/unit/roles/teachers/admin_test.rb
```
require 'test_helper'

module Teachers
  class AdminTest < ActiveSupport::TestCase
    setup do
    end

    test "do something" do
    end
  end
end
```

##### app/models/teachers/admin.rb
```
module Teachers
  module Admin
    def do_something
      # Behavior here...
    end
  end
end
```
