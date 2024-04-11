const photo = document.querySelector(".photo");

async function Post(name, data) {
  try {
    const response = await fetch(`https://${GetParentResourceName()}/${name}`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: JSON.stringify({
        itemId: data,
      }),
    });
  } catch (err) {}
}

window.addEventListener("message", function(event){
    let e = event.data;
    if (e.action == "show"){
        photo.style.width = e.photo.width + "px";
        photo.style.width = e.photo.heidht + "px";
        photo.style.background = `center / cover no-repeat url("${e.photo.url}")`;
    }
    document.body.style.display = "block";
})

window.addEventListener("keydown", function(e){
    if (e.keyCode === 8 || e.keyCode === 27){
        document.body.style.display = "none";
        Post("close")
    }
})