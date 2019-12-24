class Post < ApplicationRecord
  def self.csv_attributes
    ["title", "content"]
  end


  def self.generate_csv
    CSV.generate(headers: true) do |csv|
      csv << csv_attributes
      all.each do |task|
        csv << csv_attributes.map{|attr| post.send(attr) }
      end
    end
  end
end
