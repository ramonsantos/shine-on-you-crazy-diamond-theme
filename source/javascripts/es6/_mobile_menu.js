let toggleMobileMenu = function (event) {
  let mobileMenu = document.getElementById("mobileMenu");

  mobileMenu.classList.toggle("mobile-menu-show");
  mobileMenu.classList.toggle("mobile-menu-hidden");

  event.preventDefault();
};

document.getElementById('menuBar').addEventListener('click', toggleMobileMenu);

document.getElementById('menuClose').addEventListener('click', toggleMobileMenu);
