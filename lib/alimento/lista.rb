require "alimento/alimento"
require "./lib/alimento/alimento"

#  create  a  Struct  with  :value,  :next  and  :prev 
Node  =  Struct.new(:value,  :next,  :prev)
# @author Nicolangelo Famiglietti
# @note Clase ListaDoblementeEnlazada - Lista doblemente enlazada
class ListaDoblementeEnlazada
    attr_reader :head, :tail
    include Enumerable
    # @note Inicializador
    # == Returns:
    #Inicilizacion de la cola y la cabeza
    def initialize
        @head = @tail = nil
    end
    # @note Método to_s
    # == Returns:
    #Devuelve la lista de alimentos formateada
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
    # @note Método size
    # == Returns:
    #Devuelve el tamaño de la lista
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
    # @note Método empty
    # == Returns:
    #true si esta vacio
    #false si contiene algo
    def empty
        if(@head == nil)
            true
        elsif
            false
        end
    end
    # @note Método insert
    # == Returns:
    #Inserta un elemento en la lista
    #Devuelve true si se realizó correctamente
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
    # @note Método extract_head
    # == Returns:
    #El elemento a extraer por la cabeza
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
    # @note Método extract_tail
    # == Returns:
    #El elemento a extraer por la cola
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
    # @note Método Enumerable
    # == Returns:
    # Enumerable
    #Metodo de acceso a acada elemento
    def each
        aux = @head
        while(aux != nil)
            yield aux[:value]
            aux= aux[:next]
        end
    end
end