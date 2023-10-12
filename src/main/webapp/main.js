

function Alert(t) {
    let type = document.getElementsByName(t);
    let value;
    for(let i in type) {
        if(type[i].checked) {
            value = type[i].value;
            break;
        }
    }
    if(value == null) window.alert("您还有题目未选");
}
