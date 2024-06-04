document.querySelector('form').addEventListener('submit', async (e) => {
  e.preventDefault();
  const email = e.target.email.value;
  const title = e.target.title.value;
  const description = e.target.description.value;

  // Validação dos campos
  if (!email || !title || !description) {
    alert('Por favor, preencha todos os campos.');
    return;
  }

  try {
    const response = await fetch('/send', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ email, title, description }),
    });

    if (response.ok) {
      const result = await response.text();
      alert('Email enviado: ' + result);
    } else {
      const errorText = await response.text();
      throw new Error(errorText);
    }
  } catch (error) {
    console.error('Erro:', error);
    alert('Erro ao enviar email: ' + error.message);
  }
});
