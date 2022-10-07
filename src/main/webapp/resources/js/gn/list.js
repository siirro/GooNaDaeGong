const item_date = document.querySelector("#item_date");

function getTime(value) {
    const today = new Date();
    console.log(today) //현재시간

    const timeValue = new Date(value); //글등록시간
    console.log(timeValue)

    const betweenTime = Math.floor((today.getTime() - timeValue.getTime()) / 1000 / 60);
    console.log(betweenTime)
    if (betweenTime < 1) return '방금전';
    if (betweenTime < 60) {
        return `${betweenTime}분전`;
    }

    const betweenTimeHour = Math.floor(betweenTime / 60);
    if (betweenTimeHour < 24) {
        return `${betweenTimeHour}시간전`;
    }

    const betweenTimeDay = Math.floor(betweenTime / 60 / 24);
    if (betweenTimeDay < 365) {
        return `${betweenTimeDay}일전`;
    }

    return `${Math.floor(betweenTimeDay / 365)}년전`;
}
