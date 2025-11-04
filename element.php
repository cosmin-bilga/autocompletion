<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <script src="script.js" defer></script>
</head>

<body>
    <main>
        <div class="flex justify-center bg-gray-200 p-2 w-[100vw]">
            <form class="relative" action="recherche.php">
                <p class="font-bolder text-2xl">Recherche animaux:</p>
                <span class="absolute top-18 left-2 bg-white rounded-md p-1" id="search-list"></span>
                <input class="bg-white rounded-xl p-2" type="text" placeholder="Search..." name="search" id="search-field" list="search-list">

                <input class="bg-white hover:bg-gray-300 p-2 rounded-xl" type="submit" value="Search">
            </form>
        </div>
        <div id="element-card" class="w-100 md:w-[50vw] md:mx-auto bg-gray-200 rounded-2xl mt-10 py-5"></div>
    </main>

</body>

</html>