// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
document.addEventListener("turbo:load", () => {
  document.querySelectorAll('[data-bs-toggle="dropdown"]').forEach((el) => {
    // Force re-attach dropdown by removing old instance if present
    if (el._bootstrapDropdownInstance) {
      el._bootstrapDropdownInstance.dispose();
    }

    const dropdown = new bootstrap.Dropdown(el);
    el._bootstrapDropdownInstance = dropdown;

    el.addEventListener("click", (event) => {
      event.preventDefault();
      dropdown.toggle();
    });
  });
});

