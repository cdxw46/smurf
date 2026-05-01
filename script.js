(() => {
  const countEl = document.getElementById("count");
  const incEl = document.getElementById("inc");
  const decEl = document.getElementById("dec");
  const yearEl = document.getElementById("year");

  let n = 0;
  const render = () => { countEl.textContent = String(n); };

  incEl.addEventListener("click", () => { n++; render(); });
  decEl.addEventListener("click", () => { n--; render(); });

  yearEl.textContent = String(new Date().getFullYear());
})();
