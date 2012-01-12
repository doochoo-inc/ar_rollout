require 'test_helper'

class ArRolloutTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, ArRollout
  end

  test "Rollout is a ActiveRecord::Base model" do
    assert_kind_of ActiveRecord::Base, Rollout 
  end

end
