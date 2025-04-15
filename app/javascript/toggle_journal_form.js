const button = document.querySelector('.toggle-form-button');
const form = document.getElementById("journal-form-container");

button.addEventListener("click", (event) => {
  console.log(event)
  if (form.style.display === "none")
    form.style.display = "block"
  else
    form.style.display = "none"
  })
