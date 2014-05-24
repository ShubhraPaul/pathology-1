require "pathology/version"
require "pathology/template"

module Pathology

  def self.template(s)
    Template.new(s)
  end

end
