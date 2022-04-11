
window.onload = ()=>{
    if(localStorage.getItem("CodeRunBefore") === null)
    {
        let prs_arr = [];
        localStorage.setItem("total_prs_array", JSON.stringify(prs_arr));
        localStorage.setItem("CodeRunBefore", true);
    
    }
  }

  //**************************************************Ajouter*********************************************************************************************************>
 
  function addData(){
    var Id = document.getElementById("id").value;
    var Name = document.getElementById("name").value;
    var Sexe = document.getElementById("sexe").value;
    var Naissance = document.getElementById("naissance").value;
  
    if(Id !== null && Name !== null ){
        let PERSON_INFO = {
            id : Id, name : Name, sexe : Sexe, naissance:Naissance,
        };
    
        sessionStorage.setItem("curr_item", JSON.stringify(PERSON_INFO));
    
    
        let prs_arr = JSON.parse(localStorage.getItem("total_prs_array")|| "[]");
        prs_arr.push(PERSON_INFO);
        localStorage.setItem("total_prs_array", JSON.stringify(prs_arr));
    }
      window.location.href="./index.html";
  }

//*****************************************ResetForm************************************************************************************************** */
  
const resetForm = () => {
    document.getElementById("id").value = "";
    document.getElementById("name").value = "";
    document.getElementById("sexe").value = "";
    document.getElementById("naissance").value = "";
  };

  // ********************************************Modifier******************************************************************************>
  
  var EditRecord= JSON.parse(localStorage.getItem("EditRecord"));
  if(EditRecord){
      let currObj = JSON.parse(localStorage.getItem("currObj"));
      document.getElementById("id").value = currObj.id;
      document.getElementById("name").value = currObj.name;
      document.getElementById("sexe").value = currObj.sexe;
      document.getElementById("naissance").value = currObj.naissance;
      
      localStorage.setItem("EditRecord", JSON.stringify(false));
  }  


//*************************************************************************************************************************************************************** */
