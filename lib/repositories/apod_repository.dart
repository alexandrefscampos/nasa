import 'package:nasa/models/apod_model.dart';

class APODRepository {
  // final Dio _dio = Dio();

  Future<List<APODModel>> getAPOD() async {
    // final response = await _dio.get(
    //   'https://api.nasa.gov/planetary/apod?api_key=iNRFlRwvry6FNeZrLGrk7hf3nNHutE7lLDgymlFg',
    // );
    return json
        .map((e) => APODModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  final json = [
    {
      "copyright": "John Sarkissian",
      "date": "2024-03-01",
      "explanation":
          "Murriyang, the CSIRO’s Parkes Radio Telescope, points toward a nearly Full Moon in this image from New South Wales, Australia, planet Earth. Bathed in moonlight, the 64 meter dish is receiving weak radio signals from Odysseus, following the robotic lander's February 22 touch down some 300 kilometers north of the Moon's south pole. The landing of Odysseus represents the first U.S. landing on the Moon since the Apollo 17 mission in 1972. Odysseus' tilted orientation on the lunar surface prevents its high-gain antenna from pointing toward Earth. But the sensitivity of the large, steerable Parkes dish significantly improved the reception of data from the experiments delivered to the lunar surface by the robotic moon lander. Of course the Parkes Radio Telescope dish became famous for its superior lunar television reception during the Apollo 11 mission in 1969, allowing denizens of planet Earth to watch the first moonwalk.",
      "hdurl":
          "https://apod.nasa.gov/apod/image/2403/The_Dish_Tracking_IM-1_22February2024_04.jpg",
      "media_type": "image",
      "service_version": "v1",
      "title": "Odysseus and The Dish",
      "url":
          "https://apod.nasa.gov/apod/image/2403/The_Dish_Tracking_IM-1_22February2024_04s.jpg"
    },
    {
      "date": "2024-03-02",
      "explanation":
          "Methalox rocket engine firing, Odysseus' landing legs absorb first contact with the lunar surface in this wide-angle snapshot from a camera on board the robotic Intuitive Machines Nova-C moon lander. Following the landing on February 22, broken landing legs, visible in the image, ultimately left the lander at rest but tilted. Odysseus' gentle lean into a sloping lunar surface preserved the phone booth-sized lander's ability to operate, collect solar power, and return images and data to Earth. Its exact landing site in the Moon's far south polar region was imaged by NASA's Lunar Reconnaissance Orbiter. Donated by NASA, the American flag seen on the lander's central panel is 1970 Apollo program flight hardware.",
      "hdurl":
          "https://apod.nasa.gov/apod/image/2403/IM_Odysseus_landing-2048x1118.png",
      "media_type": "image",
      "service_version": "v1",
      "title": "Odysseus on the Moon",
      "url":
          "https://apod.nasa.gov/apod/image/2403/IM_Odysseus_landing-1100x600.png"
    },
    {
      "copyright":
          "\nJun Ho Oh (KAIST, \nHuboLab); \n Music: \nFlowing Air by \nMattia Vlad Morleo\n",
      "date": "2024-03-03",
      "explanation":
          "How would you feel if the Sun disappeared? Many eclipse watchers across the USA surprised themselves in 2017 with the awe that they felt and the exclamations that they made as the Sun momentarily disappeared behind the Moon. Perhaps expecting just a brief moment of dusk, the spectacle of unusually rapid darkness, breathtakingly bright glowing beads around the Moon's edge, shockingly pink solar prominences, and a strangely detailed corona stretching across the sky caught many a curmudgeon by surprise.  Many of these attributes  were captured in the featured real-time, three-minute video of 2017's total solar eclipse. The video frames were acquired in  Warm Springs, Oregon with equipment specifically designed by Jun Ho Oh to track a close-up of the Sun's periphery during eclipse.  As the video ends, the Sun is seen being reborn on the other side of the Moon from where it departed.  Next month, on April 8th, a new total solar eclipse will be visible in a thin band across North America.",
      "media_type": "video",
      "service_version": "v1",
      "title": "A Total Solar Eclipse Close-Up in Real Time",
      "url": "https://www.youtube.com/embed/5D9j-8Vhyto?rel=0&showinfo=0"
    },
    {
      "copyright": "\nN. D. Liao\n",
      "date": "2024-03-04",
      "explanation":
          "What's happening across that field?  Pictured here are not auroras but nearby light pillars, a phenomenon typically much closer.   In most places on Earth, a lucky viewer can see a Sun pillar, a column of light appearing to extend up from the Sun caused by flat fluttering ice-crystals reflecting sunlight from the upper atmosphere.  Usually, these ice crystals evaporate before reaching the ground.  During freezing temperatures, however, flat fluttering ice crystals may form near the ground in a form of light snow  sometimes known as a crystal fog.  These ice crystals may then reflect ground lights in columns not unlike a Sun pillar.  The featured image was taken last month across the Wulan Butong Grasslands in Inner Mongolia, China.",
      "hdurl":
          "https://apod.nasa.gov/apod/image/2403/PillarsMongolia_Liao_6240.jpg",
      "media_type": "image",
      "service_version": "v1",
      "title": "Light Pillars Over Inner Mongolia",
      "url":
          "https://apod.nasa.gov/apod/image/2403/PillarsMongolia_Liao_960.jpg"
    },
    {
      "copyright": "\nDavid Moulton\n",
      "date": "2024-03-05",
      "explanation":
          "Is this a painting or a photograph? In this celestial abstract art composed with a cosmic brush, dusty nebula NGC 2170, also known as the Angel Nebula, shines just above the image center. Reflecting the light of nearby hot stars, NGC 2170 is joined by other bluish reflection nebulae, a red emission region, many dark absorption nebulae, and a backdrop of colorful stars. Like the common household items that abstract painters often choose for their subjects, the clouds of gas, dust, and hot stars featured here are also commonly found in a setting like this one --  a massive, star-forming molecular cloud in the constellation of the Unicorn (Monoceros). The giant molecular cloud, Mon R2, is impressively close, estimated to be only 2,400 light-years or so away. At that distance, this canvas would be over 60 light-years across.",
      "hdurl":
          "https://apod.nasa.gov/apod/image/2403/AngelNebula_Moulton_2516.jpg",
      "media_type": "image",
      "service_version": "v1",
      "title": "NGC 2170: Angel Nebula Abstract Art",
      "url": "https://apod.nasa.gov/apod/image/2403/AngelNebula_Moulton_960.jpg"
    },
    {
      "date": "2024-03-06",
      "explanation":
          "What kind of celestial object is this? A relatively normal galaxy -- but seen from its edge.  Many disk galaxies are actually just as thin as NGC 5866, the Spindle galaxy, pictured here, but are not seen edge-on from our vantage point.  A perhaps more familiar galaxy seen edge-on is our own Milky Way galaxy.  Also cataloged as M102, the Spindle galaxy has numerous and complex dust lanes appearing dark and red, while many of the bright stars in the disk give it a more blue underlying hue.  The blue disk of young stars can be seen in this Hubble image extending past the dust in the extremely thin galactic plane. There is evidence that the Spindle galaxy has cannibalized smaller galaxies over the past billion years or so, including multiple streams of faint stars, dark dust that extends away from the main galactic plane, and a surrounding group of galaxies (not shown).  In general, many disk galaxies become thin because the gas that forms them collides with itself as it rotates about the gravitational center. The Spindle galaxy lies about 50 million light years distant toward the constellation of the Dragon (Draco).",
      "hdurl":
          "https://apod.nasa.gov/apod/image/2403/M102_HubbleEbrahimian_3615.jpg",
      "media_type": "image",
      "service_version": "v1",
      "title": "M102: Edge-on Disk Galaxy",
      "url":
          "https://apod.nasa.gov/apod/image/2403/M102_HubbleEbrahimian_960.jpg"
    }
  ];
  // final APODRemoteDataSource remoteDataSource;

  // APODRepository({required this.remoteDataSource});

  // Future<APOD> getAPOD(DateTime date) async {
  //   try {
  //     final apod = await remoteDataSource.getAPOD(date);
  //     return apod;
  //   } on ServerException {
  //     throw ServerException();
  //   }
  // }
}
