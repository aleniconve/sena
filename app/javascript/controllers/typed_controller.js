import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"
// Connects to data-controller="typed"

export default class extends Controller {
  connect() {
    const typed = new Typed(this.element, {
      strings: ["<h2>Bridging Worlds<br>through<br>Sign Language.</h2>"],
      typeSpeed: 50,
      showCursor: false,
    });
  }
}
