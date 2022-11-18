let name_valid = false;
let email_valid = false;
let password_valid = false;
$(".create-account-button").attr("disabled", true);
$(".sign-up-name").on("keyup", function() {
	if($(this).val().length == 0){
		$("#name-box").removeClass();
        $("#name-box").addClass("sign-up-content-middle");
        name_valid = false;	
	}
	else if($(this).val().length < 2) {
        $("#name-box").removeClass();
        $("#name-box").addClass("sign-up-content-middle-wrong");
        name_valid = false;
	} else {
        $("#name-box").removeClass();
        $("#name-box").addClass("sign-up-content-middle-correct");
        name_valid = true;
	}
	button_show(name_valid, email_valid, password_valid);
})
$(".sign-up-email").on("keyup", function() {
    let re = /([A-Z0-9a-z_-][^@])+?@[^$#<>?]+?\.[\w]{2,4}/.test($(this).val());
	if($(this).val().length == 0) {
		$("#email-box").removeClass();
        $("#email-box").addClass("sign-up-content-middle");
        email_valid = false;
	} else if(!re) {
        $("#email-box").removeClass();
        $("#email-box").addClass("sign-up-content-middle-wrong");
        email_valid = false;
	} else {
        $("#email-box").removeClass();
        $("#email-box").addClass("sign-up-content-middle-correct");
        email_valid = true;
	}
	button_show(name_valid, email_valid, password_valid);
})
$(".sign-up-password").on("keyup", function() {
	let re = /^(?=.*[A-Za-z\d])(?=.*[@$!%*#?&\d])(?=.*[A-Za-z@$!%*#?&])[A-Za-z\d@$!%*?&]{10,}/.test($(this).val());
	if($(this).val().length == 0) {
		$("#password-box").removeClass();
        $("#password-box").addClass("sign-up-content-middle");
        password_valid = false;	
	}
	else if(!re) {
        $("#password-box").removeClass();
        $("#password-box").addClass("sign-up-content-middle-wrong");
        password_valid = false;
	} else {
        $("#password-box").removeClass();
        $("#password-box").addClass("sign-up-content-middle-correct");
        password_valid = true;
	}
	button_show(name_valid, email_valid, password_valid);
})
$(".sign-up-agreement").click(function(event){
	event.stopPropagation();
	event.preventDefault();
	if($(this).index() == 0){
		if($(this).find("span").hasClass("sign-up-background")){
			$(".sign-up-agreement").find("span").removeClass("sign-up-background");
		} else{
			$(".sign-up-agreement").find("span").addClass("sign-up-background");
		}
	} else if($(this).index() == 2 || $(this).index() == 3 || $(this).index() == 4) {
		if($(".sign-up-agreement:eq(0)").find("span").hasClass("sign-up-background")){
			$(".sign-up-agreement:eq(0)").find("span").removeClass("sign-up-background");
		}
		$(this).find("span").toggleClass("sign-up-background");
	} else {
		$(this).find("span").toggleClass("sign-up-background");
	}
	
	if(
		$(".sign-up-agreement:eq(2)").find("span").hasClass("sign-up-background") &&
		$(".sign-up-agreement:eq(3)").find("span").hasClass("sign-up-background")&&
		$(".sign-up-agreement:eq(4)").find("span").hasClass("sign-up-background")
	){
		$(".sign-up-agreement:eq(0)").find("span").addClass("sign-up-background");
	}
	button_show(name_valid, email_valid, password_valid);
});

function button_show(name_valid, email_valid, password_valid) {
	if(
		name_valid == true && email_valid == true && password_valid == true &&
		$(".sign-up-agreement:eq(2)").find("span").hasClass("sign-up-background") &&
		$(".sign-up-agreement:eq(3)").find("span").hasClass("sign-up-background")
	){
		$(".create-account-button").attr("disabled", false);			
	} else {
		$(".create-account-button").attr("disabled", true);			
	}
}