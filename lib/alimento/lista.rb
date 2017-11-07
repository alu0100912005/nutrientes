require "alimento/alimento"
require "./lib/alimento/alimento"

#  create  a  Struct  with  :value,  :next  and  :prev 
Node  =  Struct.new(:value,  :next,  :prev)
class ListaDoblementeEnlazada
    attr_reader :head, :tail
    # attr_accessor :nombre, :proteinas, :glucidos, :grasas
    def initialize
        @head = @tail = nil
    end
    def to_s
        aux = @head
        s= aux.value.n_grupo
        s+= "\t\t\tProteinas Glucidos Lipidos"
        while(aux != nil)
            s+="\t#{aux.value.nombre}: \t#{aux.value.proteinas}  \t   #{aux.value.glucidos}      #{aux.value.grasas}"
            aux= aux[:next]
        end
        s
    end
    def size
        count = 0
        if @head[:value] != nil then
            count=1
        end
        aux= @head
        until aux[:next] == nil do
            count+=1
            aux=aux[:next]
        end
        count
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
    def extract_tail
        aux = nil
        if @tail[:value]==nil
            aux=nil
        else
            aux = @tail[:value]
            @tail = @tail[:prev]
            @tail = nil
        end
        if @tail==nil
            @tail = Node.new
            @head = @tail
        end
        aux
    end
end