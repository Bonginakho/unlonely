const reflections = document.querySelectorAll('.reflection-container')

reflections.forEach(reflection => {
  reflection.addEventListener("click", (event) => {
    console.log(event)
    const form = reflection.nextElementSibling;
    if (form.style.display == "none") {
      form.style.display = "block"
    } else {
      form.style.display = "none"
    }
  })
})
