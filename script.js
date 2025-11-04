const searchField = document.getElementById("search-field");
const dataList = document.getElementById("search-list");
dataList.style.visibility = "hidden";

async function getList(value) {
  const response = await fetch(
    `search_list.php?search=${encodeURIComponent(value)}`
  );
  if (!response.ok) {
    throw new Error(`HTTP error! Status: ${response.status}`);
  }
  const data = await response.json();
  return data;
}

// REDONE WITH UL FOR SEPARATION
function fillList(data) {
  dataList.innerHTML = "";
  const firstList = document.createElement("ul");

  for (let elem of data[0]) {
    //console.log(elem);
    const option = document.createElement("li");
    option.innerText = elem["nom"];
    firstList.appendChild(option);
  }
  dataList.appendChild(firstList);
  const separator = document.createElement("hr");
  dataList.appendChild(separator);
  const secondList = document.createElement("ul");
  for (let elem of data[1]) {
    //console.log(elem);
    const option = document.createElement("li");
    option.innerText = elem["nom"];
    secondList.appendChild(option);
  }
  dataList.appendChild(secondList);
  if (data[0].length > 0 || data[1].length > 0)
    dataList.style.visibility = "visible";
  else dataList.style.visibility = "hidden";
  console.log(dataList);
}

// OLD VERSION USING DATALIST
/* function fillList(data) {
  dataList.innerHTML = "";
  for (let elem of data[0]) {
    //console.log(elem);
    const option = document.createElement("option");
    option.value = elem["nom"];
    dataList.appendChild(option);
  }
  const separator = document.createElement("option");
  separator.value = data;
  separator.disabled = true;
  separator.innerText = "-----------";
  //console.log(separator);
  dataList.appendChild(separator);
  for (let elem of data[1]) {
    //console.log(elem);
    const option = document.createElement("option");
    option.value = elem["nom"];
    dataList.appendChild(option);
  }
} */

if (searchField) {
  searchField.setAttribute("autocomplete", "off");
  searchField.addEventListener("keyup", async () => {
    if (searchField.value.length > 0)
      getList(searchField.value).then((result) => {
        fillList(result);
      });
    else dataList.style.visibility = "hidden";
  });
}

// RECHERCHE

const searchResults = document.getElementById("search-results");

function createElementLink(elem) {
  const link = document.createElement("a");
  link.href = "element.php?id=" + elem["id"];
  const card = document.createElement("div");
  card.classList.add(
    "w-80",
    "m-4",
    "border",
    "rounded-xl",
    "bg-gray-200",
    "p-2",
    "flex",
    "flex-col",
    "items-center",
    "hover:bg-gray-300"
  );
  const title = document.createElement("p");
  title.classList.add("d");
  title.innerText =
    "Nom: " + (elem["nom"].charAt(0).toUpperCase() + elem["nom"].slice(1));
  const id = document.createElement("p");
  //id.classList.add("");
  id.innerText = "ID: " + elem["id"];
  const desc = document.createElement("p");
  desc.classList.add("text-center");
  desc.innerText = elem["description"];
  card.append(title, id, desc);
  link.appendChild(card);
  return link;
}

function fillResearch(data) {
  searchResults.innerHTML = "";
  for (let elem of data[0]) {
    //console.log(elem);
    searchResults.append(createElementLink(elem));
  }
  for (let elem of data[1]) {
    //console.log(elem);
    searchResults.append(createElementLink(elem));
  }
}

if (searchResults) {
  const searchParams = new URLSearchParams(window.location.search);
  if (searchParams.has("search"))
    getList(searchParams.get("search")).then((result) => {
      fillResearch(result);
    });
}

// ELEMENT

const searchElement = document.getElementById("element-card");

function fillElement(elem) {
  searchElement.innerHTML = "";

  console.log(elem);
  const card = document.createElement("div");
  card.classList.add("flex", "flex-col", "items-center");
  const image = document.createElement("img");
  image.classList.add("w-[30vw]", "h-auto", "p-2", "rounded-xl");
  image.src = elem["image_url"];
  const title = document.createElement("p");
  title.classList.add("font-bold", "my-2");
  title.innerText = elem["nom"].charAt(0).toUpperCase() + elem["nom"].slice(1);
  const desc = document.createElement("p");
  //desc.classList.add("");
  desc.innerText = elem["description"];
  card.append(image, title, desc);
  searchElement.append(card);
}

async function getItem(value) {
  const response = await fetch(
    `search_item.php?id=${encodeURIComponent(value)}`
  );

  if (!response.ok) {
    throw new Error(`HTTP error! Status: ${response.status}`);
  }
  const data = await response.json();
  return data;
}

if (searchElement) {
  const searchElement = new URLSearchParams(window.location.search);
  if (searchElement.has("id"))
    getItem(searchElement.get("id")).then((result) => {
      fillElement(result);
    });
}
