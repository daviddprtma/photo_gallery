def vigenere_decrypt(ciphertext, key):
    decrypted_text = []
    key_length = len(key)
    key_as_int = [ord(i) - ord('A') for i in key]
    ciphertext_int = [ord(i) - ord('A') for i in ciphertext]
    
    for i in range(len(ciphertext_int)):
        value = (ciphertext_int[i] - key_as_int[i % key_length]) % 26
        decrypted_text.append(chr(value + ord('A')))
    
    return ''.join(decrypted_text)

ciphertext = "HLANWHRWWKIHAWIITMAAAXBGPWUOORDTNXWFVWPCLGLWFKOTHVGLMJA"
key = "HAPPINESS"

decoded_message = vigenere_decrypt(ciphertext, key)
print("Decoded Message:", decoded_message)
