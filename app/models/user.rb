class User < ActiveRecord::Base
    validates_presence_of :user_name, :password_digest
has_many :user_killers
has_many :killers, through: :user_killers
has_many :user_survivors
has_many :survivors, through: :user_survivors
has_many :currencies





end