$(document).ready(function(){
$("#wait").fadeOut(); 
$("#page_content").empty();
$("#wait").show();
document.title="Home- Dashboard";
$("#page_content").load("views/dashboard.html",function(responseTxt, statusTxt, jqXHR){
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
document.title="Sites";
$("#page_content").load("views/sites.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 $("#settings_materials_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Materials";
$("#page_content").load("views/materials.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 $("#settings_stores_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Stores";
$("#page_content").load("views/stores.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#settings_units_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Stores";
$("#page_content").load("views/units.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#settings_sections_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Stores";
$("#page_content").load("views/sections.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 $("#settings_sub_sections_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Sub Sections";
$("#page_content").load("views/sub_sections.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });

$("#settings_work_units_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Work Units";
$("#page_content").load("views/work_units.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 $("#settings_boqs_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="BOQs";
$("#page_content").load("views/boqs.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 $("#settings_size_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Sizes";
$("#page_content").load("views/sizes.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 
$("#settings_package_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Package";
$("#page_content").load("views/packages.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 
$("#site_requisitions_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Site Requisitions";
$("#page_content").load("views/site_requisitions.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#material_requisitions_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Material Requisitions";
$("#page_content").load("views/material_requisitions.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 $("#manage_lpos_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Local Purchase Orders";
$("#page_content").load("views/lpos.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#incoming_inwards_reports_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Inwards";
$("#page_content").load("views/incoming_inwards.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 
$("#deliveries_reports_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Deliveries";
$("#page_content").load("views/deliveries.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
$("#stores_reports_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Stores";
$("#page_content").load("views/site_stores.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#report_site_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Site Reports";
$("#page_content").load("views/reports/site_reports.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#report_lpos_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="LPO Reports";
$("#page_content").load("views/reports/lpo_reports.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#report_requisitions_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Requisition Reports";
$("#page_content").load("views/reports/requisition_reports.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#report_deliveries_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Delivery Reports";
$("#page_content").load("views/reports/delivery_reports.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
$("#report_inwards_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Inward Reports";
$("#page_content").load("views/reports/inward_reports.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
 
 $("#report_stock_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Stock";
$("#page_content").load("views/reports/stock_reports.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 });
$("#suppliers_reports_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Suppliers";
$("#page_content").load("views/suppliers.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 }); 
 $("#settings_mail_link").click(function(){
$("#page_content").empty();
$("#wait").show();
document.title="Mail Server Settings";
$("#page_content").load("views/mail.html",function(responseTxt, statusTxt, jqXHR){
if(statusTxt == "success"){$("#wait").hide();}
if(statusTxt == "error"){alert("Error: " + jqXHR.status + " " + jqXHR.statusText);}
 }); 	 
 }); 
 
});