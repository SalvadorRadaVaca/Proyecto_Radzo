const title = document.querySelector('h1');

// console.log(title.style);
console.log(title.style.color);

title.style.margin = '50px';
title.style.fontSize = '50px';

const paras = document.querySelectorAll('p');

paras.forEach(p => {
   if(p.textContent.includes('error')){
      p.classList.add('bg-danger', 'text-white', 'text-center', 'mx-auto', 'p-3');
   }
   if(p.textContent.includes('success')){
      p.classList.add('bg-success', 'text-white', 'text-center', 'mx-auto', 'p-3');
   }
});