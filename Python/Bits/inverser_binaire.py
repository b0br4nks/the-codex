def inverser_binaire(n: int) -> int:
    """
    Description:
        Inverse la conversion binaire d'un nombre entier.
    
    Paramètres:
        n: {int} -- Le nombre à convertir, puis à inverser.
    
    Retourne:
        {int} -- Le nombre binaire inversé.
    
    Exemple:
        >>> inverser_binaire(8)
        1

        1000 = 8, donc 0001 = 1inverser_binaire.py
    """
    return int(bin(n)[2:][::-1], 2)