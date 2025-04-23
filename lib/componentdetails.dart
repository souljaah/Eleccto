import 'package:flutter/material.dart';
import 'inductorsdetail.dart';

class ComponentDetailPage extends StatelessWidget {
  final String title;

  ComponentDetailPage(this.title);

  @override
  Widget build(BuildContext context) {
    Widget content;

    switch (title) {
      case 'Inductors':
        content = _buildInductorsContent();
        break;
      case 'Fuses':
        content = _buildFusesContent();
        break;
      case 'Memory':
        content = _buildMemoryContent();
        break;
      default:
        content = const Text("No detailed content available.");
    }

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: content,
      ),
    );
  }

  Widget _buildInductorsContent() {
    final List<String> inductorsItems = [
      'Power Supply Inductor',
      'High Frequency Inductor',
      'Low Frequency Inductor',
      'Air Core Inductor',
      'Ferrite Core Inductor',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: inductorsItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(inductorsItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getInductorPage(inductorsItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getInductorPage(String name) {
    switch (name) {
      case 'Power Supply Inductor':
        return PowerSupplyPage();
      case 'High Frequency Inductor':
        return HighFrequencyInductor();
      case 'Low Frequency Inductor':
        return LowFrequencyInductor();
      case 'Air Core Inductor':
        return AirCoreInductor();
      case 'Ferrite Core Inductor':
        return FerriteCoreInductor();
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildFusesContent() {
    final List<String> fusesItems = [
      'Glass Tube Fuse',
      'Blade Fuse',
      'Ceramic Fuse',
      'Resettable Fuse',
      'Thermal Fuse',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: fusesItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(fusesItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getFusePage(fusesItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getFusePage(String name) {
    switch (name) {
      case 'Glass Tube Fuse':
        return _getComponentDetailPage(name, 'Used in household appliances and electronics.');
      case 'Blade Fuse':
        return _getComponentDetailPage(name, 'Commonly used in automotive applications.');
      case 'Ceramic Fuse':
        return _getComponentDetailPage(name, 'Used in high-voltage circuits.');
      case 'Resettable Fuse':
        return _getComponentDetailPage(name, 'Fuses that can reset after a current overload.');
      case 'Thermal Fuse':
        return _getComponentDetailPage(name, 'Triggered by temperature increase, often used in heating devices.');
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _buildMemoryContent() {
    final List<String> memoryItems = [
      'RAM (Random Access Memory)',
      'ROM (Read Only Memory)',
      'Flash Memory',
      'EEPROM',
      'Cache Memory',
    ];

    return ListView.builder(
      shrinkWrap: true,
      itemCount: memoryItems.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(memoryItems[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => _getMemoryPage(memoryItems[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _getMemoryPage(String name) {
    switch (name) {
      case 'RAM (Random Access Memory)':
        return _getComponentDetailPage(name, 'Volatile memory used for temporary data storage.');
      case 'ROM (Read Only Memory)':
        return _getComponentDetailPage(name, 'Non-volatile memory used to store permanent data.');
      case 'Flash Memory':
        return _getComponentDetailPage(name, 'A type of non-volatile memory that can be electrically erased.');
      case 'EEPROM':
        return _getComponentDetailPage(name, 'Non-volatile memory used for storing small amounts of data.');
      case 'Cache Memory':
        return _getComponentDetailPage(name, 'A small-sized type of volatile computer memory.');
      default:
        return _getComponentDetailPage(name, 'No description available.');
    }
  }

  Widget _getComponentDetailPage(String title, String description) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
