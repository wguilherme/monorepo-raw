export class Greeting {
  constructor(private readonly message: string) {}

  getMessage(): string {
    return this.message;
  }

  static createHelloWorld(): Greeting {
    return new Greeting('Hello World');
  }
}
