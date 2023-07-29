function scrollToNewArrival() {
  const element = document.getElementById("new-products-section");
  if (element) {
    const elementPosition = element.getBoundingClientRect().top;
    if (elementPosition <= 0) {
      // If the element is above or at the top of the viewport, scroll upwards.
      window.scrollBy({
        top: -elementPosition,
        behavior: "smooth"
      });
    } else {
      // If the element is below the top of the viewport, scroll to it.
      element.scrollIntoView({ behavior: "smooth" });
    }
  }
}
