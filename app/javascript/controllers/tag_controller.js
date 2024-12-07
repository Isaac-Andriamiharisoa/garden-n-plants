import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tag"
export default class extends Controller {
  static targets = [
    'checkbox',
    'label'
  ]

  toggleCheckbox() {
    if (this.checkboxTarget.checked) {
      this.labelTarget.classList.remove('active');
      this.checkboxTarget.checked = false;
    } else {
      this.labelTarget.classList.add('active');    
      this.checkboxTarget.checked = true;
    }
  }
}
