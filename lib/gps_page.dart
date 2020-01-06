import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:date_format/date_format.dart';
import 'dart:async';

class GPSPage extends StatefulWidget {
  @override
  _GPSPageState createState() => _GPSPageState();
}

class _GPSPageState extends State<GPSPage> {
  Completer<GoogleMapController> _controller = Completer();
//  GoogleMapController mapController;

  static const LatLng _center = const LatLng(37.0000, 126.0000);

  final Set<Marker> _markers = Set();

  static final CameraPosition position = CameraPosition(
    target: _center, // 맵에 현재 위치를 보여줄 위도, 경도
    zoom: 16.0,
  );

  /* 클릭이벤트로 새로운 위치 넣을때 사용할 수 있는 방법
  Future<void> _goTo() async {
    double lat = 37.0000;
    double lng = 126.0000;

    GoogleMapController controller = await _controller.future;
    _markers.add(
        Marker(markerId: MarkerId('title'),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(title: 'title', snippet: 'hello')
      )
    );
  }*/

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    String date = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd, ' ', HH, ":", nn]);
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('root'),
          position: LatLng(37.0000, 126.0000),
          infoWindow: InfoWindow(title: 'title', snippet: '$date'),
          icon: BitmapDescriptor.defaultMarker
      ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GoogleMap(
//          markers: _markers,
          mapType: MapType.normal,
          initialCameraPosition: position,
          onMapCreated: _onMapCreated,
          markers: _markers,
        )
    );
  }
}
