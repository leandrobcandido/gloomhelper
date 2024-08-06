// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_treasure.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCampaignTreasureCollection on Isar {
  IsarCollection<CampaignTreasure> get campaignTreasures => this.collection();
}

const CampaignTreasureSchema = CollectionSchema(
  name: r'CampaignTreasure',
  id: -6305280637813975481,
  properties: {
    r'collected': PropertySchema(
      id: 0,
      name: r'collected',
      type: IsarType.bool,
    ),
    r'number': PropertySchema(
      id: 1,
      name: r'number',
      type: IsarType.long,
    )
  },
  estimateSize: _campaignTreasureEstimateSize,
  serialize: _campaignTreasureSerialize,
  deserialize: _campaignTreasureDeserialize,
  deserializeProp: _campaignTreasureDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _campaignTreasureGetId,
  getLinks: _campaignTreasureGetLinks,
  attach: _campaignTreasureAttach,
  version: '3.1.0+1',
);

int _campaignTreasureEstimateSize(
  CampaignTreasure object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _campaignTreasureSerialize(
  CampaignTreasure object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.collected);
  writer.writeLong(offsets[1], object.number);
}

CampaignTreasure _campaignTreasureDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CampaignTreasure(
    collected: reader.readBoolOrNull(offsets[0]) ?? false,
    number: reader.readLong(offsets[1]),
  );
  object.id = id;
  return object;
}

P _campaignTreasureDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _campaignTreasureGetId(CampaignTreasure object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _campaignTreasureGetLinks(CampaignTreasure object) {
  return [];
}

void _campaignTreasureAttach(
    IsarCollection<dynamic> col, Id id, CampaignTreasure object) {
  object.id = id;
}

extension CampaignTreasureQueryWhereSort
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QWhere> {
  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CampaignTreasureQueryWhere
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QWhereClause> {
  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterWhereClause> idBetween(
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

extension CampaignTreasureQueryFilter
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QFilterCondition> {
  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
      collectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collected',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
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

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
      numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
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

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
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

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterFilterCondition>
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
}

extension CampaignTreasureQueryObject
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QFilterCondition> {}

extension CampaignTreasureQueryLinks
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QFilterCondition> {}

extension CampaignTreasureQuerySortBy
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QSortBy> {
  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      sortByCollected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collected', Sort.asc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      sortByCollectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collected', Sort.desc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }
}

extension CampaignTreasureQuerySortThenBy
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QSortThenBy> {
  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      thenByCollected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collected', Sort.asc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      thenByCollectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collected', Sort.desc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QAfterSortBy>
      thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }
}

extension CampaignTreasureQueryWhereDistinct
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QDistinct> {
  QueryBuilder<CampaignTreasure, CampaignTreasure, QDistinct>
      distinctByCollected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collected');
    });
  }

  QueryBuilder<CampaignTreasure, CampaignTreasure, QDistinct>
      distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }
}

extension CampaignTreasureQueryProperty
    on QueryBuilder<CampaignTreasure, CampaignTreasure, QQueryProperty> {
  QueryBuilder<CampaignTreasure, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CampaignTreasure, bool, QQueryOperations> collectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collected');
    });
  }

  QueryBuilder<CampaignTreasure, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }
}
