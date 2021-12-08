class StoreSerializer
    include JSONAPI::Serializer

    attributes :name
    has_many :books


    # below is another option for adding custom attributes, instead of putting a method in the model.
    attribute :num_books do |store|
        store.books.count
    end 

    # below is how you could format this json by making your own method
    # def self.format_stores(stores)
    #     {
    #         "data": stores.map do |store|
    #             {
    #                 "id": "1",
    #                 "type": "store",
    #                 "attributes": {
    #                     "name": store.name,
    #                     "num_books": store.books.count
    #                 },
    #                 "relationships": {
    #                     "books": {
    #                         "data": store.books.map do |book|
    #                             {
    #                                 "id": book.id,
    #                                 "type": "book"
    #                             }
    #                         end 
    #                     }
    #                 }
    #             }
    #         end 
    #     }
    # end 

end 

