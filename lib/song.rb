require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/findable'

class Song

  attr_accessor :name
  attr_reader :artist

  include Paramable
  extend Findable::ClassMethods
  
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods



  @@songs = []


  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
