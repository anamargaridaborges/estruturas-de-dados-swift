import Foundation

func criarLista() -> Lista {
    // Cria uma lista vazia
    var novaLista: Lista = Lista(h: nil, t: nil)
    return novaLista
}

func adicionarElemento(x: Int, pos: Int, lista: Lista) {
    // Adiciona o elemento x na posição pos da lista
    var noAtual: Node? = lista.head
    var novoNo: Node = Node(v: x)
    if noAtual == nil {
        // A lista está vazia
        lista.head = novoNo
        lista.tail = novoNo
        novoNo.next = nil
        novoNo.prev = nil
        return
    }
    var cont: Int = 0
    while noAtual != nil {
        if cont == pos {
            (noAtual?.prev)?.next = novoNo
            if noAtual?.prev != nil {
                novoNo.prev = noAtual?.prev
            }
            else {
                novoNo.prev = nil
                lista.head = novoNo
            }
            novoNo.next = noAtual
            noAtual?.prev = novoNo
            return
        }
        cont+=1
        noAtual = noAtual?.next
    }
    lista.tail?.next = novoNo
    novoNo.prev = lista.tail
    lista.tail = novoNo
    return
}

func removerElemento(pos: Int, lista: Lista) {
    // Remove o elemento na posição pos da lista
    if pos == 0 {
        lista.head = lista.head?.next
        if lista.head == nil {
            lista.tail = nil
        }
        return
    }
    var cont: Int = 0
    var noAtual: Node? = lista.head
    if noAtual == nil {
        return
    }
    while noAtual != nil {
        if cont == pos {
            if noAtual?.next == nil {
                lista.tail = noAtual?.prev
            }
            (noAtual?.prev)?.next = noAtual?.next
            (noAtual?.next)?.prev = noAtual?.prev
            return
        }
        cont+=1
        noAtual = noAtual?.next
    }
}

func imprimirLista (lista: Lista) {
    // Imprime todos os elementos da lista
    var noAtual: Node? = lista.head
    while noAtual != nil {
        print(String(noAtual!.valor), terminator: " ")
        noAtual = noAtual?.next
    }
    print()
    return
}
