# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "vue" # @3.2.29
pin "@vue/reactivity", to: "@vue--reactivity.js" # @3.2.29
pin "@vue/runtime-core", to: "@vue--runtime-core.js" # @3.2.29
pin "@vue/runtime-dom", to: "@vue--runtime-dom.js" # @3.2.29
pin "@vue/shared", to: "@vue--shared.js" # @3.2.29
