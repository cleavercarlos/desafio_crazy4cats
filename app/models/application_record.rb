class ApplicationRecord < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  has_many :reactions, dependent: :destroy
end
