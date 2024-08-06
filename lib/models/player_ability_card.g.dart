// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_ability_card.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlayerAbilityCardCollection on Isar {
  IsarCollection<PlayerAbilityCard> get playerAbilityCards => this.collection();
}

const PlayerAbilityCardSchema = CollectionSchema(
  name: r'PlayerAbilityCard',
  id: -7795384129835173024,
  properties: {
    r'available': PropertySchema(
      id: 0,
      name: r'available',
      type: IsarType.bool,
    ),
    r'number': PropertySchema(
      id: 1,
      name: r'number',
      type: IsarType.long,
    )
  },
  estimateSize: _playerAbilityCardEstimateSize,
  serialize: _playerAbilityCardSerialize,
  deserialize: _playerAbilityCardDeserialize,
  deserializeProp: _playerAbilityCardDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _playerAbilityCardGetId,
  getLinks: _playerAbilityCardGetLinks,
  attach: _playerAbilityCardAttach,
  version: '3.1.0+1',
);

int _playerAbilityCardEstimateSize(
  PlayerAbilityCard object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _playerAbilityCardSerialize(
  PlayerAbilityCard object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.available);
  writer.writeLong(offsets[1], object.number);
}

PlayerAbilityCard _playerAbilityCardDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlayerAbilityCard(
    available: reader.readBoolOrNull(offsets[0]) ?? false,
    number: reader.readLong(offsets[1]),
  );
  object.id = id;
  return object;
}

P _playerAbilityCardDeserializeProp<P>(
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

Id _playerAbilityCardGetId(PlayerAbilityCard object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _playerAbilityCardGetLinks(
    PlayerAbilityCard object) {
  return [];
}

void _playerAbilityCardAttach(
    IsarCollection<dynamic> col, Id id, PlayerAbilityCard object) {
  object.id = id;
}

extension PlayerAbilityCardQueryWhereSort
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QWhere> {
  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlayerAbilityCardQueryWhere
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QWhereClause> {
  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterWhereClause>
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

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterWhereClause>
      idBetween(
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

extension PlayerAbilityCardQueryFilter
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QFilterCondition> {
  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
      availableEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'available',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
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

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
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

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
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

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
      numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
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

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
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

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterFilterCondition>
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

extension PlayerAbilityCardQueryObject
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QFilterCondition> {}

extension PlayerAbilityCardQueryLinks
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QFilterCondition> {}

extension PlayerAbilityCardQuerySortBy
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QSortBy> {
  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      sortByAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.asc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      sortByAvailableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.desc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }
}

extension PlayerAbilityCardQuerySortThenBy
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QSortThenBy> {
  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      thenByAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.asc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      thenByAvailableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.desc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QAfterSortBy>
      thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }
}

extension PlayerAbilityCardQueryWhereDistinct
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QDistinct> {
  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QDistinct>
      distinctByAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'available');
    });
  }

  QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QDistinct>
      distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }
}

extension PlayerAbilityCardQueryProperty
    on QueryBuilder<PlayerAbilityCard, PlayerAbilityCard, QQueryProperty> {
  QueryBuilder<PlayerAbilityCard, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlayerAbilityCard, bool, QQueryOperations> availableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'available');
    });
  }

  QueryBuilder<PlayerAbilityCard, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }
}
