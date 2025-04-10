import { Application } from "@hotwired/stimulus"
import { createApp } from "vue";
import MyComponent from "./components/mycomponent";

// waiting for the DOM to be loaded before the vue instance is initialized and mounted to
// id in the HTML of my-vue-app
document.addEventListener("DOMContentLoaded" , () => {
  const app = createApp(MyComponent);
  app.mount("#my-vue-app")
})

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
