'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "252bc3b2fe39300f566df108f75c59d6",
"assets/AssetManifest.bin.json": "750281761b47c5a67102f1791959f534",
"assets/AssetManifest.json": "5b8ccf834caa613e593aec7b7820bc77",
"assets/assets/fonts/goku/Goku%2520Stencil.ttf": "5e8fc0d94e7dcafce16e78d0e4821821",
"assets/assets/fonts/goku/Goku.ttf": "097905deb5713ad867cfff37b04f1941",
"assets/assets/fonts/raleway/Raleway-Black.ttf": "ca057783cb90d483d16662f202212050",
"assets/assets/fonts/raleway/Raleway-BlackItalic.ttf": "6bb69e40367ae9814db8c80152eed900",
"assets/assets/fonts/raleway/Raleway-Bold.ttf": "21c82294041b1504a5cbe4f566c8acd6",
"assets/assets/fonts/raleway/Raleway-BoldItalic.ttf": "17cc8fb94a06e0808b3a1e93a5ddee28",
"assets/assets/fonts/raleway/Raleway-ExtraBold.ttf": "1d8b73517fb37be5cf23cd3843ad4eb2",
"assets/assets/fonts/raleway/Raleway-ExtraBoldItalic.ttf": "33da5d431479287ebc94ecd1a9d1d039",
"assets/assets/fonts/raleway/Raleway-ExtraLight.ttf": "39de59bc225416348683ae039df2a1f9",
"assets/assets/fonts/raleway/Raleway-ExtraLightItalic.ttf": "7ef38cb3e0f9b6aa829cc7c9b90a615d",
"assets/assets/fonts/raleway/Raleway-Italic.ttf": "5579b5fda3005b7d349336b3425b9f89",
"assets/assets/fonts/raleway/Raleway-Light.ttf": "a36750fa9f5530b0c2760267df04ae37",
"assets/assets/fonts/raleway/Raleway-LightItalic.ttf": "bd42d0599d807527617bb3f5ed8df31b",
"assets/assets/fonts/raleway/Raleway-Medium.ttf": "0c8c5471e4a8bfe0f6167f56bcf1e2d3",
"assets/assets/fonts/raleway/Raleway-MediumItalic.ttf": "5aeca04536968ff9f32afc0bcd61eb60",
"assets/assets/fonts/raleway/Raleway-Regular.ttf": "d95649da7dfb965a289ac29105ce8771",
"assets/assets/fonts/raleway/Raleway-SemiBold.ttf": "804eb7bc11d3a38d5f5e108f8d1d1acd",
"assets/assets/fonts/raleway/Raleway-SemiBoldItalic.ttf": "5890daae80f0d711900058b808f819ec",
"assets/assets/fonts/raleway/Raleway-Thin.ttf": "02cf7464c6ce00474e8d90b69f103d75",
"assets/assets/fonts/raleway/Raleway-ThinItalic.ttf": "73456336793992177ea8a337ccaa6950",
"assets/assets/images/me.png": "e33a1123b0e23268f1ba3e66d00225ec",
"assets/assets/images/multan.png": "534ee134c11730ee5ea59d73a7537c28",
"assets/assets/images/project-images/1.png": "95990f2b600b099a0dcf258b5131198d",
"assets/assets/images/project-images/2.png": "11778ffc691d531bcd5070561554ff73",
"assets/assets/images/project-images/3.png": "1d7e84bfe06e01125efd45f0c56f872b",
"assets/assets/images/project-images/4.png": "8d81c7c18a7a15b062872a7836fa07c3",
"assets/assets/images/project-images/aam-express-1.png": "24e17f7a4578898152435e024c4ec248",
"assets/assets/images/project-images/aapl-stock-1.png": "bc85264272d9e8f9ccf450fb0c83ed8c",
"assets/assets/images/project-images/aapl-stock-2.png": "3487e448f6a87cc716a8683793999ac4",
"assets/assets/images/project-images/aapl-stock-3.png": "1ff7541b4b8d3104ccb06b8fd9b446fa",
"assets/assets/images/project-images/battery-alarm-1.png": "f9f92854860f477300a5079b68353c15",
"assets/assets/images/project-images/battery-alarm-10.png": "474e474db7990f2dfc2f168b30af7020",
"assets/assets/images/project-images/battery-alarm-2.png": "23e77fb951c05090e0ef67bc1a9a20ff",
"assets/assets/images/project-images/battery-alarm-3.png": "45b4f5f3e0931e5e1be21e38fc39bdad",
"assets/assets/images/project-images/battery-alarm-4.png": "34da08aa9ce9241960679cb54660c302",
"assets/assets/images/project-images/battery-alarm-5.png": "d06bce2d83ab7d0c76004a79164f7957",
"assets/assets/images/project-images/battery-alarm-6.png": "1fed84e865324f76f35dbc48cbd1712b",
"assets/assets/images/project-images/battery-alarm-7.png": "fc033dcc6ac14e2ace6d2db903d53ed0",
"assets/assets/images/project-images/battery-alarm-8.png": "5d283902c1d5117a0fdb55669ee4b813",
"assets/assets/images/project-images/battery-alarm-9.png": "da302175edd8bc626adfa9a846a72c6e",
"assets/assets/images/project-images/breast-cancer-1.png": "86843042be8f3e29ded07df0830f74e6",
"assets/assets/images/project-images/breast-cancer-2.png": "a03eea84640fdd19271a8dd60f82e367",
"assets/assets/images/project-images/breast-cancer-3.png": "bbfe44bef0e551654478b8838194a158",
"assets/assets/images/project-images/breast-cancer-4.png": "e27c42ceb8b3c95e60e72f15b31b0934",
"assets/assets/images/project-images/breast-cancer-5.png": "9390405a10e1a9786f0b50abdb247fe0",
"assets/assets/images/project-images/breast-cancer-6.png": "81c3f1dc86e10d9441544adbe9156b1f",
"assets/assets/images/project-images/breast-cancer-7.png": "c64ddce319dadd1dfa8a01ab85269bc2",
"assets/assets/images/project-images/breast-cancer-8.png": "8aee0d410b32321f6584a6deb3118731",
"assets/assets/images/project-images/breast-cancer-9.png": "430848f0f78535ec4a96124249ed32d0",
"assets/assets/images/project-images/diabetes-1.png": "ca948d1ffee7154bb0ff66479677cee2",
"assets/assets/images/project-images/diabetes-2.png": "ebcd4f7a227b50efbefd98ad488bbce6",
"assets/assets/images/project-images/diabetes-3.png": "3dfdf0e53e4a9b11ad864ee1ac1d4059",
"assets/assets/images/project-images/egovt-1.png": "852419a0f3646afddf8e0c44d93b8060",
"assets/assets/images/project-images/egovt-2.png": "cf2b0ba0c800ffc7607a7f431fe87e81",
"assets/assets/images/project-images/egovt-3.png": "901f542ccb1ddd70e7627eaf5c7a1545",
"assets/assets/images/project-images/egovt-4.png": "59f1f4d3d2d25f231b4cb4d303c748d5",
"assets/assets/images/project-images/egovt-5.png": "a80dba2417637676860ed50685cea879",
"assets/assets/images/project-images/egovt-6.png": "9ff6e4263a1a404c7d64c4d488978eb9",
"assets/assets/images/project-images/egovt-7.png": "980b83989f66214f96ae310a3d84fb06",
"assets/assets/images/project-images/mnist-classifier-1.png": "1b84e50dec51c353bc3b55bfe7a27fcd",
"assets/assets/images/project-images/mnist-classifier-2.png": "ee6817a374a446d22bad2d5bedfc4dcc",
"assets/assets/images/project-images/mnist-classifier-3.png": "2376827a97443e70633c4ce3b26ec7dc",
"assets/assets/images/project-images/mnist-classifier-4.png": "e6d6bee018321783b84d64237e9d7987",
"assets/assets/images/project-images/mnist-classifier-5.png": "b6d9f40bba21e961fb49adbb7b2d9835",
"assets/assets/images/project-images/mnist-classifier-6.png": "37919a29befb8cb28eea2ec777f8d620",
"assets/assets/images/project-images/pl-2.png": "e2095931173b13995de7648bffbb8281",
"assets/assets/images/project-images/pl-3.png": "8b6775102c228789ca5e9a12d17af40a",
"assets/assets/images/project-images/pl-4.png": "e273641d3ed3cf2999f421852f266301",
"assets/assets/images/project-images/pl-5.png": "e4056f30775a35284c43f0f1ac293281",
"assets/assets/images/project-images/pl-6.png": "cc7076965d84d1a2fb2e7b292be3bcb9",
"assets/assets/images/project-images/pl-7.png": "a0224c3c07441aae39b745b6beabf5b5",
"assets/assets/images/project-images/pl-8.png": "baed4e7bb36d6829fefb1fa878393270",
"assets/assets/images/project-images/smart-farming-1.png": "4eb33e68e648a66621ff18b7a4a13d29",
"assets/assets/images/project-images/smart-farming-2.png": "7740339b7aa7da4c1abb6159d78b161d",
"assets/assets/images/project-images/smart-farming-3.png": "46f263dece000dca5b0745910c29d363",
"assets/assets/images/project-images/speed-test-1.png": "3eae591f637778dbac7a57d06f5e6a88",
"assets/assets/images/project-images/speed-test-2.png": "7e265cf54c8d08f0db51fce7285f55e3",
"assets/assets/images/project-images/speed-test-3.png": "9567169fc5b84bcced416522ff55c105",
"assets/assets/images/project-images/speed-test-4.png": "205fabe7275630c2371c60ffbcb2b77b",
"assets/assets/images/project-images/speed-test-5.png": "50577231e093590bc415396ecad74bff",
"assets/assets/images/project-images/speed-test-6.png": "2397ba97092b912f9c6a9fea46e2d626",
"assets/assets/images/project-images/speed-test-7.png": "e9407c5c140e23429300926c61e84674",
"assets/assets/images/project-images/speed-test-8.jpeg": "44c614a90f73379463165f5192c3fd4c",
"assets/assets/images/project-images/speed-test-8.png": "1d7833fef4f437b5ca8a31caeb476484",
"assets/assets/images/project-images/urkido-1.png": "8f4b6c417112c00f9aea31b67d016629",
"assets/assets/images/project-images/urkido-10.png": "3ebed45f820597dfcd1a22564539c78b",
"assets/assets/images/project-images/urkido-11.png": "b9bfdce4792ddf79a604f47475d4c5ad",
"assets/assets/images/project-images/urkido-12.png": "8ffd0080a292f83ee6f0aa66e680031a",
"assets/assets/images/project-images/urkido-13.png": "f213d4e396fe44d9f4504d1eafbb4015",
"assets/assets/images/project-images/urkido-14.png": "971e3eaca3eb71e044032522b2c63e96",
"assets/assets/images/project-images/urkido-15.png": "6d168bbbef8be8405a6bad33865bfe97",
"assets/assets/images/project-images/urkido-16.png": "981a69a6a017716d57ad436b597231d1",
"assets/assets/images/project-images/urkido-17.png": "2994e98bf0b8f42a3de979d77dfbc760",
"assets/assets/images/project-images/urkido-18.png": "30d4441810c4a19ec993964ca4c49375",
"assets/assets/images/project-images/urkido-19.png": "d27757414a11dd5b5a04006d46701f1e",
"assets/assets/images/project-images/urkido-2.png": "3fe3da7a4927d1c52088817b60501ae3",
"assets/assets/images/project-images/urkido-3.png": "237d71222551877bc4d54408ed8badc4",
"assets/assets/images/project-images/urkido-4.png": "4aa180a0755ae49e0b9182bda0f71674",
"assets/assets/images/project-images/urkido-5.png": "be94fd0cc800753c09c621522c050fb0",
"assets/assets/images/project-images/urkido-6.png": "a733db6c55e54666ea6b0b5a38e2e0f0",
"assets/assets/images/project-images/urkido-7.png": "63807c53993c482e56de7124bab7ec01",
"assets/assets/images/project-images/urkido-8.png": "3138e6e6e19ee560482af4131e8f613f",
"assets/assets/images/project-images/urkido-9.png": "a42ea006fc0974ebcae30c840dc660cc",
"assets/assets/images/project-thumnail.png": "2c4c99b770299699069375c075b2303c",
"assets/assets/images/syncwell-onboard.png": "303636adeeda5734675c94f9d4b9d825",
"assets/assets/images/working_doodle.png": "88dc6c6b3463cec3f52e1b20dbbffc81",
"assets/assets/svg/apple.svg": "00587615733dd4954be85d8bf79f1d6f",
"assets/assets/svg/github.svg": "c23a95fcb4b1d25765107e4e73b06438",
"assets/assets/svg/linkedIn.svg": "fc81555a452e0fafcb442f489ceef19d",
"assets/assets/svg/playstore.svg": "c84e1855c8200db61a045eb5721d36ec",
"assets/assets/svg/x.svg": "8f662cde3e6a9aca24b77c1639d9423e",
"assets/FontManifest.json": "6cb66dfc36a92ddcd0c14ff31b075122",
"assets/fonts/MaterialIcons-Regular.otf": "cd4e9113130dbf701b1605b25e284cfd",
"assets/NOTICES": "c72e0372bf4f49f92ce04f6e6700557a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "98f0e5b42bd714149d3b3c4f093697f6",
"icons/android-chrome-192x192.png": "ce814f536a1130fffccae4c2bca71014",
"icons/android-chrome-384x384.png": "967af6e3650b3d54663bde09765e770b",
"icons/browserconfig.xml": "a493ba0aa0b8ec8068d786d7248bb92c",
"icons/safari-pinned-tab.svg": "b8db607890085bad9d909602d1ae3062",
"icons/site.webmanifest": "a6a636d6bfee2224e905352a35a94d79",
"index.html": "8131f3ecb105d327bcfddf4c8b691e70",
"/": "8131f3ecb105d327bcfddf4c8b691e70",
"main.dart.js": "5d1b49eaeb6eedabfb7637c8a56567e7",
"manifest.json": "4e60b3b86cc5fedb2a78b39dd47f5846",
"verce.json": "366fa832af1724c6cd5ccf716b1c73cc",
"version.json": "988901dc33b5dc50f175175837e0a411"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
