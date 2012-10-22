class Key
  def self.generate
    srand rand(1350863573 + Time.now.to_i + Time.now.object_id)
    Array.new(12, '').collect{ ("A".."Z").to_a[rand(26)] }.join
  end
end
