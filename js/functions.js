let position = 0;
let len = document.querySelectorAll(".hi").length;
let width = document.querySelectorAll(".background_list")[0].style.width;
console.log(width);
let i = 0;
async function previous(id) {
  width = document.querySelectorAll(".background_list")[0].style.width;
  console.log(width);
  if (i > 0) {
    i--;
    if (position !== 0) {
      position += 200;
      document.getElementById(`slide_show_${id}`).style.transform =
        "translateX(" + position + "px)";
    }
  }
}
async function next(id) {
  width = document.querySelectorAll(".background_list")[0].style.width;
  console.log(width);
  if (i < len) {
    position -= 200;
    document.getElementById(`slide_show_${id}`).style.transform =
      "translateX(" + position + "px)";
    i++;
  }
}

async function show_dropdown() {
  let dropdown = document.getElementById("dropdown_content");
  if (dropdown.style.display === "block") {
    dropdown.style.display = "none";
  } else {
    dropdown.style.display = "block";
  }
}
