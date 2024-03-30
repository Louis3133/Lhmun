// Fonction pour traduire la page en anglais avec DeepL API
function traduireEnAnglais() {
  // Récupérer le contenu de la page
  var contenu = document.body.innerHTML;

  // Envoyer le contenu à DeepL pour la traduction
  var url = "https://api-free.deepl.com/v2/translate";
  var apiKey = "VOTRE_CLE_API_DEEPL"; // Remplacez par votre propre clé API DeepL

  fetch(url, {
      method: 'POST',
      headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: `auth_key=${apiKey}&text=${encodeURIComponent(contenu)}&target_lang=EN`,
  })
  .then(response => response.json())
  .then(data => {
      // Récupérer la traduction de la réponse
      var traduction = data.translations[0].text;

      // Remplacer le contenu de la page avec la traduction
      document.body.innerHTML = traduction;
  })
  .catch(error => console.error('Erreur lors de la traduction avec DeepL:', error));
}

// Ajouter un événement de clic au bouton de traduction
document.getElementById("boutonTraduction").addEventListener("click", traduireEnAnglais);
