part of 'link_button.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return _LinkButton(
      icon: Icon(Icons.email_rounded, color: _iconColor),
      onPressed: () {
        Clipboard.setData(ClipboardData(text: PersonalLink.email.url));
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Copied to clipboard ✅")));
      },
      name: PersonalLink.email.name,
    );
  }
}
