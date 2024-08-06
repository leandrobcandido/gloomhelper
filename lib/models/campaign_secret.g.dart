// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_secret.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCampaignSecretCollection on Isar {
  IsarCollection<CampaignSecret> get campaignSecrets => this.collection();
}

const CampaignSecretSchema = CollectionSchema(
  name: r'CampaignSecret',
  id: -7959256844726710433,
  properties: {
    r'letter': PropertySchema(
      id: 0,
      name: r'letter',
      type: IsarType.string,
    ),
    r'revealed': PropertySchema(
      id: 1,
      name: r'revealed',
      type: IsarType.bool,
    )
  },
  estimateSize: _campaignSecretEstimateSize,
  serialize: _campaignSecretSerialize,
  deserialize: _campaignSecretDeserialize,
  deserializeProp: _campaignSecretDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _campaignSecretGetId,
  getLinks: _campaignSecretGetLinks,
  attach: _campaignSecretAttach,
  version: '3.1.0+1',
);

int _campaignSecretEstimateSize(
  CampaignSecret object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.letter.length * 3;
  return bytesCount;
}

void _campaignSecretSerialize(
  CampaignSecret object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.letter);
  writer.writeBool(offsets[1], object.revealed);
}

CampaignSecret _campaignSecretDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CampaignSecret(
    letter: reader.readString(offsets[0]),
    revealed: reader.readBoolOrNull(offsets[1]) ?? false,
  );
  object.id = id;
  return object;
}

P _campaignSecretDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _campaignSecretGetId(CampaignSecret object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _campaignSecretGetLinks(CampaignSecret object) {
  return [];
}

void _campaignSecretAttach(
    IsarCollection<dynamic> col, Id id, CampaignSecret object) {
  object.id = id;
}

extension CampaignSecretQueryWhereSort
    on QueryBuilder<CampaignSecret, CampaignSecret, QWhere> {
  QueryBuilder<CampaignSecret, CampaignSecret, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CampaignSecretQueryWhere
    on QueryBuilder<CampaignSecret, CampaignSecret, QWhereClause> {
  QueryBuilder<CampaignSecret, CampaignSecret, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterWhereClause> idBetween(
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

extension CampaignSecretQueryFilter
    on QueryBuilder<CampaignSecret, CampaignSecret, QFilterCondition> {
  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
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

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
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

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'letter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'letter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'letter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'letter',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'letter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'letter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'letter',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'letter',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'letter',
        value: '',
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      letterIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'letter',
        value: '',
      ));
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterFilterCondition>
      revealedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'revealed',
        value: value,
      ));
    });
  }
}

extension CampaignSecretQueryObject
    on QueryBuilder<CampaignSecret, CampaignSecret, QFilterCondition> {}

extension CampaignSecretQueryLinks
    on QueryBuilder<CampaignSecret, CampaignSecret, QFilterCondition> {}

extension CampaignSecretQuerySortBy
    on QueryBuilder<CampaignSecret, CampaignSecret, QSortBy> {
  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy> sortByLetter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'letter', Sort.asc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy>
      sortByLetterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'letter', Sort.desc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy> sortByRevealed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revealed', Sort.asc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy>
      sortByRevealedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revealed', Sort.desc);
    });
  }
}

extension CampaignSecretQuerySortThenBy
    on QueryBuilder<CampaignSecret, CampaignSecret, QSortThenBy> {
  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy> thenByLetter() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'letter', Sort.asc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy>
      thenByLetterDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'letter', Sort.desc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy> thenByRevealed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revealed', Sort.asc);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QAfterSortBy>
      thenByRevealedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'revealed', Sort.desc);
    });
  }
}

extension CampaignSecretQueryWhereDistinct
    on QueryBuilder<CampaignSecret, CampaignSecret, QDistinct> {
  QueryBuilder<CampaignSecret, CampaignSecret, QDistinct> distinctByLetter(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'letter', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CampaignSecret, CampaignSecret, QDistinct> distinctByRevealed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'revealed');
    });
  }
}

extension CampaignSecretQueryProperty
    on QueryBuilder<CampaignSecret, CampaignSecret, QQueryProperty> {
  QueryBuilder<CampaignSecret, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CampaignSecret, String, QQueryOperations> letterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'letter');
    });
  }

  QueryBuilder<CampaignSecret, bool, QQueryOperations> revealedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'revealed');
    });
  }
}
