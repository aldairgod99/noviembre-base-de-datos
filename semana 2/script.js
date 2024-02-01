function cargarDatos() {
    fetch("Vocabulario del idioma zapoteco istmeño (diidxazá).json")
      .then((response) => response.json())
      .then((data) => {
        actualizarDatos(data);
      })
      .catch((error) => console.error("Error:", error));
  }
 
  function actualizarDatos(data) {
    const tabla = document.getElementById("tableBody");
    tabla.innerHTML = "";
    let contador = 0;
    data.forEach((element) => {
      let fila = tabla.insertRow();
      let celda = fila.insertCell();
      let celdaEspanol = fila.insertCell();
 
      celdaZapoteco.textContent = element.Zapoteco;
      celdaEspanol.textContent = element.Español;
      contador++;
    });
    document.getElementById("contador").textContent = contador;
  }
 
  function filtrarPalabras() {
    const textoBusqueda = document.getElementById("buscar").value.toLowerCase();
    fetch("Vocabulario del idioma zapoteco istmeño (diidxazá).json")
      .then((response) => response.json())
      .then((data) => {
        const datosFiltrados = data.filter(
          (element) =>
            element.Zapoteco.toLowerCase().includes(textoBusqueda) ||
            element.Español.toLowerCase().includes(textoBusqueda)
        );
        actualizarDatos(datosFiltrados);
        console.log(datosFiltrados);
      })
      .catch((error) => console.error("Error:", error));
  }
 
  window.onload = cargarDatos; 