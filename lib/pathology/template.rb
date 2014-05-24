module Pathology

  class Template
    def initialize(pattern)
      @pattern = pattern
    end

    def interpolate(values)
      values.reduce(@pattern) do |interpolated, value|
        token, replacement = *value
        interpolated.gsub(/:#{token}/, replacement.to_s)
      end
    end
  end

end
