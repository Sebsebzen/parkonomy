// app/javascript/components/navbar.js
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const navLink = document.querySelectorAll('.nav-link');
  // console.log(navLink)

  if (window.location.pathname == '/' || window.location.pathname == '/bookings') {
    navLink.forEach((item) => {
        item.classList.add('text-white');
    });window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight*0.05) {
      navbar.classList.add('navbar-lewagon-white');
      // navLink.forEach((item) => {
      //   console.log(item);
      //   item.classList.remove('text-white');
      // });
    } else {
      navbar.classList.remove('navbar-lewagon-white');
      // navLink.forEach((item) => {
      //   item.classList.add('text-white');
      // });
    }
  });
  } else {
    navbar.classList.add('navbar-lewagon-opaque');
    window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight*0.05) {
      navbar.classList.remove('navbar-lewagon-opaque')
      navbar.classList.add('navbar-lewagon-white');
    } else {
      navbar.classList.add('navbar-lewagon-opaque')
      navbar.classList.remove('navbar-lewagon-white');
    }
  });
  }

}

export { initUpdateNavbarOnScroll };
