  function enviarParaBanco() {
    const form = document.getElementById('formPergunta');
    const formData = new FormData(form);

    fetch('salvar.php', {
      method: 'POST',
      body: formData
    })
    .then(response => response.text())
    .then(data => {
      document.getElementById('resposta').innerHTML = data;
    })
    .catch(error => {
      console.error('Erro:', error);
    });
  }