$(document).ready(function () {
    
    $('#edit_profile').click(function () {
        $('#user_content').load('profile.jsp');
    });
    
    $('#search_fuzzy').click(function () {
        $('#user_content').load('search_fuzzy.jsp');
    });

    $('#add_user').click(function () {
        $('#user_content').load('add_edit_user.jsp');
    });
    
    $('#logout').click(function () {
        $(document).load('logout.jsp');
        setTimeout(function () {
            location.href = "login.jsp";
        }, 100);
    });
    
    $("#searchSimpleForm input").keypress(function(event){
         return isNumber(event);
    });
    
    $("#edit_dane").click(function(){
        $('#user_content').load('edit_dane.jsp');
    });
    
    $("#search_not_fuzzy").click(function(){
        $('#user_content').load('searchSimple.jsp');
    });
    
    $("#look_offers").click(function(){
        $.ajax({
            url: "Manage",
            type: 'POST',
            async: false,
            data: {
                action: "look_offers"
            },
            success: function (data) {
                $('#user_content').html(data);
                add_edit_button();
                add_delete_button();
            }       
        });
    });
    
    $("#look_offers_user").click(function(){
        $.ajax({
            url: "Manage",
            type: 'POST',
            async: false,
            data: {
                action: "look_offers"
            },
            success: function (data) {
                $('#user_content').html(data);
            }       
        });
    });
    
    $("#add_offer").click(function(){
        $.ajax({
            url: "Manage",
            type: 'POST',
            async: false,
            data: {
                action: "add_offer"
            },
            success: function (data) {
                $('#user_content').html(data);
            }       
        });
    });
    
    $("#manage_users").click(function(){
        $.ajax({
            url: "Manage",
            type: 'POST',
            async: false,
            data: {
                action: "manage_users"
            },
            success: function (data) {
                $('#user_content').html(data);
            }       
        });
    });
    
});

function saveProfile() {
    var form = $("#profile_edit_form").serializeArray();
    var values = new Array();
    $.each(form, function (index, element) {
            values.push(element.value);
    });
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "save_profile",
            form_data: values
        },
        success: function (data) {
            $('#user_content').html(data);
        }
    });
}

function resetUserPass(userId) {
    if(confirm("Czy na pewno chcesz zresetować hasło użytkownika?"))
    {
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "reset_user_password",
            id: userId
        },
        success: function (data) {
                $('#user_content').html(data);
        }
    });
    }
}

function removeUserRow(userId) {
    if(confirm("Czy na pewno chcesz usunąć użytkownika?"))
    {
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "remove_user",
            id: userId
        },
        success: function (data) {
            $('#user_content').html(data);
        }
    });
    }
}

function editUserRow(userId) {
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "edit_user_form",
            id: userId
        },
        success: function (data) {
            $('#user_content').html(data);
        }
    });
}

function displayOffers() {
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "display_offers"
        },
        success: function (data) {
            $('#user_content').html(data);
            add_edit_button();
            add_delete_button();
        }
        
    });
}

function searchFuzzy() {
    var form = $("#search_fuzzy_form").serializeArray();
    var values = new Array();
    $.each(form, function (index, element) {
        values.push(element.name + "=>" + element.value);
    });
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "search_fuzzy",
            form_data: values
        },
        success: function (data) {
            $('#user_content').html(data);
        }
    });
}

function searchSimple(){
    var form = $("#searchSimpleForm").serializeArray();
    var values = new Array();
    $.each(form, function (index, element) {
        if(element.value)
            values.push(element.name + "=>" + element.value);
    });
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "search_simple",
            form_data: values
        },
        success: function (data) {
            $('#searchSimpleDiv').html(data);
        }
    });
}

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

function edit_dane(){
    var form = $("#edit_dane_form").serializeArray();
    var values = new Array();
    $.each(form, function (index, element) {
        if(element.value)
            values.push(element.name + "=>" + element.value);
    });
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "edit_dane",
            form_data: values
        },
        success: function (data) {
            $('#edit_dane_div').html(data);
        }
    });
}

function add_edit_button(){
    var tables = $(".result_table");
    $.each(tables,function(index,element){
        var id = element.getElementsByClassName("offer_id")[0].getElementsByTagName("b")[0].innerHTML;
        var id_number = id.substring(id.lastIndexOf(":")+2,id.length);
        $(this).find("#edit_button").html("<button onclick='edit_offer("+id_number+")'>Edytuj</button>");
    });
}

function add_delete_button(){
    var tables = $(".result_table");
    $.each(tables,function(index,element){
        var id = element.getElementsByClassName("offer_id")[0].getElementsByTagName("b")[0].innerHTML;
        var id_number = id.substring(id.lastIndexOf(":")+2,id.length);
        $(this).find("#delete_button").html("<button onclick='delete_offer("+id_number+")'>Usuń</button>");
    });
}

function edit_offer(number){
    $.ajax({
        url: "Manage",
        type: "POST",
        data: {
            action: "edit_offer_form",
            id: number
        },
        success: function(data){
            $("#user_content").html(data);
        }
    });
}

function delete_offer(number){
    $.ajax({
        url: "Manage",
        type: "POST",
        data: {
            action: "delete_offer_form",
            id: number
        },
        success: function(data){
            $("#user_content").html(data);
        }
    });
}

function confirm_edit_offer(){
    var form = $("#edit_offer_form").serializeArray();
    var values = new Array();
    $.each(form, function (index, element) {
        if(element.value)
            values.push(element.name + "=>" + element.value);
    });
    var id_text = $("#user_content").find("h1").text();
    var id = id_text.substring(id_text.lastIndexOf("r")+2,id_text.length);
   $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "confirm_edit_offer",
            form_data: values,
            id: id
        },
        success: function (data) {
            if(data == 1){
                $('#user_content').html("<h1>Zmieniono dane</h1><img src='correct-us.png' style='width: 300px;'/>");
            }
            else if(data == 0){
                alert("Niepoprawne dane");
            }
            else if(data ==2){
                alert("Proszę wypełnić formularz");
            }
            
        }
    });
}

function confirm_add_offer(){
    var form = $("#add_offer_form").serializeArray();
    var values = new Array();
    $.each(form, function (index, element) {
        if(element.value)
            values.push(element.name + "=>" + element.value);
    });
   $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "confirm_add_offer",
            form_data: values
        },
        success: function (data) {
            if(data == 1){
                $('#user_content').html("<h1>Dodano ofertę</h1><img src='correct-us.png' style='width: 300px;'/>");
            }
            else if(data == 0){
                alert("Niepoprawne dane");
            }
            else if(data ==2){
                alert("Proszę wypełnić formularz");
            }
            else if(data ==3){
                alert("Proszę wypełnić wszystkie pola");
            }
        }
    });
}

function confirm_delete_offer(){
    var id_text = $("#user_content").find("h1").text();
    var id = id_text.substring(id_text.lastIndexOf("d")+2,id_text.length);
    $.ajax({
        url: "Manage",
        type: 'POST',
        async: false,
        data: {
            action: "confirm_delete_offer",
            id: id
        },
        success: function (data) {
            if(data == 1){
                $('#user_content').html("<h1>Usunięto ofertę</h1><img src='correct-us.png' style='width: 300px;'/>");
            }
            else if(data == 0){
                $('#user_content').html("<h1>Brak oferty o podanym id</h1>");
            }
        }
    });
    
}
    
function confirm_edit_user(){
    if(confirm("Czy na pewno chcesz wprowadzić zmiany?"))
    {
        var form = $("#edit_user_form").serializeArray();
        var values = new Array();
        $.each(form, function (index, element) {
            if(element.value)
                values.push(element.name + "=>" + element.value);
        });
        var id_text = $("#user_content").find("h1").text();
        var id = id_text.substring(id_text.lastIndexOf("r")+2,id_text.length);
        $.ajax({
            url: "Manage",
            type: 'POST',
            async: false,
            data: {
                action: "confirm_edit_user",
                form_data: values,
                id: id
            },
            success: function (data) {
                if(data === 1){
                    $('#user_content').html("<h1>Zmieniono dane</h1><img src='correct-us.png' style='width: 300px;'/>");
                }
                else if(data === 0){
                    alert("Niepoprawne dane");
                }
                else if(data === 2){
                    alert("Proszę wypełnić formularz");
                } 
            }
        });
    }
}
