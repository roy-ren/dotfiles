import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('No file provided.');
    exit(1);
  }

  final filePath = arguments.first;
  final file = File(filePath);

  if (!file.existsSync()) {
    print('File not found: $filePath');
    exit(1);
  }

  final lines = file.readAsLinesSync();
  final formattedLines = lines.map((line) {
    if (line.trim().endsWith(')')) {
      return line.replaceFirst(')', ',)');
    }
    return line;
  }).toList();

  file.writeAsStringSync(formattedLines.join('\n'));
}
