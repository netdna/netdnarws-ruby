require "minitest/autorun"
require "minitest/reporters"

require "./lib/netdnarws"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class NetDNA < Minitest::Test
  def setup
    @max = NetDNARWS::NetDNA.new('alias', 'key', 'secret')
  end

  def test_is_a_maxcdn_client
    assert_kind_of MaxCDN::Client, @max
  end

  def test_has_method_debug
    # because old netdnarws didn't
    assert @max.respond_to?(:debug)
    assert @max.respond_to?(:debug=)
  end

  def test_has_hash_ext_to_params
    # because old netdnarws didn't
    assert Hash.new.respond_to?(:to_params)
  end
end
