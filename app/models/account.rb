class Account < ActiveRecord::Base
  DEFAULT_UPDATABLE_ATTRIBUTES = [:title, :username, :password, :site_url]
  attr_encrypted :password, key: "nvtanh.ptit@gmail.com", attribute: "password_encrypted"

  validates :title, :username, :password, presence: true
end