class Book < ApplicationRecord

    def summary_length 
        self.summary.length.to_s
    end 
end
