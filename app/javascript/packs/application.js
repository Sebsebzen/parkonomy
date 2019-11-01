import "bootstrap";
import flatpickr from "flatpickr";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initAutocomplete2 } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
import { loadDynamicBannerText } from '../components/banner';
import { initFlatpickr } from '../plugins/init_flatpickr';

initUpdateNavbarOnScroll();
initAutocomplete();
initAutocomplete2();
initMapbox();
initFlatpickr();
loadDynamicBannerText();