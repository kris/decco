# Decco

A simple, light weight decorator system based on PORO. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'decco'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install decco

## Usage

```ruby
# Attempt to decorate based on object
instance = Decco.decorate(@user) # UserDecorator
instance.gravatar
```

If you're using Rails, you get a convenient helper
```ruby
d(@user).gravatar
```

To define a decorator
```ruby
class UserDecorator
  def initialize(user, view)
    @user = user
    @view = view
  end
  
  def gravatar(options = {})
    hash = Digest::MD5.hexdigest(@user.email)
    gravatar_url = "http://www.gravatar.com/avatar/#{hash}?#{options.to_query}"
    @view.image_tag gravatar_url
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/d/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
