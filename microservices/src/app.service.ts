import { Injectable } from '@nestjs/common';
import { Greeting } from '../shared';

@Injectable()
export class AppService {
  getHello(): string {
    const greeting = Greeting.createHelloWorld();
    return greeting.getMessage();
  }
}
