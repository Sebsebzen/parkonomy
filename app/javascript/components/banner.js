import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector("#search_address");
  if (banner) {
    new Typed('#search_address', {
    strings: ["Melbourne", "Berlin", "San Francisco", "Osaka", "Jakarta", "Barcelona"],
    typeSpeed: 50,
    backSpeed: 30,
    backDelay: 500,
    startDelay: 500,
    attr: 'placeholder',
    bindInputFocusEvents: true,
    loop: true
  });
  }
  // const title = document.querySelector('.search-title')
  // banner.addEventListener("mouseover", (event) => {
  //  @param {Typed} self
  // onDestroy: (self) => {}
  // });
}

export { loadDynamicBannerText };
