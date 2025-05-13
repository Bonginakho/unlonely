(() => {
  const reflections = document.querySelectorAll('.reflection-container');

  reflections.forEach(reflection => {
    reflection.addEventListener("click", (event) => {
      console.log(event);
      const form = reflection.nextElementSibling;
      form.style.display = (form.style.display === "none") ? "block" : "none";
    });
  });
})();
