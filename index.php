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
    <main class="bg-gray-200 min-h-[100vh]">
        <h1 class="text-center font-bolder text-2xl border-rounded-xl w-100vh pt-20 pb-20">Recherche des animaux!</h1>
        <div class="flex justify-center items-center w-100wh ">

            <form class="relative" action="recherche.php">
                <span class="absolute top-10 left-2 bg-white rounded-md p-1" id="search-list"></span>
                <input class="bg-white rounded-xl p-2" type="text" placeholder="Search..." name="search" id="search-field" list="search-list">
                <input class="bg-white hover:bg-gray-300 p-2 rounded-xl" type="submit" value="Search">
            </form>
        </div>
    </main>
</body>

</html>