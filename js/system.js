$(document).ready(function(){
$("#wait").fadeOut(); 
$("#page_content").empty();
$("#wait").show();
document.title="Home- Dashboard";
$("#page_content").load("views/users.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}});
$("#settings_users_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Users";
$("#page_content").load("views/users.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 $("#settings_roles_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Roles";
$("#page_content").load("views/roles.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#settings_sites_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Roles";
$("#page_content").load("views/sites.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 $("#settings_stores_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Roles";
$("#page_content").load("views/stores.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
});