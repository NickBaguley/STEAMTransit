class Skills < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :skillmap

  def self.skillmap
    where(category: 'skillmap')
  end

end
