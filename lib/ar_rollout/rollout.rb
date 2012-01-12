class Rollout < ActiveRecord::Base
  def match?(user)
    # enabled? && match_group?(user) && match_user?(user)
    match_user?(user) || match_group?(user)
  end

  def enabled?
    failure_count.to_i < 1
  end

  def match_group?(user)
    if Rollout.method_defined? "match_#{group}?"
      send "match_#{group}?", user
    else
      false
    end
  end

  def match_user?(user = nil)
    return false if user.nil?
    user_id ? user_id == user.id : true
  end

end