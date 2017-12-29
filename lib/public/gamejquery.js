startingtile = function() {
  $('#tileselection').html("<form action = '/home' method = 'post' name='tile'>\
  <div class='row'>\
      <div class='col-sm-6 menuoptions'>\
        <input type='submit' name='water' value='water' method = 'post'>\
      </div>\
      <div class='col-sm-6 menuoptions'>\
        <input type='submit' name='mountain' value='mountain'>\
      </div>\
    </div>\
  <div class='row'>\
    <div class='col-sm-6 menuoptions' onclick='tile('grassland')'>grassland</div>\
    <div class='col-sm-6 menuoptions' onclick='endturn('desert')'>desert</div>\
  </div>\
  </form>\
  ");
}
