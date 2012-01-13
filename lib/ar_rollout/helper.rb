module ArRollout
  module Controller
    module Helpers
      def self.included(base)
        base.send :helper_method, :rollout?
      end

      # in vista rollout? :radio_feature
      def rollout?(name)
        Rollout.where(name: name).any? do |rollout|
          rollout.match?(current_user)
        end
      end
    end
  end
end
