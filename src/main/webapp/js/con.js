const btn = document.querySelector('button')
const inputs = document.querySelector('form')
btn.addEventListener('click', () => {

    const name = (inputs.elements["name"].value).trim()
    const email = (inputs.elements["email"].value).trim()
    const msg = (inputs.elements["message"].value.trim())
    const phone = (inputs.elements["phone"].value).trim()
    if (!name.length > 0 || !email.length > 0 || !msg.length > 0 || !phone.length > 0) {
        alert("All fields are mandatory")
        return
    }
    Email.send({
        Host: "smtp.mailtrap.io",
        Username: "840ae98b087f0f",
        Password: "f1e59d8960e489",
        To: "jeptoobridgid007@gmail.com",
        From: inputs.elements["email"],
        Subject: "Contact Us Query By the Customer",
        Body: msg + "<br>" + name + "<br>" + phone
    }).then(msg => alert("The email successfully sent"))
})



function validate(){
  var firstname = document.getElementById("firstname").value;
  var lastname = document.getElementById("lastname").value;
  var mobile = document.getElementById("mobile").value;
  var email = document.getElementById("email").value;
  var message = document.getElementById("message").value;
  var error_message = document.getElementById("error_message");
  
  error_message.style.padding = "10px";
  
  var text;
  if(firstname.length < 3){
    text = "Please Enter valid Name";
    error_message.innerHTML = text;
    return false;
  }
  if(lastname.length <3){
    text = "Please Enter Correct Subject";
    error_message.innerHTML = text;
    return false;
  }
  if(isNaN(mobile) || mobile.length != 10){
    text = "Please Enter valid Phone Number";
    error_message.innerHTML = text;
    return false;
  }
  if(email.indexOf("@") == -1 || email.length < 6){
    text = "Please Enter valid Email";
    error_message.innerHTML = text;
    return false;
  }
  if(message.length <= 14){
    text = "Please Enter More Than 14 Characters";
    error_message.innerHTML = text;
    return false;
  }
  alert("Form Submitted Successfully!");
  return true;
}