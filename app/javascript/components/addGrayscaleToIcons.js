function addGrayscaleToIcons(){
    document.querySelectorAll(".icon-team").forEach((icon) => {
        icon.addEventListener("mouseover", (event) => {
            event.target.classList.toggle("gray-icon");
        })
})}

export { addGrayscaleToIcons };
