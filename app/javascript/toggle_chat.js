document.addEventListener("turbo:load", () => {
  const chatButton = document.querySelector('#chat-button');
  const chatContainer = document.querySelector('#chat-container');
    if (chatButton && chatContainer) {
    chatButton.addEventListener("click", (event) => {
      console.log(event);
      chatContainer.classList.toggle("hidden");
    });
  }
});
