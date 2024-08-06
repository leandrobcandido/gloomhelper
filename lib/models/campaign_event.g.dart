// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCampaignEventCollection on Isar {
  IsarCollection<CampaignEvent> get campaignEvents => this.collection();
}

const CampaignEventSchema = CollectionSchema(
  name: r'CampaignEvent',
  id: -543356680532872593,
  properties: {
    r'number': PropertySchema(
      id: 0,
      name: r'number',
      type: IsarType.long,
    ),
    r'optionA': PropertySchema(
      id: 1,
      name: r'optionA',
      type: IsarType.bool,
    ),
    r'optionB': PropertySchema(
      id: 2,
      name: r'optionB',
      type: IsarType.bool,
    )
  },
  estimateSize: _campaignEventEstimateSize,
  serialize: _campaignEventSerialize,
  deserialize: _campaignEventDeserialize,
  deserializeProp: _campaignEventDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _campaignEventGetId,
  getLinks: _campaignEventGetLinks,
  attach: _campaignEventAttach,
  version: '3.1.0+1',
);

int _campaignEventEstimateSize(
  CampaignEvent object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _campaignEventSerialize(
  CampaignEvent object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.number);
  writer.writeBool(offsets[1], object.optionA);
  writer.writeBool(offsets[2], object.optionB);
}

CampaignEvent _campaignEventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CampaignEvent(
    number: reader.readLong(offsets[0]),
    optionA: reader.readBoolOrNull(offsets[1]) ?? false,
    optionB: reader.readBoolOrNull(offsets[2]) ?? false,
  );
  object.id = id;
  return object;
}

P _campaignEventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _campaignEventGetId(CampaignEvent object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _campaignEventGetLinks(CampaignEvent object) {
  return [];
}

void _campaignEventAttach(
    IsarCollection<dynamic> col, Id id, CampaignEvent object) {
  object.id = id;
}

extension CampaignEventQueryWhereSort
    on QueryBuilder<CampaignEvent, CampaignEvent, QWhere> {
  QueryBuilder<CampaignEvent, CampaignEvent, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CampaignEventQueryWhere
    on QueryBuilder<CampaignEvent, CampaignEvent, QWhereClause> {
  QueryBuilder<CampaignEvent, CampaignEvent, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CampaignEventQueryFilter
    on QueryBuilder<CampaignEvent, CampaignEvent, QFilterCondition> {
  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      numberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      optionAEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionA',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterFilterCondition>
      optionBEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'optionB',
        value: value,
      ));
    });
  }
}

extension CampaignEventQueryObject
    on QueryBuilder<CampaignEvent, CampaignEvent, QFilterCondition> {}

extension CampaignEventQueryLinks
    on QueryBuilder<CampaignEvent, CampaignEvent, QFilterCondition> {}

extension CampaignEventQuerySortBy
    on QueryBuilder<CampaignEvent, CampaignEvent, QSortBy> {
  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> sortByOptionA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionA', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> sortByOptionADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionA', Sort.desc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> sortByOptionB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionB', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> sortByOptionBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionB', Sort.desc);
    });
  }
}

extension CampaignEventQuerySortThenBy
    on QueryBuilder<CampaignEvent, CampaignEvent, QSortThenBy> {
  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByOptionA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionA', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByOptionADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionA', Sort.desc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByOptionB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionB', Sort.asc);
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QAfterSortBy> thenByOptionBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'optionB', Sort.desc);
    });
  }
}

extension CampaignEventQueryWhereDistinct
    on QueryBuilder<CampaignEvent, CampaignEvent, QDistinct> {
  QueryBuilder<CampaignEvent, CampaignEvent, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QDistinct> distinctByOptionA() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'optionA');
    });
  }

  QueryBuilder<CampaignEvent, CampaignEvent, QDistinct> distinctByOptionB() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'optionB');
    });
  }
}

extension CampaignEventQueryProperty
    on QueryBuilder<CampaignEvent, CampaignEvent, QQueryProperty> {
  QueryBuilder<CampaignEvent, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CampaignEvent, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<CampaignEvent, bool, QQueryOperations> optionAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optionA');
    });
  }

  QueryBuilder<CampaignEvent, bool, QQueryOperations> optionBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'optionB');
    });
  }
}
