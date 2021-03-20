class User < ApplicationRecord
    has_many :hairstyles
    
    def name
        name = "Colono Scopy"
    end

    def style
        style = "micro braids"
    end

    def comments
        comments = " Too many MC's, not enough mics."
    end
end
