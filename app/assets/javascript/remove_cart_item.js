function removeCartItem(productId) {
    // Send an AJAX request to the server to remove the item
    fetch(`/cart_items/${productId}`, {
      method: 'DELETE',
      headers: {
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
      }
    })
    .then(response => {
      if (response.ok) {
        // Remove the cart item element from the screen
        const cartItemElement = document.getElementById(`item-${productId}`);
        cartItemElement.remove();
      }
    })
    .catch(error => {
      console.error('Error:', error);
    });
  }