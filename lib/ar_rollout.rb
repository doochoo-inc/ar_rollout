require 'ar_rollout/rollout.rb'
require 'ar_rollout/helper.rb'
module ArRollout
  def self.configure
    yield self
  end

  def self.define_group(name, &block)
    puts "match_#{name}?"
    Rollout.send :define_method, "match_#{name}?" do |b|
      block.call(b)
    end
  end
end

ActionController::Base.send :include, ArRollout::Controller::Helpers
