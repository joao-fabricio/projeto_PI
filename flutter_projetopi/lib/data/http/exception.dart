//cria exceção personalizada, representa erros específicos da aplicação

class NotFoundException implements Exception {
  final String message;

  NotFoundException(this.message);
}