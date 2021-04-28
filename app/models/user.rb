class User < ActiveRecord::Base
    validates_presence_of :user_name, :password_digest
has_many :killers, through: :user_killers
has_many :survivors, through: :user_survivors
has_many :currencies

self.column_names.each do |col_name|
    attr_accessor col_name.to_sym
  end



end