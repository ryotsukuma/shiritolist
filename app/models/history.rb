class History < ApplicationRecord
    has_many :shiritoris
    
    def shiritori_fin
      self.update(finflg:true)
      History.create(finflg:false)
    end
    
end
