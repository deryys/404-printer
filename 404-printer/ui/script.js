const photo = document.querySelector(".photo");

window.addEventListener("message", function (event) {
  let e = event.data;
  if (e.action == "show") {
    photo.style.width = e.photo.width + "px";
    photo.style.width = e.photo.heidht + "px";
    photo.style.background = `center / cover no-repeat url("${e.photo.url}")`;
  }
  document.body.style.display = "block";
});

window.addEventListener("keydown", async () => {
  if (e.keyCode === 8 || e.keyCode === 27) {
    document.body.style.display = "none";
    try {
      const response = await fetch(
        `https://${GetParentResourceName()}/close`,
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json; charset=UTF-8",
          },
        }
      );
    } catch (err) {}
  }
});
