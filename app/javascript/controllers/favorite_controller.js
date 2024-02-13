import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["heart", "url"]

  static values = {
    feedbackText: String
  }

  like() {
    this.heartTarget.innerHTML = this.feedbackTextValue;
    this.heartTarget.classList.add("disabled");
    navigator.clipboard.writeText(this.urlTarget.value);
  }
}
