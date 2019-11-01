import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector("#search_address");
  if (banner) {
    new Typed('#search_address', {
    strings: ["Melbourne", "Berlin", "Osaka", "Jakarta", "San Francisco"],
    typeSpeed: 80,
    backSpeed: 40,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
  }
  // const title = document.querySelector('.search-title')
  banner.addEventListener('click', () => {
    banner.setAttribute('placeholder', '')
  })
}

export { loadDynamicBannerText };
