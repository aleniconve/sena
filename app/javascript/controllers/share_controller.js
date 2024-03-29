import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button", "url"]

  static values = {
    feedbackText: String
  }

  copy() {
    this.buttonTarget.innerHTML = this.feedbackTextValue;
    this.buttonTarget.classList.add("disabled");
    navigator.clipboard.writeText(this.urlTarget.value);
  }
}
