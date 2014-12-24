/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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