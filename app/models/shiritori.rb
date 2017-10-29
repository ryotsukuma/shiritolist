class Shiritori < ApplicationRecord
  belongs_to :history
  
  validates:word,presence:true,length:{maximum:100}, format: { with: /\A[ぁ-んー－]+\z/}
  
  #format:{with:/\A[\p{hiragana}ー－]+\z/,message:'はひらがなで入力して下さい。'}
  validates:name,length:{maximum:100}
  
end