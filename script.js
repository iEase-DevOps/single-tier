document.addEventListener("DOMContentLoaded", function() {
    const checkboxes = document.querySelectorAll("input[type='checkbox']");
    checkboxes.forEach((checkbox, index) => {
        // Restore the checked state from localStorage
        checkbox.checked = localStorage.getItem(`checkbox${index}`) === "true";
        
        // Add an event listener to store the state in localStorage when changed
        checkbox.addEventListener("change", function() {
            localStorage.setItem(`checkbox${index}`, checkbox.checked);
        });
    });
});
