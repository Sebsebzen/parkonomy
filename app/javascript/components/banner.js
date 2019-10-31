import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector("#banner-typed-text");
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Search for Carpark"],
      typeSpeed: 80,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
