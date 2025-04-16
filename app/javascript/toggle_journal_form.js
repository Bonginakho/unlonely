const buttons = document.querySelectorAll('.toggle-form-button');

buttons.forEach(button => {
  button.addEventListener("click", (event) => {
    const form = button.nextElementSibling;

    console.log(event)
    if (form.style.display === "none")
      form.style.display = "block"
    else
    form.style.display = "none"
  });
});
