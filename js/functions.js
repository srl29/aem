let position = 0;

async function previous(id) {
    if (position !== 0) {
        position += 200;
        document.getElementById(`slide_show_${id}`).style.transform = "translateX(" + position + "px)"
    }

}
async function next(id) {
    position -= 200
    document.getElementById(`slide_show_${id}`).style.transform = "translateX(" + position + "px)"
}

async function show_dropdown() {
    let dropdown = document.getElementById("dropdown_content");
    if (dropdown.style.display === "block") {
        dropdown.style.display = "none"
    } else {
        dropdown.style.display = "block"
    }

}