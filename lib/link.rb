# This class corresponds to a table in the database

class Link

  # this makes the instances of this class Datamapper resources
  include DataMapper::Resource

  # This block describes what resources our model will have
  property :id,     Serial
  property :title,  String
  property :url,    String

end