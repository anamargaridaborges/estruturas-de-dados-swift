import Foundation

var lista = Lista(h:nil, t:nil)

while true {
    print("0 - Parar o programa")
    print("1 - Insira um elemento na lista")
    print("2 - Remova um elemento da lista")
    print("3 - Imprima os valores da lista")
    print("4 - Inverta o prefixo da lista")
    let opcao = Int(readLine()!)
    if opcao == 0 {
        break
    }
    if opcao == 1 {
        let entrada = readLine()
        let numeros = entrada!.split(separator: " ").compactMap { Int($0) }
        adicionarElemento(x: numeros[0], pos: numeros[1], lista: lista)
    }
    if opcao == 2 {
        let posicao = Int(readLine()!)
        removerElemento(pos: posicao!, lista: lista)
    }
    if opcao == 3 {
        imprimirLista(lista: lista)
    }
    if opcao == 4 {
        let tam = Int(readLine()!)
        inverterPrefixo(tam: tam!, lista: lista)
    }
}

