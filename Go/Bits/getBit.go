package main

import "fmt"

//Récupère le i-ème bit de n.
func getBit(n, i int) int {
	return n >> i & 1
}

func main() {
	fmt.Println(getBit(2, 0)) //0
	fmt.Println(getBit(2, 1)) //1
}
