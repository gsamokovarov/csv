# frozen_string_literal: false

require_relative "../helper"

class TestCSVInterfaceRead < Test::Unit::TestCase
  def test_stringio_missing_methods_delegation
    csv = CSV.new("h1,h2")

    assert_equal(nil, csv.binmode?)
    assert_equal(nil, csv.flock(0))
    assert_equal(nil, csv.ioctl(0, 0))
    assert_equal(nil, csv.path)
    assert_equal(nil, csv.stat)
    assert_equal(0, csv.to_i)
    assert_instance_of(StringIO, csv.to_io)
  end
end
