import Mirage from 'ember-cli-mirage';

//Mock your API

export default function() {
    this.get('/mentor/:id', function(db, request){
        var params = request.params;
        return db['mentor'].find(params.id);
    });
 this.get('/mentor/', function(db, request){
        var params = request.params;
        return db['mentor'];
    });

    this.put('/mentor/:id', function(db, request){
        var id = request.params.id;
        var attrs = JSON.parse(request.requestBody);
        delete attrs.id
        return db['mentor'].update(id, attrs);
    });

    this.post('/mentor', function(db, request){
        var params = JSON.parse(request.requestBody);
        return db['mentor'].insert(params);
    });
}
