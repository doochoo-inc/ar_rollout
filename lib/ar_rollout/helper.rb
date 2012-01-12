module ArRollout
  module Controller
    module Helpers
      included do
        helper_method :rollout?
      end

      def rollout?
        puts "Ciao"
      end
    end
  end
end