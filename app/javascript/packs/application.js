import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';
import flatpickr from "flatpickr";


initUpdateNavbarOnScroll();
initAutocomplete();
initMapbox();
loadDynamicBannerText();
