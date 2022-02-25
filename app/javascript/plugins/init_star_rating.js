import "jquery-bar-rating";
import $ from 'jquery';
const initStarRating = () => {
  $('#super_strength').barrating({
    theme: 'bars-square'
  });
  $('#super_humour').barrating({
    theme: 'bars-square'
  });
  $('#super_romance').barrating({
    theme: 'bars-square'
  });
  $('#super_kindness').barrating({
    theme: 'bars-square'
  });
};

export { initStarRating };
