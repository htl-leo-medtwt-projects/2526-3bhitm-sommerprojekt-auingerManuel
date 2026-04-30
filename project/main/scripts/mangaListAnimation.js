
gsap.registerPlugin(ScrollTrigger);


gsap.set('.manga-item', { opacity: 0, scale: 0.8, y: 20 });


gsap.to('.manga-item', {
    opacity: 1,
    scale: 1,
    y: 0,
    duration: 0.6,
    stagger: 0.12,
    ease: 'back.out'
});


document.querySelectorAll('.manga-item').forEach((item) => {
    item.addEventListener('mouseenter', () => {
        gsap.to(item, {
            scale: 1.08,
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
