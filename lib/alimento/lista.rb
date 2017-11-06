require "alimento/alimento"

#  create  a  Struct  with  :value,  :next  and  :prev 
Node  =  Struct.new(:value,  :next,  :prev)
class ListaDoblementeEnlazada
    attr_reader :head, :tail
    def initialize
        @head = @tail = nil
    end
    def empty
        if(@head == nil)
            true
        elsif
            false
        end
    end
    def insert(value)
        node = Node.new(value, nil)
        if(empty)
            @head = node
            @tail = node
        elsif
            @tail.next = node
            @tail = node
        end
        true
    end
    def extract_head
        nodo = @head
      	if nodo != nil
      		if nodo.next != nil
      			@head = nodo.next
      		else
      			@head = nil
      			@tail = nil
      		end
      	end
      	nodo
    end
end