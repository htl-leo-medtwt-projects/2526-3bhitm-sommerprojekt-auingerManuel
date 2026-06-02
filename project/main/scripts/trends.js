 const limitValues = [3, 5, 10];
    let currentLimit = 10;
    let currentMethod = 'votes';

    function updateLimit(idx) {
      currentLimit = limitValues[parseInt(idx)];
      document.getElementById('limit-badge').textContent = currentLimit;
    }

    function selectMethod(method) {
      currentMethod = method;
      document.getElementById('btn-votes').className    = method === 'votes'    ? 'active' : '';
      document.getElementById('btn-comments').className = method === 'comments' ? 'active' : '';
    }

    async function loadData() {
      const res = await fetch(`../../datenbank/GetData/trends/trends.php?method=${currentMethod}&limit=${currentLimit}&format=html`);
      const html = await res.text();
      document.getElementById('results').innerHTML = html;
    }