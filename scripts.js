function ValiderMail(formulaire) {
     if(formulaire.mail.value===null){
      alert("bonjour");
     }
     else if (formulaire.mail.value.indexOf("@gmail.com",0)<0) {alert("Adresse mail saisie invalide.")}
     else {
        alert("Bon");
     }
  }