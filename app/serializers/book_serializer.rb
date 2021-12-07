class BookSerializer
    include JSONAPI::Serializer

    attributes :title, :author, :genre, :summary_length
    # def self.all_books(books)
    #     {
    #         "data": books.map do |book|
    #             {
    #                 "id": book.id.to_s,
    #                 "type": "book",
    #                 "attributes": {
    #                     "title": book.title,
    #                     "author": book.author,
    #                     "summary_character_length": book.summary_length
    #                 }
    #             }
    #         end 
    #     }
    # end
end 

