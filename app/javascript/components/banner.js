import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Search for Carpark"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
