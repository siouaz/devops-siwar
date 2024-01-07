import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'ui';
  text;

  constructor(private http: HttpClient) { }

  send(name: String) {
    this.http.get("http://localhost:8080/greetings/" + name, {responseType: 'text'})
      .subscribe(resp => this.text = resp);
      // .subscribe(resp => console.log(resp));
  }
}
