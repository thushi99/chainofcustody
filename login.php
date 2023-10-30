<?php
session_start();
if(isset($_SESSION['id']) && $_SESSION['id'] > 0){
    header("Location:./");
    exit;
}
require_once('./DBConnection.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Chain of Custody</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/background.css">
    <script src="./js/jquery-3.6.0.min.js"></script>
    <script src="./js/popper.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/script.js"></script>
    <link href="./assets/images/favicon.png" rel="icon">
    <style>
        html, body{
            height:100%;
        }
    </style>
</head>
<body class="bg-dark" style="background: url(./assets/images/background.jpg);">
   <div class="h-100 d-flex jsutify-content-center align-items-center">
       <div class='w-100'>
        <h1 class="py-5 text-center text-light">Chain of Custody - Audit Trail</h1>
        <div class="card my-4 col-md-4 offset-md-4 border-5 shadow">
            <div class="card-body">
                <form action="" id="login-form">
                    <center>
                        <svg class="mx-auto my-3" xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                        </svg><br>
                        <small>Please Enter the Chain of Custody Admin Credentials</small>
                    </center>
                    <div class="form-group">
                        <label for="username" class="control-label">Username</label>
                        <input type="text" id="username" autofocus name="username" class="form-control my-2 py-2" placeholder="CoC Admin Username" required>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label">Password</label>
                        <input type="password" id="password" autofocus name="password" class="form-control my-2 py-2" placeholder="Password" required>
                    </div>
                    <div class="form-group d-flex w-100 justify-content-center">
                        <button class="btn btn-sm btn-primary my-4 py-1">Login</button>
                    </div>
                </form>
            </div>
        </div>
       </div>
   </div>
</body>
<script>
    $(function(){
        $('#login-form').submit(function(e){
            e.preventDefault();
            $('.pop_msg').remove()
            var _this = $(this)
            var _el = $('<div>')
                _el.addClass('pop_msg')
            _this.find('button').attr('disabled',true)
            _this.find('button[type="submit"]').text('Loging in...')
            $.ajax({
                url:'./Actions.php?a=login',
                method:'POST',
                data:$(this).serialize(),
                dataType:'JSON',
                error:err=>{
                    console.log(err)
                    _el.addClass('alert alert-danger')
                    _el.text("An error occurred.")
                    _this.prepend(_el)
                    _el.show('slow')
                    _this.find('button').attr('disabled',false)
                    _this.find('button[type="submit"]').text('Save')
                },
                success:function(resp){
                    if(resp.status == 'success'){
                        _el.addClass('alert alert-success')
                        setTimeout(() => {
                            location.replace('./');
                        }, 2000);
                    }else{
                        _el.addClass('alert alert-danger')
                    }
                    _el.text(resp.msg)

                    _el.hide()
                    _this.prepend(_el)
                    _el.show('slow')
                    _this.find('button').attr('disabled',false)
                    _this.find('button[type="submit"]').text('Save')
                }
            })
        })
    })
</script>
</html>
