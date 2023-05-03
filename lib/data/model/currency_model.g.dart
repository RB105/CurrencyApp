// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCurrencyModelCollection on Isar {
  IsarCollection<CurrencyModel> get currencyModels => this.collection();
}

const CurrencyModelSchema = CollectionSchema(
  name: r'CurrencyModel',
  id: -6777906318319126171,
  properties: {
    r'cbPrice': PropertySchema(
      id: 0,
      name: r'cbPrice',
      type: IsarType.string,
    ),
    r'code': PropertySchema(
      id: 1,
      name: r'code',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 2,
      name: r'date',
      type: IsarType.string,
    ),
    r'nbuBuyPrice': PropertySchema(
      id: 3,
      name: r'nbuBuyPrice',
      type: IsarType.string,
    ),
    r'nbuCellPrice': PropertySchema(
      id: 4,
      name: r'nbuCellPrice',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 5,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _currencyModelEstimateSize,
  serialize: _currencyModelSerialize,
  deserialize: _currencyModelDeserialize,
  deserializeProp: _currencyModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _currencyModelGetId,
  getLinks: _currencyModelGetLinks,
  attach: _currencyModelAttach,
  version: '3.1.0+1',
);

int _currencyModelEstimateSize(
  CurrencyModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cbPrice;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.code;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.date;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nbuBuyPrice;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nbuCellPrice;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _currencyModelSerialize(
  CurrencyModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cbPrice);
  writer.writeString(offsets[1], object.code);
  writer.writeString(offsets[2], object.date);
  writer.writeString(offsets[3], object.nbuBuyPrice);
  writer.writeString(offsets[4], object.nbuCellPrice);
  writer.writeString(offsets[5], object.title);
}

CurrencyModel _currencyModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CurrencyModel(
    cbPrice: reader.readStringOrNull(offsets[0]),
    code: reader.readStringOrNull(offsets[1]),
    date: reader.readStringOrNull(offsets[2]),
    nbuBuyPrice: reader.readStringOrNull(offsets[3]),
    nbuCellPrice: reader.readStringOrNull(offsets[4]),
    title: reader.readStringOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _currencyModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _currencyModelGetId(CurrencyModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _currencyModelGetLinks(CurrencyModel object) {
  return [];
}

void _currencyModelAttach(
    IsarCollection<dynamic> col, Id id, CurrencyModel object) {
  object.id = id;
}

extension CurrencyModelQueryWhereSort
    on QueryBuilder<CurrencyModel, CurrencyModel, QWhere> {
  QueryBuilder<CurrencyModel, CurrencyModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CurrencyModelQueryWhere
    on QueryBuilder<CurrencyModel, CurrencyModel, QWhereClause> {
  QueryBuilder<CurrencyModel, CurrencyModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterWhereClause> idBetween(
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

extension CurrencyModelQueryFilter
    on QueryBuilder<CurrencyModel, CurrencyModel, QFilterCondition> {
  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cbPrice',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cbPrice',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cbPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cbPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cbPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cbPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cbPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cbPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cbPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cbPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cbPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      cbPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cbPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'code',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> codeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> codeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> dateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> dateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> dateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'date',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      dateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'date',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
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

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nbuBuyPrice',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nbuBuyPrice',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nbuBuyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nbuBuyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nbuBuyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nbuBuyPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nbuBuyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nbuBuyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nbuBuyPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nbuBuyPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nbuBuyPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuBuyPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nbuBuyPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nbuCellPrice',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nbuCellPrice',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nbuCellPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nbuCellPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nbuCellPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nbuCellPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nbuCellPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nbuCellPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nbuCellPrice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nbuCellPrice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nbuCellPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      nbuCellPriceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nbuCellPrice',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension CurrencyModelQueryObject
    on QueryBuilder<CurrencyModel, CurrencyModel, QFilterCondition> {}

extension CurrencyModelQueryLinks
    on QueryBuilder<CurrencyModel, CurrencyModel, QFilterCondition> {}

extension CurrencyModelQuerySortBy
    on QueryBuilder<CurrencyModel, CurrencyModel, QSortBy> {
  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByCbPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cbPrice', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByCbPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cbPrice', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByNbuBuyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuBuyPrice', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy>
      sortByNbuBuyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuBuyPrice', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy>
      sortByNbuCellPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuCellPrice', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy>
      sortByNbuCellPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuCellPrice', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension CurrencyModelQuerySortThenBy
    on QueryBuilder<CurrencyModel, CurrencyModel, QSortThenBy> {
  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByCbPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cbPrice', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByCbPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cbPrice', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByNbuBuyPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuBuyPrice', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy>
      thenByNbuBuyPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuBuyPrice', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy>
      thenByNbuCellPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuCellPrice', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy>
      thenByNbuCellPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nbuCellPrice', Sort.desc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension CurrencyModelQueryWhereDistinct
    on QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> {
  QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> distinctByCbPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cbPrice', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> distinctByDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> distinctByNbuBuyPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nbuBuyPrice', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> distinctByNbuCellPrice(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nbuCellPrice', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrencyModel, CurrencyModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension CurrencyModelQueryProperty
    on QueryBuilder<CurrencyModel, CurrencyModel, QQueryProperty> {
  QueryBuilder<CurrencyModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CurrencyModel, String?, QQueryOperations> cbPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cbPrice');
    });
  }

  QueryBuilder<CurrencyModel, String?, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<CurrencyModel, String?, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<CurrencyModel, String?, QQueryOperations> nbuBuyPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nbuBuyPrice');
    });
  }

  QueryBuilder<CurrencyModel, String?, QQueryOperations>
      nbuCellPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nbuCellPrice');
    });
  }

  QueryBuilder<CurrencyModel, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
