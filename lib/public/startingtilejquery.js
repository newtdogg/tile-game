startingtile = function() {
  $('#tileselection').html("<form action = '/home' method = 'post'>\
        <input type='radio' name='tile' value='water'>Water\
        <input type='radio' name='tile' value='mountain'>Mountain\
        <input type='radio' name='tile' value='desert'>Desert\
        <input type='radio' name='tile' value='grassland'>Grassland\
        <input type='submit' name='endturn' value='endturn'>\
  </form>\
  ");
}
