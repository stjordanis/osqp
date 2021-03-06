# stdlib
require "fiddle/import"

# modules
require "osqp/solver"
require "osqp/version"

module OSQP
  class Error < StandardError; end

  def self.lib_version
    FFI.osqp_version.to_s
  end

  # friendlier error message
  autoload :FFI, "osqp/ffi"
end
