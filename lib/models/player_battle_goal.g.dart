// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_battle_goal.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlayerBattleGoalCollection on Isar {
  IsarCollection<PlayerBattleGoal> get playerBattleGoals => this.collection();
}

const PlayerBattleGoalSchema = CollectionSchema(
  name: r'PlayerBattleGoal',
  id: 5919160133745459575,
  properties: {
    r'checkMark1': PropertySchema(
      id: 0,
      name: r'checkMark1',
      type: IsarType.bool,
    ),
    r'checkMark2': PropertySchema(
      id: 1,
      name: r'checkMark2',
      type: IsarType.bool,
    ),
    r'checkMark3': PropertySchema(
      id: 2,
      name: r'checkMark3',
      type: IsarType.bool,
    )
  },
  estimateSize: _playerBattleGoalEstimateSize,
  serialize: _playerBattleGoalSerialize,
  deserialize: _playerBattleGoalDeserialize,
  deserializeProp: _playerBattleGoalDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _playerBattleGoalGetId,
  getLinks: _playerBattleGoalGetLinks,
  attach: _playerBattleGoalAttach,
  version: '3.1.0+1',
);

int _playerBattleGoalEstimateSize(
  PlayerBattleGoal object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _playerBattleGoalSerialize(
  PlayerBattleGoal object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.checkMark1);
  writer.writeBool(offsets[1], object.checkMark2);
  writer.writeBool(offsets[2], object.checkMark3);
}

PlayerBattleGoal _playerBattleGoalDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerBattleGoal(
    checkMark1: reader.readBoolOrNull(offsets[0]) ?? false,
    checkMark2: reader.readBoolOrNull(offsets[1]) ?? false,
    checkMark3: reader.readBoolOrNull(offsets[2]) ?? false,
  );
  object.id = id;
  return object;
}

P _playerBattleGoalDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _playerBattleGoalGetId(PlayerBattleGoal object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playerBattleGoalGetLinks(PlayerBattleGoal object) {
  return [];
}

void _playerBattleGoalAttach(
    IsarCollection<dynamic> col, Id id, PlayerBattleGoal object) {
  object.id = id;
}

extension PlayerBattleGoalQueryWhereSort
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QWhere> {
  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlayerBattleGoalQueryWhere
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QWhereClause> {
  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterWhereClause>
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

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterWhereClause> idBetween(
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

extension PlayerBattleGoalQueryFilter
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QFilterCondition> {
  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
      checkMark1EqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkMark1',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
      checkMark2EqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkMark2',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
      checkMark3EqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checkMark3',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
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

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
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

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterFilterCondition>
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
}

extension PlayerBattleGoalQueryObject
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QFilterCondition> {}

extension PlayerBattleGoalQueryLinks
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QFilterCondition> {}

extension PlayerBattleGoalQuerySortBy
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QSortBy> {
  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      sortByCheckMark1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark1', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      sortByCheckMark1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark1', Sort.desc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      sortByCheckMark2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark2', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      sortByCheckMark2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark2', Sort.desc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      sortByCheckMark3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark3', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      sortByCheckMark3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark3', Sort.desc);
    });
  }
}

extension PlayerBattleGoalQuerySortThenBy
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QSortThenBy> {
  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByCheckMark1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark1', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByCheckMark1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark1', Sort.desc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByCheckMark2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark2', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByCheckMark2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark2', Sort.desc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByCheckMark3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark3', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByCheckMark3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checkMark3', Sort.desc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension PlayerBattleGoalQueryWhereDistinct
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QDistinct> {
  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QDistinct>
      distinctByCheckMark1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkMark1');
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QDistinct>
      distinctByCheckMark2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkMark2');
    });
  }

  QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QDistinct>
      distinctByCheckMark3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checkMark3');
    });
  }
}

extension PlayerBattleGoalQueryProperty
    on QueryBuilder<PlayerBattleGoal, PlayerBattleGoal, QQueryProperty> {
  QueryBuilder<PlayerBattleGoal, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlayerBattleGoal, bool, QQueryOperations> checkMark1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkMark1');
    });
  }

  QueryBuilder<PlayerBattleGoal, bool, QQueryOperations> checkMark2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkMark2');
    });
  }

  QueryBuilder<PlayerBattleGoal, bool, QQueryOperations> checkMark3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checkMark3');
    });
  }
}
