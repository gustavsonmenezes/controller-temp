import 'package:flutter/material.dart';

void main() {
  runApp(const TemperatureApp());
}

class TemperatureApp extends StatelessWidget {
  const TemperatureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Temperatura',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TemperatureHomePage(),
    );
  }
}

class TemperatureHomePage extends StatefulWidget {
  const TemperatureHomePage({super.key});

  @override
  State<TemperatureHomePage> createState() => _TemperatureHomePageState();
}

class _TemperatureHomePageState extends State<TemperatureHomePage> {
  double _temperature = 25.0;

  void _increase() {
    setState(() => _temperature++);
  }

  void _decrease() {
    setState(() => _temperature--);
  }

  void _reset() {
    setState(() => _temperature = 25.0);
  }

  /// Retorna a mensagem e a cor correspondente à faixa de temperatura.
  (String, Color) _getFeedback() {
    if (_temperature <= 15) {
      return ("Está frio!", Colors.blue);
    } else if (_temperature <= 25) {
      return ("Temperatura agradável.", Colors.green);
    } else if (_temperature <= 35) {
      return ("Está quente!", Colors.orange);
    } else {
      return ("Está muito quente!", Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    final feedback = _getFeedback();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Controle de Temperatura'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_temperature.toStringAsFixed(1)}°C',
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              feedback.$1,
              style: TextStyle(
                fontSize: 24,
                color: feedback.$2,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrease,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 24),
                ElevatedButton(
                  onPressed: _increase,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 24),
            OutlinedButton.icon(
              onPressed: _reset,
              icon: const Icon(Icons.refresh),
              label: const Text('Resetar'),
            ),
          ],
        ),
      ),
    );
  }
}
