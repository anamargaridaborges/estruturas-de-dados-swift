import Foundation

class Node {
    var valor: Int
    var next: Node?
    weak var prev: Node?
    
    init(v: Int) {
        self.valor = v
    }
}

class Lista {
    var head: Node?
    var tail: Node?
    
    init(h: Node?, t: Node?) {
        self.head = h
        self.tail = t
    }
}
