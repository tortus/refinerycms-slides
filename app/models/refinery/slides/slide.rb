module Refinery
  module Slides
    class Slide < Refinery::Core::BaseModel
      self.table_name = 'refinery_slides'

      belongs_to :image, :class_name => '::Refinery::Image'

      acts_as_indexed :fields => [:title, :link, :content]

      validates :title, :presence => true, :uniqueness => true
      validates :image, :presence => true

      attr_accessible :title, :link, :content, :image_id, :hidden, :position

      def hidden?; self.hidden; end
      def active?; not hidden?; end
      def link?; not link.blank?; end

      def self.active; where(:hidden => false); end
      def self.live; active; end
      def self.by_position; order("position ASC"); end
      def self.by_random; order("random()"); end

      def self.random_slide
        live.by_random.first
      end

    end
  end
end
