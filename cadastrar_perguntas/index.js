function enviarParaBanco() {
  const form = document.getElementById("form_pergunta");
  const formData = new FormData(form);

  fetch("salvar_pergunta.php", {
    method: "POST",
    body: formData,
  })
  .then(response => response.text())
  .then(data => {
    alert(data); // Mostra mensagem de sucesso ou erro
  })
  .catch(error => {
    console.error("Erro:", error);
  });
}