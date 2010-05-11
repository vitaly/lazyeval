# Lazyeval

Homepage: [http://github.com/vitaly/lazyeval/](http://github.com/vitaly/lazyeval/)

This GEM allows to call methods lazily. The actual work will not be performed
until the result is used. There's no promise/force semantics, just a single
call (or block) is stored and executed the first time the (lazy) result is
accessed.

## USAGE

### simple lazy call

	user = User.lazy.find(:first) # will not access a db
	puts user.name # this will actually perform the find and then get the name from
				   # the result

### example for a lazy block

	user_name = User.lazy { |user| user.find(:first).user_name } # no db access
	puts user_name # db will be accessed here

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version
  unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a
  commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2010 Vitaly Kushner. See LICENSE for details.
