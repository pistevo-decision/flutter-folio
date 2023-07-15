// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScrapBookData _$$_ScrapBookDataFromJson(Map<String, dynamic> json) =>
    _$_ScrapBookData(
      documentId: json['documentId'] as String? ?? "",
      key: json['key'] as String?,
      title: json['title'] as String? ?? "",
      desc: json['desc'] as String? ?? "",
      creationTime: json['creationTime'] as int? ?? -1,
      lastModifiedTime: json['lastModifiedTime'] as int? ?? -1,
      pageCount: json['pageCount'] as int? ?? 0,
      imageUrl: json['imageUrl'] as String? ?? "",
      pageOrder: (json['pageOrder'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ScrapBookDataToJson(_$_ScrapBookData instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'key': instance.key,
      'title': instance.title,
      'desc': instance.desc,
      'creationTime': instance.creationTime,
      'lastModifiedTime': instance.lastModifiedTime,
      'pageCount': instance.pageCount,
      'imageUrl': instance.imageUrl,
      'pageOrder': instance.pageOrder,
    };

_$_ScrapPageData _$$_ScrapPageDataFromJson(Map<String, dynamic> json) =>
    _$_ScrapPageData(
      documentId: json['documentId'] as String? ?? "",
      key: json['key'] as String?,
      bookId: json['bookId'] as String? ?? "",
      title: json['title'] as String? ?? "",
      desc: json['desc'] as String? ?? "",
      boxOrder: (json['boxOrder'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ScrapPageDataToJson(_$_ScrapPageData instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'key': instance.key,
      'bookId': instance.bookId,
      'title': instance.title,
      'desc': instance.desc,
      'boxOrder': instance.boxOrder,
    };

_$_ScrapItem _$$_ScrapItemFromJson(Map<String, dynamic> json) => _$_ScrapItem(
      documentId: json['documentId'] as String? ?? "",
      key: json['key'] as String?,
      bookId: json['bookId'] as String? ?? "",
      data: json['data'] as String? ?? "",
      config: json['config'] as String?,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      creationTime: json['creationTime'] as int? ?? -1,
      aspect: (json['aspect'] as num?)?.toDouble() ?? 1,
      contentType:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['contentType']),
    );

Map<String, dynamic> _$$_ScrapItemToJson(_$_ScrapItem instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'key': instance.key,
      'bookId': instance.bookId,
      'data': instance.data,
      'config': instance.config,
      'photos': instance.photos,
      'creationTime': instance.creationTime,
      'aspect': instance.aspect,
      'contentType': _$ContentTypeEnumMap[instance.contentType],
    };

const _$ContentTypeEnumMap = {
  ContentType.photo: 'photo',
  ContentType.text: 'text',
  ContentType.emoji: 'emoji',
  ContentType.hidden: 'hidden',
};

_$_PlacedScrapItem _$$_PlacedScrapItemFromJson(Map<String, dynamic> json) =>
    _$_PlacedScrapItem(
      documentId: json['documentId'] as String? ?? "",
      key: json['key'] as String?,
      bookId: json['bookId'] as String? ?? "",
      pageId: json['pageId'] as String? ?? "",
      scrapId: json['scrapId'] as String? ?? "",
      dx: (json['dx'] as num?)?.toDouble() ?? 0,
      dy: (json['dy'] as num?)?.toDouble() ?? 0,
      width: (json['width'] as num?)?.toDouble() ?? 0,
      height: (json['height'] as num?)?.toDouble() ?? 0,
      rot: (json['rot'] as num?)?.toDouble() ?? 0,
      scale: (json['scale'] as num?)?.toDouble() ?? 1,
      aspect: (json['aspect'] as num?)?.toDouble() ?? 1,
      contentType:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['contentType']),
      data: json['data'] as String? ?? "",
      config: json['config'] as String?,
      boxStyle: json['boxStyle'] == null
          ? null
          : BoxStyle.fromJson(json['boxStyle'] as Map<String, dynamic>),
      creationTime: json['creationTime'] as int? ?? -1,
      lastModifiedTime: json['lastModifiedTime'] as int? ?? -1,
    );

Map<String, dynamic> _$$_PlacedScrapItemToJson(_$_PlacedScrapItem instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'key': instance.key,
      'bookId': instance.bookId,
      'pageId': instance.pageId,
      'scrapId': instance.scrapId,
      'dx': instance.dx,
      'dy': instance.dy,
      'width': instance.width,
      'height': instance.height,
      'rot': instance.rot,
      'scale': instance.scale,
      'aspect': instance.aspect,
      'contentType': _$ContentTypeEnumMap[instance.contentType],
      'data': instance.data,
      'config': instance.config,
      'boxStyle': instance.boxStyle,
      'creationTime': instance.creationTime,
      'lastModifiedTime': instance.lastModifiedTime,
    };

_$_BoxStyle _$$_BoxStyleFromJson(Map<String, dynamic> json) => _$_BoxStyle(
      bgColor: json['bgColor'] == null
          ? Colors.black
          : const ColorConverter().fromJson(json['bgColor'] as String),
      fgColor: json['fgColor'] == null
          ? Colors.white
          : const ColorConverter().fromJson(json['fgColor'] as String),
      font:
          $enumDecodeNullable(_$BoxFontsEnumMap, json['font']) ?? BoxFonts.lato,
      align: $enumDecodeNullable(_$TextAlignEnumMap, json['align']) ??
          TextAlign.start,
    );

Map<String, dynamic> _$$_BoxStyleToJson(_$_BoxStyle instance) =>
    <String, dynamic>{
      'bgColor': const ColorConverter().toJson(instance.bgColor),
      'fgColor': const ColorConverter().toJson(instance.fgColor),
      'font': _$BoxFontsEnumMap[instance.font]!,
      'align': _$TextAlignEnumMap[instance.align]!,
    };

const _$BoxFontsEnumMap = {
  BoxFonts.caveat: 'caveat',
  BoxFonts.pathwayGothicOne: 'pathwayGothicOne',
  BoxFonts.amiri: 'amiri',
  BoxFonts.lato: 'lato',
  BoxFonts.mali: 'mali',
  BoxFonts.alfaSlabOne: 'alfaSlabOne',
};

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};
