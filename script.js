// script.js
document.getElementById("upload-form").addEventListener("submit", function (e) {
    e.preventDefault();
    
    var formData = new FormData(this);

    fetch("uploadTest.php", {
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById("upload-status").innerHTML = data;
        document.getElementById("upload-form").reset();
    })
    .catch(error => console.error(error));
});
