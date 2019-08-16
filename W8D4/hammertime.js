window.setTimeout(5000, window.alert('HammerTime'));

function hammerTime(time) {
    window.setTimeout( () => alert(`${time} is Hammertime`), 5000);
}