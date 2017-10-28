class Shiritori < ApplicationRecord
  belongs_to :history
  
  validates:word,presence:true,length:{maximum:100}
  validates:name,length:{maximum:100}
end
