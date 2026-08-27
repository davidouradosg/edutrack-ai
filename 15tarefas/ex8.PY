preco = float(input("Preço: "))

desconto = preco * 0.10
preco_final = preco - desconto

print(f"\nDesconto: R$ {desconto:.2f}")
print(f"Preço final: R$ {preco_final:.2f}")