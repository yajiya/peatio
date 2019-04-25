module Peatio
  module Blockchain
    Error = Class.new(StandardError)

    class ClientError < Error
      def initialize(wrapped_ex)
        @wrapped_ex = wrapped_ex
      end

      delegate :message, to: :@wrapped_ex
    end

    class MissingSettingError < Error
      def initialize(key)
        super "#{key.capitalize} setting is missing"
      end
    end
  end
end