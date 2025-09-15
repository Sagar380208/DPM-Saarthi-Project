// script.js
const tabs = [...document.querySelectorAll('.tab[data-tab]')];
const pages = [...document.querySelectorAll('.page')];
const pills = [...document.querySelectorAll('.pill')];
const toast = document.getElementById('toast');

// Tabs -> show matching page
tabs.forEach(t=>{
  t.addEventListener('click', ()=>{
    tabs.forEach(x=>x.classList.remove('active'));
    t.classList.add('active');
    const id = t.dataset.tab;
    pages.forEach(p=>p.classList.toggle('show', p.dataset.tab === id));
  });
});

// Subject highlight
pills.forEach(p=>p.addEventListener('click', ()=>{
  pills.forEach(x=>x.classList.remove('active'));
  p.classList.add('active');
}));

// Demo actions
document.querySelectorAll('.gs button, .circle, .tool, .badge, .forum, .nav button').forEach(btn=>{
  btn.addEventListener('click', ()=>{
    toast.classList.add('show');
    setTimeout(()=>toast.classList.remove('show'), 1200);
  });
});
