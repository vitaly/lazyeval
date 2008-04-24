== Lazyeval

* http://github.com/vitaly/lazyeval/

== DESCRIPTION

This GEM allows to call methods lazily. i.e. the actual work will not be
performed until the result is used.  There's no promise/force semantics. just a
single call (or block) is stored and executed the first time the (lazy) result
is accessed.

== EXAMPLES OF USAGE


# simple lazy call
user = User.lazy.find(:first) # will not access a db
puts user.name # this will actually perform the find and then get the name from
               # the result

# example for a lazy block
user_name = User.lazy { |user| user.find(:first).user_name } # no db access
puts user_name # db will be accessed here
