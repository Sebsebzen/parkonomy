// app/javascript/components/navbar.js
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const navLink = document.querySelectorAll('.nav-link');
  // console.log(navLink)

  if (window.location.pathname == '/') {
    navLink.forEach((item) => {
      item.classList.add('text-white');
    });
  } else if (window.location.pathname.includes('/search')) {
    navbar.classList.add('navbar-lewagon-opaque');
    window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight*0.1) {
      navbar.classList.remove('navbar-lewagon-opaque')
      navbar.classList.add('navbar-lewagon-white');
    } else {
      navbar.classList.add('navbar-lewagon-opaque')
      navbar.classList.remove('navbar-lewagon-white');
    }
  });
  } else if (navbar) {
    window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight*0.1) {
      navbar.classList.remove('navbar-lewagon-opaque')
      navbar.classList.add('navbar-lewagon-white');
    } else {
      navbar.classList.remove('navbar-lewagon-white');
    }
  });
  }

}

export { initUpdateNavbarOnScroll };
