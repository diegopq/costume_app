part of 'pages.dart';

class CameraPage extends ConsumerStatefulWidget {
  const CameraPage({super.key});

  @override
  ConsumerState<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends ConsumerState<CameraPage> {
  late final DeepArController _controller = DeepArController();

  @override
  void initState() {
    super.initState();
    _controller
        .initialize(
      androidLicenseKey: Env.deepArAndroidKey,
      iosLicenseKey: Env.deepArIosKey,
    )
        .then((value) {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;
    ref.listen(filtersProvider, (previous, next) {
      _controller.switchEffect(next.selectedFilter.path);
    });

    return Scaffold(
      body: Stack(
        children: [
          Transform.scale(
            scale: (1 / _controller.aspectRatio) / deviceRatio,
            child: DeepArPreview(
              _controller,
              onViewCreated: () {
                _controller.switchEffect(
                    ref.read(filtersProvider).selectedFilter.path);
              },
            ),
          ),
          const NavButtons(),
          Positioned(
            width: size.width,
            height: size.height,
            child: CameraButtons(
              takePicture: () async {
                final file = await _controller.takeScreenshot();
                ImageGallerySaver.saveFile(file.path).then((value) =>
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Imagen guardada'),
                      duration: Duration(seconds: 3),
                    )));
              },
              switchCamera: () async {
                await _controller.flipCamera();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    print('destruido');
    super.dispose();
  }
}
