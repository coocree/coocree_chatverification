# chat_baloon_verified

Um componente de balão de chat com ícone de verificação é um elemento visual que pode ser utilizado
em aplicativos de mensagens e plataformas de comunicação para indicar que uma mensagem foi enviada 
ou recebida por um usuário verificado.

![exemplo](asset/chat_baloon.PNG)

## Como Usar

Para utilizar o código abaixo, você precisa primeiro instalar o pacote correspondente e importar 
as classes necessárias em seu projeto. Após isso, você pode utilizar o exemplo abaixo para testar o 
funcionamento do código.

Para alterar o `chat_baloon_verified` de lado set `isMe` para true.

```flutter
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ChatBubbleWithTriangle(message: 'Integer pharetra eri', isMe: false),
      ),
    );
  }
}
```
