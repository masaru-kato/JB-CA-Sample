define([
    'postmonger'
], function(
    Postmonger
) {
    'use strict';

    var connection = new Postmonger.Session();
    var payload = {};
    var steps = [ // initialize to the same value as what's set in config.json for consistency
        { "label": "Step 1", "key": "step1" }
    ];

    $(window).ready(onRender);

    connection.on('initActivity', initialize);
    connection.on('requestedTokens', onGetTokens);
    connection.on('requestedEndpoints', onGetEndpoints);
    connection.on('requestedSchema', onGetSchema);
    connection.on('requestedCulture', onGetCulture);

    connection.on('clickedNext', onClickedNext);
    connection.on('clickedBack', onClickedBack);
    connection.on('gotoStep', onGotoStep);

    function onRender() {
        connection.trigger('ready'); // JB will respond the first time 'ready' is called with 'initActivity'

        connection.trigger('requestTokens');
        connection.trigger('requestEndpoints');
        connection.trigger('requestSchema');
        connection.trigger('requestCulture');


    }

    function initialize (data) {
        console.log("initialize is called.");
        if (data) {
            payload = data;
            init();
        }
    }

    function onGetTokens (tokens) {
        // Response: tokens == { token: <legacy token>, fuel2token: <fuel api token> }
        // console.log(tokens);
    }

    function onGetEndpoints (endpoints) {
        // Response: endpoints == { restHost: <url> } i.e. "rest.s1.qa1.exacttarget.com"
        // console.log(endpoints);
    }

    function onGetSchema (payload) {
        // Response: payload == { schema: [ ... ] };
        // console.log('requestedSchema payload = ' + JSON.stringify(payload, null, 2));
    }

    function onGetCulture (culture) {
        // Response: culture == 'en-US'; culture == 'de-DE'; culture == 'fr'; etc.
        // console.log('requestedCulture culture = ' + JSON.stringify(culture, null, 2));
    }

    function onClickedNext () {
        console.log("onClickedNext is called.");
        save();
    }

    function onClickedBack () {
        connection.trigger('prevStep');
    }

    function onGotoStep (step) {
        showStep(step);
        connection.trigger('ready');
    }

    function showStep(step, stepIndex) {
    }

    // -----------------------------------
    function init() {
        // 設定画面の初期表示 ※設定値はconfig.jsonで定義しておく
        var value1 = payload.arguments.execute.inArguments[0].setting1;
        var value2 = payload.arguments.execute.inArguments[0].setting2;
        var value3 = payload.arguments.execute.inArguments[0].setting3;
        var value4 = payload.arguments.execute.inArguments[0].setting4;
        console.log(`values are ${value1},${value2},${value3},${value4}`);
        
        $('#setting1').val(value1);
        $('#setting2').val(value2);
        $('#setting3').val(value3);
        $('#setting4').val(value4);

    }

    // -----------------------------------
    function save() {
        // 設定画面の設定値をpayloadへ保存
        var value1 = $('#setting1').val();
        var value2 = $('#setting2').val();
        var value3 = $('#setting3').val();
        var value4 = $('#setting4').val();

        payload.arguments.execute.inArguments[0].setting1 = value1;
        payload.arguments.execute.inArguments[0].setting2 = value2;
        payload.arguments.execute.inArguments[0].setting3 = value3;
        payload.arguments.execute.inArguments[0].setting4 = value4;

        if(value1 == ""){
            $('#errmsg').show();
            payload['metaData'].isConfigured = false;
            return;
        }

        payload['metaData'].isConfigured = true;

        console.log(`Saved!! Payload: ${JSON.stringify(payload)}`);
        connection.trigger('updateActivity', payload);
    }


});
