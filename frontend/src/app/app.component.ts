import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Greeting } from '../../shared';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.sass']
})
export class AppComponent {
  title = Greeting.createHelloWorld().getMessage();
}
