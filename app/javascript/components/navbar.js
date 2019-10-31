// app/javascript/components/navbar.js
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const navLink = document.querySelector('.nav-link.text-white');
  if (navbar) {
    window.addEventListener('scroll', () => {
      console.log(window.innerHeight*0.1)
      console.log(window.scrollY)
      if (window.scrollY >= window.innerHeight*0.1) {
        navbar.classList.add('navbar-lewagon-white');
        navLink.classList.remove('text-white')
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        navLink.classList.add('text-white')

      }
    });
  }
}

export { initUpdateNavbarOnScroll };
