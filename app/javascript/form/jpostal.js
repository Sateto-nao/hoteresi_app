$(function() {
  return $('#hotel_postcode').jpostal({
    postcode: ['#hotel_postcode'],
    address: {
      '#hotel_prefecture_code': '%3',
      '#hotel_address_city': '%4%5',
      '#hotel_address_street': '%6%7',
    },
  });
});
