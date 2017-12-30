startingtile = function() {
  $('#tileselection').html("<form action = '/home' method = 'post'>\
        <input type='radio' name='tile' value='ocean'>Ocean\
        <input type='radio' name='tile' value='lake'>Lake\
        <input type='submit' name='endturn' value='endturn'>\
  </form>\
  ");
}
