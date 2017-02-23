setTimeout(function() {
    alert("Popup");
}, 3000);

function hammerTime(time) {
    function announceTime() {
        alert(`${time} is hammertime!`);
    }

    setTimeout(announceTime, 1000);
}

hammerTime("It's");
