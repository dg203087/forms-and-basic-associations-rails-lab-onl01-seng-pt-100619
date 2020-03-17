class Song < ActiveRecord::Base
  belongs_to :artist 
  belongs_to :genre
  has_many :notes

  def artist=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  # def artist
  #    self.artist ? self.artist.name : nil
  # end

end
