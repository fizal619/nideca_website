var allLinks = document.querySelectorAll(".nav-link");

allLinks.forEach(function(link){
  if (link.href.includes(location.pathname)){
    link.classList.add("active");
  }
});