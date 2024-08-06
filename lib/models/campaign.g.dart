// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCampaignCollection on Isar {
  IsarCollection<Campaign> get campaigns => this.collection();
}

const CampaignSchema = CollectionSchema(
  name: r'Campaign',
  id: -5923954018370353381,
  properties: {
    r'lastDate': PropertySchema(
      id: 0,
      name: r'lastDate',
      type: IsarType.dateTime,
    ),
    r'startDate': PropertySchema(
      id: 1,
      name: r'startDate',
      type: IsarType.dateTime,
    ),
    r'teamName': PropertySchema(
      id: 2,
      name: r'teamName',
      type: IsarType.string,
    )
  },
  estimateSize: _campaignEstimateSize,
  serialize: _campaignSerialize,
  deserialize: _campaignDeserialize,
  deserializeProp: _campaignDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'playerList': LinkSchema(
      id: 1796158835605805901,
      name: r'playerList',
      target: r'Player',
      single: false,
    ),
    r'campaignScenarioList': LinkSchema(
      id: 4258276753151483025,
      name: r'campaignScenarioList',
      target: r'CampaignScenario',
      single: false,
    ),
    r'campaignEventList': LinkSchema(
      id: -4919997461377787212,
      name: r'campaignEventList',
      target: r'CampaignEvent',
      single: false,
    ),
    r'campaignTreasureList': LinkSchema(
      id: -5070839450403486984,
      name: r'campaignTreasureList',
      target: r'CampaignTreasure',
      single: false,
    ),
    r'campaignSecretList': LinkSchema(
      id: 2131018583830707266,
      name: r'campaignSecretList',
      target: r'CampaignSecret',
      single: false,
    ),
    r'campaignItemList': LinkSchema(
      id: -6363558546642801249,
      name: r'campaignItemList',
      target: r'CampaignItem',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _campaignGetId,
  getLinks: _campaignGetLinks,
  attach: _campaignAttach,
  version: '3.1.0+1',
);

int _campaignEstimateSize(
  Campaign object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.teamName.length * 3;
  return bytesCount;
}

void _campaignSerialize(
  Campaign object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.lastDate);
  writer.writeDateTime(offsets[1], object.startDate);
  writer.writeString(offsets[2], object.teamName);
}

Campaign _campaignDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Campaign();
  object.id = id;
  object.lastDate = reader.readDateTime(offsets[0]);
  object.startDate = reader.readDateTime(offsets[1]);
  object.teamName = reader.readString(offsets[2]);
  return object;
}

P _campaignDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _campaignGetId(Campaign object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _campaignGetLinks(Campaign object) {
  return [
    object.playerList,
    object.campaignScenarioList,
    object.campaignEventList,
    object.campaignTreasureList,
    object.campaignSecretList,
    object.campaignItemList
  ];
}

void _campaignAttach(IsarCollection<dynamic> col, Id id, Campaign object) {
  object.id = id;
  object.playerList
      .attach(col, col.isar.collection<Player>(), r'playerList', id);
  object.campaignScenarioList.attach(col,
      col.isar.collection<CampaignScenario>(), r'campaignScenarioList', id);
  object.campaignEventList.attach(
      col, col.isar.collection<CampaignEvent>(), r'campaignEventList', id);
  object.campaignTreasureList.attach(col,
      col.isar.collection<CampaignTreasure>(), r'campaignTreasureList', id);
  object.campaignSecretList.attach(
      col, col.isar.collection<CampaignSecret>(), r'campaignSecretList', id);
  object.campaignItemList.attach(
      col, col.isar.collection<CampaignItem>(), r'campaignItemList', id);
}

extension CampaignQueryWhereSort on QueryBuilder<Campaign, Campaign, QWhere> {
  QueryBuilder<Campaign, Campaign, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CampaignQueryWhere on QueryBuilder<Campaign, Campaign, QWhereClause> {
  QueryBuilder<Campaign, Campaign, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Campaign, Campaign, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterWhereClause> idBetween(
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

extension CampaignQueryFilter
    on QueryBuilder<Campaign, Campaign, QFilterCondition> {
  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> lastDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> lastDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> lastDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> lastDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> startDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> startDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> startDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> startDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teamName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teamName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teamName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamName',
        value: '',
      ));
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> teamNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teamName',
        value: '',
      ));
    });
  }
}

extension CampaignQueryObject
    on QueryBuilder<Campaign, Campaign, QFilterCondition> {}

extension CampaignQueryLinks
    on QueryBuilder<Campaign, Campaign, QFilterCondition> {
  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> playerList(
      FilterQuery<Player> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'playerList');
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      playerListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playerList', length, true, length, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> playerListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playerList', 0, true, 0, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      playerListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playerList', 0, false, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      playerListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playerList', 0, true, length, include);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      playerListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'playerList', length, include, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      playerListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'playerList', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> campaignScenarioList(
      FilterQuery<CampaignScenario> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'campaignScenarioList');
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignScenarioListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignScenarioList', length, true, length, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignScenarioListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignScenarioList', 0, true, 0, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignScenarioListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignScenarioList', 0, false, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignScenarioListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignScenarioList', 0, true, length, include);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignScenarioListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignScenarioList', length, include, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignScenarioListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignScenarioList', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> campaignEventList(
      FilterQuery<CampaignEvent> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'campaignEventList');
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignEventListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignEventList', length, true, length, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignEventListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignEventList', 0, true, 0, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignEventListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignEventList', 0, false, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignEventListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignEventList', 0, true, length, include);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignEventListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignEventList', length, include, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignEventListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignEventList', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> campaignTreasureList(
      FilterQuery<CampaignTreasure> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'campaignTreasureList');
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignTreasureListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignTreasureList', length, true, length, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignTreasureListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignTreasureList', 0, true, 0, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignTreasureListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignTreasureList', 0, false, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignTreasureListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignTreasureList', 0, true, length, include);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignTreasureListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignTreasureList', length, include, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignTreasureListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignTreasureList', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> campaignSecretList(
      FilterQuery<CampaignSecret> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'campaignSecretList');
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignSecretListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignSecretList', length, true, length, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignSecretListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignSecretList', 0, true, 0, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignSecretListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignSecretList', 0, false, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignSecretListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignSecretList', 0, true, length, include);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignSecretListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignSecretList', length, include, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignSecretListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignSecretList', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition> campaignItemList(
      FilterQuery<CampaignItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'campaignItemList');
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignItemListLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignItemList', length, true, length, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignItemListIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignItemList', 0, true, 0, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignItemListIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignItemList', 0, false, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignItemListLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'campaignItemList', 0, true, length, include);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignItemListLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignItemList', length, include, 999999, true);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterFilterCondition>
      campaignItemListLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'campaignItemList', lower, includeLower, upper, includeUpper);
    });
  }
}

extension CampaignQuerySortBy on QueryBuilder<Campaign, Campaign, QSortBy> {
  QueryBuilder<Campaign, Campaign, QAfterSortBy> sortByLastDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDate', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> sortByLastDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDate', Sort.desc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> sortByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> sortByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> sortByTeamName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> sortByTeamNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.desc);
    });
  }
}

extension CampaignQuerySortThenBy
    on QueryBuilder<Campaign, Campaign, QSortThenBy> {
  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByLastDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDate', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByLastDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDate', Sort.desc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByStartDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startDate', Sort.desc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByTeamName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.asc);
    });
  }

  QueryBuilder<Campaign, Campaign, QAfterSortBy> thenByTeamNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamName', Sort.desc);
    });
  }
}

extension CampaignQueryWhereDistinct
    on QueryBuilder<Campaign, Campaign, QDistinct> {
  QueryBuilder<Campaign, Campaign, QDistinct> distinctByLastDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDate');
    });
  }

  QueryBuilder<Campaign, Campaign, QDistinct> distinctByStartDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startDate');
    });
  }

  QueryBuilder<Campaign, Campaign, QDistinct> distinctByTeamName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamName', caseSensitive: caseSensitive);
    });
  }
}

extension CampaignQueryProperty
    on QueryBuilder<Campaign, Campaign, QQueryProperty> {
  QueryBuilder<Campaign, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Campaign, DateTime, QQueryOperations> lastDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDate');
    });
  }

  QueryBuilder<Campaign, DateTime, QQueryOperations> startDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startDate');
    });
  }

  QueryBuilder<Campaign, String, QQueryOperations> teamNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamName');
    });
  }
}
