document.addEventListener("DOMContentLoaded", () => {
const journal_button = document.querySelector(".toggle-form-button")
const journal_form = document.getElementById("journal-form-container")

journal_button.addEventListener("click", (event) => {
  console.log(event)
  if (journal_form.style.display === "none")
    journal_form.style.display = "block"
  else
  journal_form.style.display = "none"
  })
});
