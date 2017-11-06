require "alimento/alimento"

#  create  a  Struct  with  :value,  :next  and  :prev 
Node  =  Struct.new(:value,  :next,  :prev)
class ListaDoblementeEnlazada
    # attr_reader :head, :tail
    def initialize
        # @head = Node.new
        # @tail = @head
    end
end