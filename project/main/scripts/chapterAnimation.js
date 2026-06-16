// GSAP Animation for Chapter List
gsap.registerPlugin(ScrollTrigger);

// Initial state - hide chapter items
gsap.set('.chapter-item', { opacity: 0, scale: 0.8, y: 20 });

// Animate chapter items on page load with stagger
gsap.to('.chapter-item', {
    opacity: 1,
    scale: 1,
    y: 0,
    duration: 0.6,
    stagger: 0.1,
    ease: 'back.out'
});

// Add hover animation to each chapter item
document.querySelectorAll('.chapter-item').forEach((item) => {
    item.addEventListener('mouseenter', () => {
        gsap.to(item, {
            scale: 1.05,
            duration: 0.3,
            ease: 'power2.out'
        });
    });

    item.addEventListener('mouseleave', () => {
        gsap.to(item, {
            scale: 1,
            duration: 0.3,
            ease: 'power2.out'
        });
    });
});

// Hilfe durch KI
