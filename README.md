# Changes to be made (reference Sauce Account)

```
	export SAUCE_USERNAME=your_username
	export SAUCE_ACCESS_KEY=your_access_key
```

# Setup
install bundler: `gem install bundler  # use sudo if necessary`

install gems: `bundle install  # use sudo if necessary`

# Running tests
to run tests: `rake sauce:features`

to run tests with junit reporting enabled:

```
	rake sauce:features test_options='--format pretty --format junit --out .'
```
