module Refinery
  module Slides
    class Slide < Refinery::Core::BaseModel
      self.table_name = 'refinery_slides'      
    
      acts_as_indexed :fields => [:title, :link, :content]

      validates :title, :presence => true, :uniqueness => true
          
      belongs_to :image, :class_name => '::Refinery::Image'
      validates :image, :presence => true

      attr_accessible :title, :link, :content, :image_id, :hidden, :position

      scope :active, :conditions => {:hidden => false}
      scope :by_position, :order => "position ASC"

      def hidden?; self.hidden; end
      def active?; not hidden?; end
        
    end
  end
end
