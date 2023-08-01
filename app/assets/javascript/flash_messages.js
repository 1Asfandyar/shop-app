
  function flashMessage(msg,type) {
    const flashContainer = document.getElementById('cart-toast-container');
    if (flashContainer) {
      const flashMessage = document.createElement('div');
      flashMessage.className = `alert alert-${type}`;
      flashMessage.textContent = `${msg}`;
      flashContainer.appendChild(flashMessage);
      setTimeout(function() {
        flashMessage.remove();
      }, 3000); 
    }
  }
  