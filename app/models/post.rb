class Post < ApplicationRecord
    CATEGORIES = ['Fiction','Non-Fiction']
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum:250}
    validates :category, inclusion: {in: CATEGORIES }
    validate :title_must_have

    def title_must_have
        Phrase= ["Won't Believe","Secret","Top[number]","Guess"]

        unless Phrase.any? {|phrase| title.include?(phrase) 
        error.add{error: "title should include phrase"}}
    
    
    end

    
end
