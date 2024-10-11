let slideIndex = 0; // Inicializa o índice do slide atual

function mostrarSlides() {
    const slides = document.querySelectorAll('.carrossel-imagem'); // Seleciona todas as imagens do carrossel
    slides.forEach((slide, index) => {
        // Exibe o slide atual e oculta os outros
        slide.style.display = index === slideIndex ? 'block' : 'none';
    });
}

function mudarSlide(n) {
    const slides = document.querySelectorAll('.carrossel-imagem'); // Seleciona todas as imagens
    slideIndex = (slideIndex + n + slides.length) % slides.length; // Atualiza o índice do slide atual
    mostrarSlides(); // Atualiza a exibição dos slides
}

// Inicia mostrando o primeiro slide
mostrarSlides();