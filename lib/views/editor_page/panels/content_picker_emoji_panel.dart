import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_folio/_utils/notifications/close_notification.dart';
import 'package:flutter_folio/_utils/string_utils.dart';
import 'package:flutter_folio/commands/books/create_placed_scraps_command.dart';
import 'package:flutter_folio/core_packages.dart';
import 'package:flutter_folio/data/book_data.dart';

class ContentPickerEmojiPanel extends StatefulWidget {
  const ContentPickerEmojiPanel({Key? key, required this.isVisible, required this.bookId, required this.pageId})
      : super(key: key);
  final bool isVisible;
  final String? pageId;
  final String bookId;

  @override
  State<ContentPickerEmojiPanel> createState() => _ContentPickerEmojiPanelState();
}

class _ContentPickerEmojiPanelState extends State<ContentPickerEmojiPanel> {
  static const List<Emojis> emojis = [
    Emojis.beers,
    Emojis.checkmark,
    Emojis.confetti,
    Emojis.cool,
    Emojis.cryingFace,
    Emojis.dizzyFace,
    Emojis.exclamationQuestion,
    Emojis.fire,
    Emojis.foldeHands,
    Emojis.heartEyes,
    Emojis.hundredPoints,
    Emojis.kissingFace,
    Emojis.locationPin,
    Emojis.musicalNotes,
    Emojis.palmsUp,
    Emojis.pileOfPoo,
    Emojis.redHJeart,
    Emojis.shootingStar,
    Emojis.smilingEyes,
    Emojis.sparkles,
    Emojis.squintingFace,
    Emojis.sunglassesFace,
    Emojis.tearsOfJoyFace,
    Emojis.warningSign,
  ];

  @override
  Widget build(BuildContext context) {
    bool isPageSelected = StringUtils.isNotEmpty(widget.pageId);
    return Visibility(
      maintainState: true,
      visible: widget.isVisible,
      child: GlassCard(
        child: Container(
          width: 300,
          height: 440,
          padding: EdgeInsets.all(Insets.lg),
          alignment: Alignment.center,
          child: GridView.builder(
            itemCount: emojis.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: Insets.xs,
              mainAxisSpacing: Insets.xs,
              childAspectRatio: 1,
            ),
            itemBuilder: (_, index) {
              Emojis e = emojis.elementAt(index);
              return SimpleBtn(
                  onPressed: isPageSelected ? () => _handleAddPressed(e) : null,
                  child: Container(padding: EdgeInsets.all(Insets.sm), alignment: Alignment.center, child: Emoji(e)));
            },

            //child: Text(emojis, style: TextStyle(fontSize: 32))
          ),
        ),
      ),
    );
  }

  void _handleAddPressed(Emojis emoji) {
    if (widget.pageId != null) {
      CreatePlacedScrapCommand().run(pageId: widget.pageId!, scraps: [
        ScrapItem(
          bookId: widget.bookId,
          aspect: 1,
          contentType: ContentType.emoji,
          data: EnumToString.convertToString(emoji),
        )
      ]);
    }
    CloseNotification().dispatch(context);
  }
}
