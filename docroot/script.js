function switchRelay(relay) {
    var button = document.getElementById('relay' + relay);
    var on = (button.getAttribute('data-state') == '0');  // if the relay is off, turn it on, and vice versa
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "/relay/" + relay + "/" + (on ? "on" : "off"), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var status = xhr.responseText;  // should be a string of 8 '0' or '1' chars
            for (var i = 0; i < 8; i++) {
                var button = document.getElementById('relay' + (i + 1));
                button.setAttribute('data-state', status[i]);
            }
        }
    }
    xhr.send();
}
function refreshStatus() {
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "/status/state", true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var status = xhr.responseText;  // should be a string of 8 '0' or '1' chars
            for (var i = 0; i < 8; i++) {
                var button = document.getElementById('relay' + (i + 1));
                button.setAttribute('data-state', status[i]);
            }
        }
    }
    xhr.send();
}

window.onload = refreshStatus;