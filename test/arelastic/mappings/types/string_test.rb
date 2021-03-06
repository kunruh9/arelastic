require 'helper'

class Arelastic::Mappings::StringTest < Minitest::Test
  def test_as_elastic
    type = Arelastic::Mappings::String.new('message', 'index' => 'analyzed')
    expected = {'message' => {'type' => 'string', 'index' => 'analyzed'}}

    assert_equal expected, type.as_elastic
  end
end