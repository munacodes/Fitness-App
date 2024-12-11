import 'package:fitness_app/utils/export_utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String _status = '?', _steps = '?';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps.toString();
    });
    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
      message: _steps,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
      message: _steps,
      gravity: ToastGravity.BOTTOM,
    );
    setState(() {
      _status = event.status;
    });
    ShowFlutterToastOrSnackBar().showFlutterToastMessage(
      message: _status,
      gravity: ToastGravity.BOTTOM,
    );
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    setState(() {
      _status = 'Pedestrian Status not available';
    });
    ShowFlutterToastOrSnackBar().showFlutterErrorToastMessage(
      message: _status,
      gravity: ToastGravity.BOTTOM,
    );
    print(_status);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 'Step Count not available';
    });
    ShowFlutterToastOrSnackBar().showFlutterErrorToastMessage(
      message: _steps,
      gravity: ToastGravity.BOTTOM,
    );
  }

  Future<bool> _checkActivityRecognitionPermission() async {
    bool granted = await Permission.activityRecognition.isGranted;

    if (!granted) {
      granted = await Permission.activityRecognition.request() ==
          PermissionStatus.granted;
    }

    return granted;
  }

  Future<void> initPlatformState() async {
    bool granted = await _checkActivityRecognitionPermission();
    if (!granted) {
      // tell user, the app will not work
      ShowFlutterToastOrSnackBar().showFlutterErrorToastMessage(
        message: 'This device is not compatible for accelerometer sensor',
        gravity: ToastGravity.BOTTOM,
      );
      print(granted);
    }

    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    (await _pedestrianStatusStream.listen(onPedestrianStatusChanged))
        .onError(onPedestrianStatusError);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedometer Example'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Steps Taken',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                _steps,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Divider(
                height: 50,
                thickness: 0,
                color: Colors.grey,
              ),
              Text(
                'Pedestrian Status',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Icon(
                _status == 'walking'
                    ? Icons.directions_walk
                    : _status == 'stopped'
                        ? Icons.accessibility_new
                        : Icons.error,
                size: 50,
              ),
              Center(
                child: Text(
                  _status,
                  style: _status == 'walking' || _status == 'stopped'
                      ? TextStyle(fontSize: 30)
                      : TextStyle(fontSize: 20, color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
