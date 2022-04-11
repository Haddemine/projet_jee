window.onload = () => {
  if(JSON.parse(localStorage.getItem("page"))==null)
  {
    localStorage.setItem("page",JSON.stringify(1));
  }
  load();

};


//****************************************Affichage**************************************************************************************>

function ShowData() {
  let data = JSON.parse(localStorage.getItem("prs_array") || "[]");
  
  let output = document.getElementById("showResult");
  let html = ``;
  for (let prs of data) {
    html += `<tr >
        <td >${prs.id}</td>
        <td >${prs.name}</td>
        <td >${prs.sexe}</td>
        <td >${prs.naissance}</td>

        <td><button id="change" type='Submit' onclick='update(this);' class='btn btn-info'><i class="fas fa-pen fa-xs"></i></button>
  <button id="change" type='Submit' onclick='deleteRow(this);' class='btn btn-danger' ><i class="fas fa-trash fa-xs"></i></button></td>
    </tr>
  `;
  }
  output.innerHTML = html;
  
}

//******************************************update*********************************************************************************************>

function update(obj) {
  var id = obj.parentNode.parentNode.children[0].innerText;
  var name = obj.parentNode.parentNode.children[1].innerText;
  var sexe = obj.parentNode.parentNode.children[2].innerText;
  var naissance = obj.parentNode.parentNode.children[3].innerText;

  localStorage.setItem(
    "currObj",
    JSON.stringify({
      id: id,
      name: name,
      sexe: sexe,
      naissance: naissance,
    })
  );

  localStorage.setItem("EditRecord", JSON.stringify(true));
  window.location.href = "./Personne_form.html";

  let prs_arr = JSON.parse(localStorage.getItem("total_prs_array") || "[]");
  let filtered_arr = prs_arr.filter((obj) => obj.id !== id);
  localStorage.setItem("total_prs_array", JSON.stringify(filtered_arr));
}

//************************************************ Suppression *************************************************************************************>

function deleteRow(obj) {
  var confirmed = confirm("Voulez vous supprimer cette personne?");
  if (confirmed) {
    var id = obj.parentNode.parentNode.children[0].innerText;
    let prs_arr = JSON.parse(localStorage.getItem("total_prs_array") || "[]");
    let filtered_arr = prs_arr.filter((obj) => obj.id !== id);
    localStorage.setItem("total_prs_array", JSON.stringify(filtered_arr));
  }
  load();
  ShowData();
}

//*************************************************** Recherche ****************************************************************************************>

function search() {
  var by,input, filter, table, tr, td, i, txtValue;
  by = document.getElementById("searchby");
  if(by.value==="nom"){
  input = document.getElementById("searchbar");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }}else if(by.value==="prenom"){
    input = document.getElementById("searchbar");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[0];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }}else if(by.value==="genre"){
      input = document.getElementById("searchbar");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[2];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }}else if(by.value==="naissance"){
    input = document.getElementById("searchbar");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[3];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }}
}

// ******************************************************** Trier *************************************************************************************>

function sortedData(order, data, columnName) {
  return data.sort((a, b) => {
    var textA = a[columnName].toUpperCase();
    var textB = b[columnName].toUpperCase();
    if (order) {
      if (textA < textB) {
        return -1;
      } else if (textA > textB) {
        return 1;
      }
      return 0;
    } else {
      if (textA > textB) {
        return -1;
      } else if (textA < textB) {
        return 1; 
      }
      return 0;
    }
  });
}
let order = true;
function sort(columnName) {
  let data = JSON.parse(localStorage.getItem("prs_array") || "[]");

  data = sortedData(order, data, columnName);
  localStorage.setItem("prs_array", JSON.stringify(data));
  order = !order;
  ShowData();
}

//***************************************************Pagination**************************************************************************************>

var data =new Array();
var pageList = new Array();
var currentPage = JSON.parse(localStorage.getItem("page"));
var numberPerPage = 15;
var numberOfPages = 0;

function makeList() {
data=JSON.parse(localStorage.getItem("total_prs_array")||"[]");
numberOfPages = getNumberOfPages();
}

function getNumberOfPages() {
return Math.ceil(data.length / numberPerPage);
}

function nextPage() {
currentPage += 1;
localStorage.setItem("page",JSON.stringify(currentPage));
loadList();
}

function previousPage() {
currentPage -= 1;
localStorage.setItem("page",JSON.stringify(currentPage));
loadList();
}

function firstPage() {
currentPage = 1;
localStorage.setItem("page",JSON.stringify(currentPage));
loadList();
}

function lastPage() {
currentPage = numberOfPages;
localStorage.setItem("page",JSON.stringify(currentPage));
loadList();
}

function loadList() {
var begin = ((currentPage - 1) * numberPerPage);
var end = begin + numberPerPage;

pageList = data.slice(begin,end);
localStorage.setItem("prs_array",JSON.stringify(pageList));
//console.log(pageList);
ShowData();
check();
}

function check() {
document.getElementById("next").disabled = currentPage == numberOfPages ? true : false;
document.getElementById("previous").disabled = currentPage == 1 ? true : false;
document.getElementById("first").disabled = currentPage == 1 ? true : false;
document.getElementById("last").disabled = currentPage == numberOfPages ? true : false;
}

function load() {
makeList();
loadList();
}

//************************************ ___FIN ____*******************************************************************************************************************>

