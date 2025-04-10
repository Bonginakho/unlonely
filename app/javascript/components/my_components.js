import { createApp } from "vue";

const MyComponent = {
  data () {
  return {
    journals: [],
    editingJournalId: null,
  };
},
mounted() {
  this.fetchJournals();
},
methods: {
 fetchJournals() {
  fetch('/journals')
  .then(response => response.json())
  .then(data => {
    this.journals = data;
  });
},
toggleEdit(journalId){
  this.editingJournalId = this.editingjournalId == ? null :JournalId;
},
isEditing(journalId) {
  return this.editingJournalId == JournalId;
},
saveContent(journalId) {
  const journal = this.journals.find(j => j.id === journalId);
  // Make an AJAX request to save the content (you can use Axios or Fetch API)
  fetch(`/journals/${journalId}`, {
    method: 'PATCH', // Use PATCH to update the journal
    headers: {
      'Content-Type': 'application/json',
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    },
    body: JSON.stringify({ content: journal.content }) // Send the updated content
  })
  .then(response => {
    if (response.ok) {
      // Optionally handle success (e.g., show a message)
      console.log('Content saved successfully');
    } else {
      // Handle error
      console.error('Error saving content');
    }
  });
}
}
};

document.addEventListener("DOMContentloaded", () => {
  const app = createApp(MyComponent);
  app.mount("#my-vue-app");
});
