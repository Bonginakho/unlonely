document.addEventListener("DOMContentLoaded", () => {
  function toggleDropdown(buttonId, menuId) {
    const button = document.getElementById(buttonId);
    const menu = document.getElementById(menuId);

    if (button && menu) {
      button.addEventListener("click", (e) => {
        e.stopPropagation();
        menu.classList.toggle("hidden");
      });

      document.addEventListener("click", (e) => {
        if (!menu.contains(e.target) && !button.contains(e.target)) {
          menu.classList.add("hidden");
        }
      });
    }
  }

  toggleDropdown("show-entry-options", "journal-content-options");
  toggleDropdown("show-reflection-options", "reflection-content-options");
});

