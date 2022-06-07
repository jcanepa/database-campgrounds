<!DOCTYPE html>
<html lang="en" class="h-full bg-gray-100">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NPS Campgrounds</title>
    <style>
        dl:nth-child(even) {background-color: rgb(248 250 252)}
        dl:nth-child(odd) {background-color: rgb(226 232 240)}
    </style>
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
                                <a href="https://github.com/jcanepa/database-campgrounds" class="max-w-xs rounded-full flex items-center">
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
                    <div class="mb-4 max-w-lg">
                        <input v-model="query" type="text" placeholder="Enter your query" class="rounded-md shadow-sm text-md p-3">
                        <input v-on:click="execute" type="button" value="Submit" class="inline-flex justify-center py-3 px-4 shadow-sm text-sm font-medium rounded-md text-white cursor-pointer bg-amber-700 hover:bg-amber-800">
                    </div>
                    <p v-if="db_request_error" color="text-red-600">
                        ERROR {{ db_request_error }}
                    </p>
                    <div class="border-4 border-dashed border-gray-200 rounded-lg p-5">
                        <div v-if="has_results">
                            <pre><strong>{{ last_query }}</strong></pre>
                            <br>
                            <pre class="my-4 hidden">{{ results }}</pre>

                            <table v-if="has_results" class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                                <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                                    <tr>
                                        <th v-for="header in this.column_headers" scope="col" class="px-6 py-3">
                                            {{ header }}
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="result in results" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                                        <td v-for="(value, key) in result"  class="w-4 p-4">
                                            {{ value }}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
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
                        'select * from campgrounds;',
                        'select * from campground_amenities;',
                        'select * from employees;',
                        'select * from hosts;',
                        'select * from campsites;',
                        'select * from stays;',
                        'select * from parties;',
                        'select * from payments;',
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
                },
            },
            computed: {
                has_results() {
                    return Array.isArray(this.results)
                        && this.results.length > 0;
                },
                column_headers() {
                    if (!this.has_results) {
                        return [] }
                    return Object.keys(
                        this.results[0]);
                }
            }
        })
    </script>
    <script src="https://cdn.tailwindcss.com"></script>
</body>
</html>