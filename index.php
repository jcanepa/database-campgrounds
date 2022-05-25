<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NPS Campgrounds</title>
</head>
<body>
    <div id="app">
        <input v-model="query" placeholder="Enter your query" type="text">
        <input type="button" value="Execute" v-on:click="execute">
    </div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script>
        var app = new Vue({
            el: '#app',
            data () {
                return {
                    query: null,
                    results: []
                }
            },
            methods: {
                execute() {
                    axios.post('/bootstrap.php', {
                        foo: this.query,
                    })
                    .then(response => {
                        this.results = response.data;
                        console.log(response);
                        console.log(response.data);
                    })
                    .catch(error => {
                        console.log(error);
                    });
                }
            }
        })
    </script>
</body>
</html>