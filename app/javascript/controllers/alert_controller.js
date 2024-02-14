import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {
  static values = {
    icon: String,
    title: String,
    html: String,
    confirmButtonText: String,
    showCancelButton: Boolean,
    cancelButtonText: String
  }

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked
    console.log(this.confirmButtonTextValue);

    Swal.fire({
      text: this.titleValue,
      html: this.htmlValue,
      confirmButtonColor: "#303030",
      confirmButtonText: this.confirmButtonTextValue,
      // imageUrl: "https://media.istockphoto.com/id/469246972/de/foto/ok-kind-hand-rechtschreibung-amerikanische-geb%C3%A4rdensprache-asl.jpg?s=612x612&w=0&k=20&c=Onh6jpJNaXX1QvjmQmKxgq8EjfMQEPnJJyXP2CkKY2k=",
      // imageWidth: 200,
      // imageHeight: 100,
      // imageAlt: "Custom image"
    }).then((action) => {
      if (action.isConfirmed) {
        event.target[event.type](); // "submit"
      }
    })
    .catch(event.preventDefault())
  }
}
