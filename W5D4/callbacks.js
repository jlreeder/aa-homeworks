// Meant to be copied and pasted into the browser's console, not run in Node

// Simple timeout
setTimeout(function() {
    alert("Popup");
}, 3000);

// Timeout with closure
function hammerTime(time) {
    function announceTime() {
        alert(`${time} is hammertime!`);
    }

    setTimeout(announceTime, 1000);
}

hammerTime("It's");
