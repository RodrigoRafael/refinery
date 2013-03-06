module Refinery
  module Greencoconuts
    class GreencoconutsController < ::ApplicationController

      before_filter :find_all_greencoconuts
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @greencoconut in the line below:
        present(@page)
      end

      def show
        @greencoconut = Greencoconut.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @greencoconut in the line below:
        present(@page)
      end

    protected

      def find_all_greencoconuts
        @greencoconuts = Greencoconut.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/greencoconuts").first
      end

    end
  end
end
