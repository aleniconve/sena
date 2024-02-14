import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["heart"]

  static values = {
    changeStatus: String
  }

  like() {
    this.heartTarget.innerHTML = this.changeStatusValue;
  }
}
