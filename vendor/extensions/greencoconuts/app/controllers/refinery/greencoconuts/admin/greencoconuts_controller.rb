module Refinery
  module Greencoconuts
    module Admin
      class GreencoconutsController < ::Refinery::AdminController

        crudify :'refinery/greencoconuts/greencoconut',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
