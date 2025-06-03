document.addEventListener("turbo:load", () => {
  const chatButton = document.querySelector('#chat-button');
  const chatContainer = document.querySelector('#chat-container');
    if (chatButton && chatContainer) {
    chatButton.addEventListener("click", (event) => {
      console.log(event);
      const isHidden = chatContainer.style.display === "none" || chatContainer.style.display === "";
      chatContainer.style.display = isHidden ? "block" : "none";
    });
  }
});
