class Song < ApplicationRecord
  def Song.import(filename)
    content = File.read(filename)
    content.each_line do |line|
      song = Song.new
      parts = line.split("\t")
      title_parts = parts[0].split("-")
      song.artist = title_parts[0].strip
      song.title = title_parts[1]&.strip
      song.key = parts[1].to_i
      rating_size = parts[2]&.size
      song.rating = rating_size == nil ? nil : rating_size * 2
      song.priority = parts[3].to_i
      song.comment = parts[4]
      song.save
    end
  end
end
