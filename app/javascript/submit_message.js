submit_message = function() {
    $('#message_body').on('keydown', function(e){
        if (e.keyCode == 13) {
            $('button').click();
            e.target.value = ""
        }
    });
};