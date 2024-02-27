$('document').ready(function(){
    const announcementBanner = document.createElement('marquee');
    let announcement="Announcement :"
    fetch('/announcements_all')
    .then(response => response.json())
    .then(data => {
        data.forEach((item) => {
              announcement= announcement + item.description;
    })
    if(announcement.length!==14){
        $('#content').css('padding-top','0');
        announcementBanner.className="announcement-banner"
        announcementBanner.textContent=announcement
        $('#content').prepend(announcementBanner) 
    }
  })
})