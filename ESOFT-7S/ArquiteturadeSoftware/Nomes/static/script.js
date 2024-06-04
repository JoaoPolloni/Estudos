$(document).ready(function() {
    $('#nameForm').on('submit', function(event) {
        event.preventDefault();
        var names = $('#names').val().split(',').map(name => name.trim());

        $.ajax({
            url: '/analyze',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({ names: names }),
            success: function(response) {
                $('#result').html('<img src="data:image/png;base64,' + response.plot_url + '"/>');
            },
            error: function(error) {
                $('#result').text('Erro ao processar a análise.');
            }
        });
    });
});
