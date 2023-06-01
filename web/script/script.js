window.addEventListener('DOMContentLoaded', (event) => {
  const carousel = document.querySelector('.carousel');
  let isDragging = false;
  let startPosition = 0;
  let currentTranslate = 0;
  let previousTranslate = 0;

  carousel.addEventListener('mousedown', startDrag);
  carousel.addEventListener('mousemove', drag);
  carousel.addEventListener('mouseup', endDrag);
  carousel.addEventListener('mouseleave', endDrag);
  carousel.addEventListener('touchstart', startDrag);
  carousel.addEventListener('touchmove', drag);
  carousel.addEventListener('touchend', endDrag);
  carousel.addEventListener('touchcancel', endDrag);

  function startDrag(event) {
    if (event.type === 'touchstart') {
      startPosition = event.touches[0].clientX;
    } else {
      startPosition = event.clientX;
      carousel.classList.add('grabbing');
    }
    isDragging = true;
    animationID = requestAnimationFrame(animation);
  }

  function drag(event) {
    if (isDragging) {
      const currentPosition =
        event.type === 'touchmove' ? event.touches[0].clientX : event.clientX;
      currentTranslate = previousTranslate + currentPosition - startPosition;
    }
  }

  function endDrag(event) {
    cancelAnimationFrame(animationID);
    isDragging = false;
    const currentPosition =
      event.type === 'touchend' ? event.changedTouches[0].clientX : event.clientX;
    previousTranslate = currentTranslate;
    if (currentTranslate < 0) {
      currentTranslate = 0;
    } else if (currentTranslate > carousel.offsetWidth) {
      currentTranslate = carousel.offsetWidth;
    }
    startPosition = 0;
    carousel.classList.remove('grabbing');
  }

  function animation() {
    setTransform(currentTranslate);
    if (isDragging) {
      requestAnimationFrame(animation);
    }
  }

  function setTransform(translate) {
    carousel.style.transform = `translateX(-${translate}px)`;
  }

  const brandImages = document.querySelectorAll('.marca-item img');

  brandImages.forEach((image) => {
    image.addEventListener('mouseover', () => {
      image.style.transform = 'scale(1.1)';
    });

    image.addEventListener('mouseout', () => {
      image.style.transform = 'scale(1)';
    });
  });
});
