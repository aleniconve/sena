import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button"]

  static values = {
    changeStatus: String
  }

  busy() {
    this.buttonTarget.innerHTML = this.changeStatusValue;
  }
}
