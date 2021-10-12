'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "921bc5cb2bf97b159256736961d02b3f",
"index.html": "fb5d92e2965fc5a30dd51fefd6451aee",
"/": "fb5d92e2965fc5a30dd51fefd6451aee",
"main.dart.js": "b9204521018b8c22c0f7136f09d0f552",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "36ea54ca9b62bbaa7005204835feac76",
"assets/AssetManifest.json": "056cbc169645f3bc95214de2ad6cac08",
"assets/NOTICES": "afdb009d9ff25fb958ca652692734da5",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/logos/rubik.png": "934c0e405287ad1e61fed1badd3e7269",
"assets/assets/logos/rubikmargin.png": "7ec0ec823e8a4b526fe791705a49237e",
"assets/assets/logos/flutter.png": "ce49d5bbcb34ddf6fd90012be6f9efe6",
"assets/assets/logos/github.png": "b6ec19ceacb23390aa66d2f101d0ddf6",
"assets/assets/logos/linkedin.png": "30c453b7f5fbdb09ea0cb42a5dc7a6e5",
"assets/assets/logos/rubiknomagin.png": "7fea7c08fe1f45be604077a49800e14b",
"assets/assets/type/all.png": "97473981b8539bd0d570bf16a401e7ec",
"assets/assets/type/pc.png": "c488ea7862848d4a6c3feb4413ca3b90",
"assets/assets/type/browser.png": "8bbd4dd79bbd5d61129b5b1884ed4870",
"assets/assets/categories/card.png": "c1a3b1b37db63a0adf080f5d3f1090fa",
"assets/assets/categories/first-person.png": "9e201d587d2fb24a673ad8c10b5b1db6",
"assets/assets/categories/fantasy.png": "6bf2b26470336024d6d2b51594cef357",
"assets/assets/categories/sailing.png": "89212a6d6343b3b54bc39a2fb0c59219",
"assets/assets/categories/turn-based.png": "bbb40f799286c9f32aeb15f93ebab86d",
"assets/assets/categories/survival.png": "4a6151f54e7532810084b70be407b223",
"assets/assets/categories/sci-fi.png": "3f7cefcc5d9afd1f77224324d8708522",
"assets/assets/categories/permadeath.png": "bb80a6f3c25d8a5451a00b743830d397",
"assets/assets/categories/space.png": "7bfb030875fafaf609c5a15e65bd6a9c",
"assets/assets/categories/action.png": "e286bee625c8d298029aa1d97e499d25",
"assets/assets/categories/strategy.png": "010f5e13b68b7f8e8ea03dd61f5e4f72",
"assets/assets/categories/mmofps.png": "579508b04b721adbf2c5138468f4e6e9",
"assets/assets/categories/moba.png": "53aa1457360b429bd364fc9a61e1ce21",
"assets/assets/categories/racing.png": "65948639669b8f1f2ea3a99e3a307fef",
"assets/assets/categories/top-down.png": "87c9d66d2eff41480bbbea72f99ca77d",
"assets/assets/categories/mmorts.png": "4fa1cd5961584a897d6a0871038a349d",
"assets/assets/categories/pixel.png": "150eb6348c66f36294ae33a79b759f48",
"assets/assets/categories/tower-defense.png": "4a1f70173668c823f1988876b3c75667",
"assets/assets/categories/flight.png": "a80469320c50d700d3ca2f9d207ee912",
"assets/assets/categories/sports.png": "73801155ce7f70a0c266b93c36c3c0b2",
"assets/assets/categories/mmo.png": "a213ed46a3d61c53d6a090b46ea190b6",
"assets/assets/categories/2d.png": "5da8c2fac50af1db16a12e24a02f2172",
"assets/assets/categories/voxel.png": "12e6c3891a8e80e532c1a1c778d8d414",
"assets/assets/categories/sandbox.png": "55e90de336f73451150e757dcca49034",
"assets/assets/categories/military.png": "be9d0f0211881dcc3899db82d2dfccb0",
"assets/assets/categories/open-world.png": "35add96a17787b9a5b5ad61734923a68",
"assets/assets/categories/pvp.png": "dfc5122f3619ed3c47e4916c90d13781",
"assets/assets/categories/third-person.png": "73a9c747ed44be0c17518148782ff47d",
"assets/assets/categories/3d.png": "d5a4b10e0094bc71b3165417ced43d9b",
"assets/assets/categories/zombie.png": "83efeda3a5d4c73b2be87892a2ec5637",
"assets/assets/categories/action-rpg.png": "ae67e0c03e5d6e270583e302302ce04c",
"assets/assets/categories/pve.png": "4fcacf7a36cc264a1b2b00662ace420c",
"assets/assets/categories/side-scroller.png": "33cb4db470bdde03b29cd9be46b3dfa1",
"assets/assets/categories/superhero.png": "f39fceba67883208c929456a69213aee",
"assets/assets/categories/fighting.png": "b08c320776e58c2eeb552534ced0c7b4",
"assets/assets/categories/mmotps.png": "b8b64985e7c8647bb320ea7b9af4973f",
"assets/assets/categories/martial-arts.png": "68405d77eeb740cb1b0435c2d25de215",
"assets/assets/categories/low-spec.png": "9a6fa9c89d3bc05da4c79b0a46987201",
"assets/assets/categories/mmorpg.png": "aca719cf0708260639ec81ab72dd326f",
"assets/assets/categories/battle-royale.png": "2a1d75aacf0ef00808893559d68689d0",
"assets/assets/categories/shooter.png": "da8325708960107df22074216e60d64d",
"assets/assets/categories/horror.png": "6c45a169bddfbf46af879a5714cc7fdb",
"assets/assets/categories/social.png": "739bcbc6426ccbd773ee26d83e19b2fa",
"assets/assets/categories/anime.png": "a17f05bc862bb9530e5b4845596e658a",
"assets/assets/categories/tank.png": "6397bb90353156d2e8662ade47b93fb0",
"assets/assets/sorts/relevancy.png": "e203e813c92a50e793b79b1282f46da9",
"assets/assets/sorts/alphabetical.png": "7356c1975ce00fbc342ce0ee6cc1de3c",
"assets/assets/sorts/popularity.png": "a986717a61f3e547c75e04dcc24db26e",
"assets/assets/sorts/release.png": "25e5c04b3ff9957cc3671ebf360be3a5"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
