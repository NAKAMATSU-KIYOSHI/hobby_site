class Post < ApplicationRecord
  # validates :title, :content, presence: true
  def self.csv_attributes
    ["title", "content"]
  end
belongs_to :item

  def self.generate_csv
    CSV.generate(headers: true) do |csv|
      csv << csv_attributes
      all.each do |task|
        csv << csv_attributes.map{|attr| post.send(attr) }
      end
    end
  end
end
