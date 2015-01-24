TIME = {
    startLog: function () {
        var start = Date.getTime();

    },

    endLog: function() {

        $(window).unload(function () {
            var end = Date.getTime();
            $.ajax({
                //Set ajax call
            })
        })
    },

    getTime: function(){

        var time = $.ajax({
            url: users/0/games/game_id,

        })
    }
};


