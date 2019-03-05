
function myFunction(val) {
  //alert("The input value has changed. The new value is: " + val);
  equipment_no = document.getElementById("equipment_no").value;
  equipment_type_id = document.getElementById("equipment_type_id").value;
  if(equipment_no){
 $.ajax({
    type: 'POST',
    url: '/equipment',                
    data: {
      equipment: {
        equipment_no : equipment_no,
          equipment_type_id: equipment_type_id
        }
    },
        error : function(data){console.log("error:" + data)
    },
    dataType: "json",
    success: function(data) {
     console.log(data)
     equipment_id = data['id']
     $("#event_equipment_id").val(equipment_id)
 }  
})
  }
  else{
    alert("First fill the equp no");
  }
}