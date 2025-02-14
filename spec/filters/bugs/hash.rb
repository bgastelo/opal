# NOTE: run bin/format-filters after changing this file
opal_filter "Hash" do
  fails "Hash#== compares keys with eql? semantics" # Expected true to be false
  fails "Hash#== computes equality for complex recursive hashes" # Exception: Maximum call stack size exceeded
  fails "Hash#== computes equality for recursive hashes & arrays" # Exception: Maximum call stack size exceeded
  fails "Hash#[] compares keys with eql? semantics" # Expected "x" == nil to be truthy but was false
  fails "Hash#[] does not create copies of the immediate default value" # NotImplementedError: String#<< not supported. Mutable String methods are not supported in Opal.
  fails "Hash#[] does not dispatch to hash for Boolean, Integer, Float, String, or Symbol" # NoMethodError: undefined method `tmp' for #<MSpecEnv:0x6576>
  fails "Hash#[]= does not dispatch to hash for Boolean, Integer, Float, String, or Symbol" # NoMethodError: undefined method `tmp' for #<MSpecEnv:0x7e042 @method="[]=" @object=nil>
  fails "Hash#[]= keeps the existing String key in the hash if there is a matching one" # Expected "foo" not to be identical to "foo"
  fails "Hash#compare_by_identity gives different identity for string literals" # Expected [2] == [1, 2] to be truthy but was false
  fails "Hash#each always yields an Array of 2 elements, even when given a callable of arity 2" # Expected ArgumentError but no exception was raised ({"a"=>1} was returned)
  fails "Hash#each_pair always yields an Array of 2 elements, even when given a callable of arity 2" # Expected ArgumentError but no exception was raised ({"a"=>1} was returned)
  fails "Hash#eql? compares keys with eql? semantics" # Expected true to be false
  fails "Hash#eql? computes equality for complex recursive hashes" # Exception: Maximum call stack size exceeded
  fails "Hash#eql? computes equality for recursive hashes & arrays" # Exception: Maximum call stack size exceeded
  fails "Hash#except always returns a Hash without a default" # Expected #<Class:0x8666> == Hash to be truthy but was false
  fails "Hash#hash allows ommiting values" # NameError: uninitialized constant MSpecEnv::a
  fails "Hash#inspect calls #to_s on the object returned from #inspect if the Object isn't a String" # Expected "{\"a\"=>abc}" == "{:a=>abc}" to be truthy but was false
  fails "Hash#inspect does not call #to_s on a String returned from #inspect" # Expected "{\"a\"=>\"abc\"}" == "{:a=>\"abc\"}" to be truthy but was false
  fails "Hash#inspect does not call #to_str on the object returned from #inspect when it is not a String" # Expected "{\"a\"=>#<MockObject:0x40e02>}" =~ /^\{:a=>#<MockObject:0x[0-9a-f]+>\}$/ to be truthy but was nil
  fails "Hash#inspect does not call #to_str on the object returned from #to_s when it is not a String" # Exception: Cannot convert object to primitive value
  fails "Hash#invert compares new keys with eql? semantics" # Expected "b" == "a" to be truthy but was false
  fails "Hash#rehash removes duplicate keys for large hashes" # Expected 102 == 101 to be truthy but was false
  fails "Hash#rehash removes duplicate keys" # Expected 2 == 1 to be truthy but was false
  fails "Hash#store does not dispatch to hash for Boolean, Integer, Float, String, or Symbol" # NoMethodError: undefined method `tmp' for #<MSpecEnv:0x627dc @method="store" @object=nil>
  fails "Hash#store keeps the existing String key in the hash if there is a matching one" # Expected "foo" not to be identical to "foo"
  fails "Hash#to_h with block does not coerce returned pair to Array with #to_a" # Expected TypeError (/wrong element type MockObject/) but got: TypeError (wrong element type NilClass at 0 (expected array))
  fails "Hash#to_h with block raises ArgumentError if block returns longer or shorter array" # Expected ArgumentError (/element has wrong array length/) but got: ArgumentError (wrong array length at 0 (expected 2, was 3))
  fails "Hash#to_h with block raises TypeError if block returns something other than Array" # Expected TypeError (/wrong element type String/) but got: TypeError (wrong element type NilClass at 0 (expected array))
  fails "Hash#to_proc the returned proc has an arity of 1" # Expected -1 == 1 to be truthy but was false
  fails "Hash#to_proc the returned proc is a lambda" # Expected #<Proc:0x42df6>.lambda? to be truthy but was false
  fails "Hash#to_s calls #to_s on the object returned from #inspect if the Object isn't a String" # Expected "{\"a\"=>abc}" == "{:a=>abc}" to be truthy but was false
  fails "Hash#to_s does not call #to_s on a String returned from #inspect" # Expected "{\"a\"=>\"abc\"}" == "{:a=>\"abc\"}" to be truthy but was false
  fails "Hash#to_s does not call #to_str on the object returned from #inspect when it is not a String" # Expected "{\"a\"=>#<MockObject:0xb4f9a>}" =~ /^\{:a=>#<MockObject:0x[0-9a-f]+>\}$/ to be truthy but was nil
  fails "Hash#to_s does not call #to_str on the object returned from #to_s when it is not a String" # Exception: Cannot convert object to primitive value
  fails "Hash#transform_keys allows a combination of hash and block argument" # ArgumentError: [Hash#transform_keys] wrong number of arguments (given 1, expected 0)
  fails "Hash#transform_keys allows a hash argument" # ArgumentError: [Hash#transform_keys] wrong number of arguments (given 1, expected 0)
  fails "Hash#transform_keys allows a partial transformation of keys when using a hash argument" # ArgumentError: [Hash#transform_keys] wrong number of arguments (given 1, expected 0)
  fails "Hash#transform_keys! allows a hash argument" # ArgumentError: [Hash#transform_keys!] wrong number of arguments (given 1, expected 0)
  fails "Hash#transform_keys! on frozen instance raises a FrozenError on hash argument" # Expected FrozenError but got: ArgumentError ([Hash#transform_keys!] wrong number of arguments (given 1, expected 0))
  fails "Hash#transform_keys! prevents conflicts between new keys and old ones" # Expected {"e"=>1} == {"b"=>1, "c"=>2, "d"=>3, "e"=>4} to be truthy but was false
  fails "Hash#transform_keys! returns the processed keys and non evaluated keys if we break from the block" # Expected {"c"=>1, "d"=>4} == {"b"=>1, "c"=>2, "d"=>4} to be truthy but was false
  fails "Hash.[] raises for elements that are not arrays" # Expected ArgumentError but no exception was raised (nil was returned)
  fails "Hash.ruby2_keywords_hash copies instance variables" # Expected nil == 42 to be truthy but was false
  fails "Hash.ruby2_keywords_hash raises TypeError for non-Hash" # Expected TypeError but no exception was raised (nil was returned)
  fails "Hash.ruby2_keywords_hash returns a copy of a Hash and marks the copy as a keywords Hash" # Expected false == true to be truthy but was false
  fails "Hash.ruby2_keywords_hash returns an instance of the subclass if called on an instance of a subclass of Hash" # Expected false == true to be truthy but was false
  fails "Hash.ruby2_keywords_hash? raises TypeError for non-Hash" # Expected TypeError but no exception was raised (false was returned)
  fails "Hash.ruby2_keywords_hash? returns true if the Hash is a keywords Hash marked by Module#ruby2_keywords" # Expected false == true to be truthy but was false  
end
