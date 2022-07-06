const items = document.querySelectorAll ('#item');

let total = 0;

for (let item of items) {
    let cnt = item.innerText.split(' : ')[1];
    total += parseInt(cnt);
}

for (let itemCnt of document.querySelectorAll ('#itemCnt')) {
    itemCnt.innerHTML=total;
}
