(() => {
  const buttons = document.querySelectorAll('.toggle-form-button');
  buttons.forEach(button => {
    button.addEventListener("click", (event) => {
      const form = button.nextElementSibling;
      form.style.display = (form.style.display === "none") ? "block" : "none";
    });
  });
})();
