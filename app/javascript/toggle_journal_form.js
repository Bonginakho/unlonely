// document.addEventListener('DOMContentLoaded', () => {
//   buttons.forEach(button => {
//     button.addEventListener("click", (event) => {
//       const form = button.nextElementSibling;

//       if (form.style.display === "none") {
//         form.style.display = "block"
//       } else {
//         form.style.display = "none"
//       }
//     });
//   });

//   // Clear form after successful save
//   document.querySelectorAll('form[data-remote="true"]').forEach(form => {
//     form.addEventListener('ajax:success', () => {
//       form.reset();
//       form.style.display = 'none'; // optionally hide the form
//     });
//   });
// });

const buttons = document.querySelectorAll('.toggle-form-button');

  document.addEventListener('DOMContentLoaded', () => {
    buttons.forEach(button => {
      button.addEventListener("click", (event) => {
        const form = button.nextElementSibling;
  buttons.forEach(button => {
    button.addEventListener("click", (event) => {
      console.log(event);
      const form = button.nextElementSibling;


        if (form.style.display === "none") {
          form.style.display = "block"
        } else {
          form.style.display = "none"
        }
      });
    });

    // Clear form after successful save
    document.querySelectorAll('form[data-remote="true"]').forEach(form => {
      form.addEventListener('ajax:success', () => {
        form.reset();
        form.style.display = 'none'; // optionally hide the form
      });
    });
  });
