import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late MapController controller;

  @override
  void initState() {
    super.initState();
    controller = MapController.customLayer(
      initPosition: GeoPoint(latitude: 36.6765, longitude: 48.4960),
      customTile: CustomTile(
        sourceName: "satellite",
        tileExtension: ".jpg",
        minZoomLevel: 2,
        maxZoomLevel: 19,
        urlsServers: [
          TileURLs(
            url:
                "https://services.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}",
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map Screen'), centerTitle: true),
      body: OSMFlutter(
        controller: controller,
        osmOption: OSMOption(
          zoomOption: ZoomOption(initZoom: 14),
          userTrackingOption: UserTrackingOption(enableTracking: false),
          roadConfiguration: RoadOption(roadColor: Colors.blue),
          showDefaultInfoWindow: false,
        ),
      ),
    );
  }
}
