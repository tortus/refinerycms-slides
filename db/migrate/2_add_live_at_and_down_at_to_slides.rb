class AddLiveAtAndDownAtToSlides < ActiveRecord::Migration

  def change
    add_column :refinery_slides, :live_at, :datetime
    add_column :refinery_slides, :down_at, :datetime
  end

end
