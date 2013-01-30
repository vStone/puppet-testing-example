require 'digest/sha1'
module Puppet::Parser::Functions
  newfunction(:mysql_password, :type => :rvalue) do |args|
    raise(Puppet::ParseError, 'mysql_password(): Argument must be a string') unless args[0].is_a?(String)
    '*' + Digest::SHA1.hexdigest(Digest::SHA1.digest(args[0])).upcase
  end
end
