$(document).ready(function() {
  var darkModeOff = localStorage.getItem('darkModeOff');

  var toggleDarkMode = function() {
    $("#mode-light,#mode-dark").toggleClass("d-none");

    $("main.bg-white,main.bg-black,main .bg-white,main .bg-black").toggleClass("bg-black text-light bg-white");
    $("main .bg-light,main .bg-dark").toggleClass("bg-dark text-light bg-light");
    $("main .bg-lighter,main .bg-darker").toggleClass("bg-darker text-light bg-lighter");
  };

  if (darkModeOff) {
    toggleDarkMode();
  }

  $(".mode-toggle").click(function(event) {
    toggleDarkMode();

    if (localStorage.getItem('darkModeOff')) {
      localStorage.clear();
    } else {
      localStorage.setItem('darkModeOff', true);
    }
  })
});
