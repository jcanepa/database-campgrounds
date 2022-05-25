<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NPS Campgrounds</title>
</head>
<body class="h-full">
    <div class="min-h-full">
        <nav class="bg-black">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex items-center justify-between h-16">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <img class="h-10 w-8" src="https://upload.wikimedia.org/wikipedia/commons/1/1d/US-NationalParkService-Logo.svg" alt="Workflow">
                        </div>
                        <h2 class="text-lg font-bold text-white ml-5">
                            National Park Service
                        </h2>
                    </div>
                    <div class="md:block">
                        <div class="ml-4 flex items-center md:ml-6">
                            <div class="ml-3 relative">
                                <a href="https://github.com/jcanepa/database-campgrounds" class="max-w-xs bg-gray-900 rounded-full flex items-center text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
                                    <img class="h-8 w-8 rounded-full" src="https://avatars.githubusercontent.com/u/3414201?v=4" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <header class="bg-white shadow">
            <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                <h1 class="text-3xl font-bold text-gray-900">
                    Campgrounds
                </h1>
            </div>
        </header>

        <!-- Vue.js binding -->
        <main id="app">
            <div class="max-w-7xl mx-auto py-6 sm:px-6 lg:px-8">
                <div class="px-4 py-6 sm:px-0">
                    <div class="mb-4 max-w-md">
                        <input v-model="query" placeholder="Enter your query" type="text" class="rounded-md shadow-sm text-md p-3">
                        <input type="button" value="Run" v-on:click="execute" class="inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white focus:outline-none cursor-pointer bg-amber-700 hover:bg-amber-800 py-3">
                    </div>
                    <p v-if="db_request_error" color="red">
                        {{ db_request_error }}
                    </p>
                    <div class="border-4 border-dashed border-gray-200 rounded-lg h-96 p-5">
                        <div v-if="results.length > 0">
                            Your query: {{ last_query }}
                            {{ results }}
                            <ul>
                                <li v-for="result in results">
                                    {{ result }}
                                </li>
                            </ul>
                        </div>
                        <p v-else>
                            No results.
                        </p>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script>
        var app = new Vue({
            el: '#app',
            data () {
                return {
                    query: null,
                    last_query: null,
                    results: [],
                    queries: [
                        'select * from national_parks;',
                    ],
                    db_request_error: null
                }
            },
            methods: {
                execute() {
                    axios.post('/bootstrap.php', {
                        sql_statement: this.query,
                    })
                    .then(response => {
                        this.last_query = this.query;
                        this.results = response.data;
                    })
                    .catch(error => {
                        this.db_request_error = error;
                    });
                }
            }
        })
    </script>
    <script src="https://cdn.tailwindcss.com"></script>
</body>
</html>