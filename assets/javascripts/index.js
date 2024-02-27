document.addEventListener('DOMContentLoaded', function() {
    var toggleButton = document.getElementById('toggle-announcement-form');
    if (toggleButton) {
      toggleButton.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default anchor behavior
        var form = document.getElementById('announcement-form');
        form.style.display = form.style.display === 'none' ? 'block' : 'none';
      });
    }
  });
  