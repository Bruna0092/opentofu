## Documentação Pipeline deploy com OpenToFu para GitLab

#### Build da imagem:

Arquivo do Dockerfile: [!Dockerfile](https://raw.githubusercontent.com/Bruna0092/opentofu/main/Dockerfile)

```docker build opentofu:tag .
```

#### Retorna um item

```http
  GET /api/items/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do item que você quer |

#### add(num1, num2)

Recebe dois números e retorna a sua soma.
