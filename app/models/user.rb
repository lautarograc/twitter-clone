class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:github]
     
         
  #generate username for omniauth logs
  def self.create_from_provider_data(provider_data)
          where(provider: provider_data.provider, uid: provider_data.uid).first_or_create  do |user|
            user.email = provider_data.info.email
            user.password = Devise.friendly_token[0, 20]
            user.username = user.email.split("@").first.concat(user.uid.to_s)
            
            
          end
        end
  has_many :tweets
  scope :random, -> { order(Arel::Nodes::NamedFunction.new('RANDOM', [])) }
end
