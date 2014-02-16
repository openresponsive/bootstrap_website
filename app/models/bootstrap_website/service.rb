module BootstrapWebsite
  class Service < ActiveRecord::Base
    attr_accessible :description, :name
  end
end
