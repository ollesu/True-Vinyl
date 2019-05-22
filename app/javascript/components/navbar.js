const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  console.log(navbar);
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        navbar.classList.add('navbar-lewagon-white');
        console.log(event);
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
