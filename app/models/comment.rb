class Comment < ApplicationRecord

 belongs_to :article

 validates :author , presence: true , length: { minimum: 1 }
 validates :body , presence: true , length: { minimum: 5 }


end
