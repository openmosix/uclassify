require 'digest/md5'
class UClassifyUtils
  def self.string_to_id string
    Digest::MD5.hexdigest(string)
  end
end