class User < ApplicationRecord
  has_secure_password
  has_many :reviews

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  # has_attached_file :avatar,
  #                 :styles => { :medium => "150x150>"},
  #                 :storage => :s3,
  #                 :s3_credentials => Proc.new { |a| a.instance.s3_credentials },
  #                 :path => "avatars/:id/:style/avatar.:extension",
  #                 :default_url => "https://s3.amazonaws.com/boozereview-assets/defaults/default_avatar.png"

  # validates_attachment :avatar, :presence => true,
  #                      :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
  #                      :size => { :in => 0..1000.kilobytes }

  

  # def s3_credentials
  #   { :bucket => ENV['S3_BUCKET'], :access_key_id => ENV['AWS_ACCESS_KEY_ID'], :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'] }
  # end


end
