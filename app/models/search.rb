def self.search(search)
 where("name LIKE ?", "%#{search}%")
 where("content LIKE ?", "%#{search}%")
end
