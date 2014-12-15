/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$( document ).ready( function(){
    $('#edit_profile').click(function(){
        $('#user_content').load('profile.jsp');
    });
    
    $('#search_fuzzy').click(function(){
        $('#user_content').load('searchFuzzy.jsp');
    });
    
    $('#add_user').click(function(){
        $('#user_content').load('register.jsp');
    });
    $('#logout').click(function(){
        $(document).load('logout.jsp');
        setTimeout(function(){
            location.href="login.jsp";
        },100);
    });
});