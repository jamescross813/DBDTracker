class User < ActiveRecord::Base
    validates_presence_of :user_name, :email, :password
has_many :killers
has_many :survivors
has_many :currencies



end