// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_perk.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlayerPerkCollection on Isar {
  IsarCollection<PlayerPerk> get playerPerks => this.collection();
}

const PlayerPerkSchema = CollectionSchema(
  name: r'PlayerPerk',
  id: -842395185575295381,
  properties: {
    r'number': PropertySchema(
      id: 0,
      name: r'number',
      type: IsarType.long,
    ),
    r'unlocked': PropertySchema(
      id: 1,
      name: r'unlocked',
      type: IsarType.bool,
    )
  },
  estimateSize: _playerPerkEstimateSize,
  serialize: _playerPerkSerialize,
  deserialize: _playerPerkDeserialize,
  deserializeProp: _playerPerkDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _playerPerkGetId,
  getLinks: _playerPerkGetLinks,
  attach: _playerPerkAttach,
  version: '3.1.0+1',
);

int _playerPerkEstimateSize(
  PlayerPerk object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _playerPerkSerialize(
  PlayerPerk object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.number);
  writer.writeBool(offsets[1], object.unlocked);
}

PlayerPerk _playerPerkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerPerk(
    number: reader.readLong(offsets[0]),
    unlocked: reader.readBoolOrNull(offsets[1]) ?? false,
  );
  object.id = id;
  return object;
}

P _playerPerkDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _playerPerkGetId(PlayerPerk object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playerPerkGetLinks(PlayerPerk object) {
  return [];
}

void _playerPerkAttach(IsarCollection<dynamic> col, Id id, PlayerPerk object) {
  object.id = id;
}

extension PlayerPerkQueryWhereSort
    on QueryBuilder<PlayerPerk, PlayerPerk, QWhere> {
  QueryBuilder<PlayerPerk, PlayerPerk, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlayerPerkQueryWhere
    on QueryBuilder<PlayerPerk, PlayerPerk, QWhereClause> {
  QueryBuilder<PlayerPerk, PlayerPerk, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterWhereClause> idBetween(
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

extension PlayerPerkQueryFilter
    on QueryBuilder<PlayerPerk, PlayerPerk, QFilterCondition> {
  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> numberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> numberGreaterThan(
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> numberLessThan(
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> numberBetween(
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

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterFilterCondition> unlockedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unlocked',
        value: value,
      ));
    });
  }
}

extension PlayerPerkQueryObject
    on QueryBuilder<PlayerPerk, PlayerPerk, QFilterCondition> {}

extension PlayerPerkQueryLinks
    on QueryBuilder<PlayerPerk, PlayerPerk, QFilterCondition> {}

extension PlayerPerkQuerySortBy
    on QueryBuilder<PlayerPerk, PlayerPerk, QSortBy> {
  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> sortByUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlocked', Sort.asc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> sortByUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlocked', Sort.desc);
    });
  }
}

extension PlayerPerkQuerySortThenBy
    on QueryBuilder<PlayerPerk, PlayerPerk, QSortThenBy> {
  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> thenByUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlocked', Sort.asc);
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QAfterSortBy> thenByUnlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unlocked', Sort.desc);
    });
  }
}

extension PlayerPerkQueryWhereDistinct
    on QueryBuilder<PlayerPerk, PlayerPerk, QDistinct> {
  QueryBuilder<PlayerPerk, PlayerPerk, QDistinct> distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<PlayerPerk, PlayerPerk, QDistinct> distinctByUnlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unlocked');
    });
  }
}

extension PlayerPerkQueryProperty
    on QueryBuilder<PlayerPerk, PlayerPerk, QQueryProperty> {
  QueryBuilder<PlayerPerk, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlayerPerk, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<PlayerPerk, bool, QQueryOperations> unlockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unlocked');
    });
  }
}
