module Marvel
  module Configuration

    attr_accessor :api_key, :private_key

    def configure
      yield self
    end

    def reset
      self.api_key = '4a16fecd831e8039d6e3eb40f5de9d9a'
      self.private_key = 'a20339143b3f4ce7ce55dcad614b5c1ede04e1bd'
      self
    end
  end
end