require "active_support/core_ext/module/attribute_accessors"
require "chartkick"
require "groupdate"

require "searchjoy/track"
require "searchjoy/engine" if defined?(Rails)
require "searchjoy/version"

module Searchjoy
  # time zone
  mattr_reader :time_zone
  def self.time_zone=(time_zone)
    @@time_zone = time_zone.is_a?(String) ? ActiveSupport::TimeZone.new(time_zone) : time_zone
  end

  # top searches
  mattr_accessor :top_searches
  self.top_searches = 100

  # conversion name
  mattr_accessor :conversion_name
  mattr_accessor :query_name
  mattr_accessor :query_url
end
