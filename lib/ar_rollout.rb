require 'ar_rollout/rollout.rb'
require 'ar_rollout/helper.rb'
module ArRollout
  def self.configure
    yield self
  end

  def self.define_group(name, &block)
    Rollout.send :define_method, "match_#{name}?" do |b|
      block.call(b)
    end
  end

  def self.activate_user(feature = nil, user = nil)
    return false if feature.nil? || user.nil?
    res_id = [Fixnum, String].include?(user.class) ? user : user.id
    Rollout.find_or_create_by_name_and_user_id(feature, res_id)
  end

  def self.deactivate_user(feature = nil, user = nil)
    res_id = [Fixnum, String].include?(user.class) ? user : user.id
    Rollout.find_all_by_name_and_user_id(feature, res_id).any? do |r|
       r.destroy
    end
  end

  def self.activate_group(feature = nil, group = nil)
    return false if feature.nil? || group.nil?
    Rollout.find_or_create_by_name_and_group(feature, group)
  end

  def self.deactivate_group(feature = nil, group = nil)
    Rollout.find_all_by_name_and_group(feature, group).any? do |r|
       r.destroy
    end
  end
end

ActionController::Base.send :include, ArRollout::Controller::Helpers
