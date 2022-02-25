import "jquery-bar-rating";
import $ from 'jquery';
const initStarRating = () => {
  $('#super_strength').barrating({
    theme: 'bars-square'
  });
};

export { initStarRating };
