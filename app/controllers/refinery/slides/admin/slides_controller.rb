module Refinery
  module Slides
    module Admin
      class SlidesController < ::Refinery::AdminController

        crudify :'refinery/slides/slide', :paging => false

      end
    end
  end
end
