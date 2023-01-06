// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:gql/ast.dart' as _i1;

const Sentences = _i1.OperationDefinitionNode(
  type: _i1.OperationType.query,
  name: _i1.NameNode(value: 'Sentences'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: true,
      ),
      defaultValue: _i1.DefaultValueNode(value: null),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'articles'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'where'),
          value: _i1.ObjectValueNode(fields: [
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'id'),
              value: _i1.ObjectValueNode(fields: [
                _i1.ObjectFieldNode(
                  name: _i1.NameNode(value: '_eq'),
                  value: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
                )
              ]),
            )
          ]),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'sentences'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        _i1.FieldNode(
          name: _i1.NameNode(value: 'url'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    )
  ]),
);
const insertArticles = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'insertArticles'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'object')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'articles_insert_input'),
        isNonNull: false,
      ),
      defaultValue:
          _i1.DefaultValueNode(value: _i1.ObjectValueNode(fields: [])),
      directives: [],
    )
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'insert_articles_one'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'object'),
          value: _i1.VariableNode(name: _i1.NameNode(value: 'object')),
        )
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    )
  ]),
);
const updateSentences = _i1.OperationDefinitionNode(
  type: _i1.OperationType.mutation,
  name: _i1.NameNode(value: 'updateSentences'),
  variableDefinitions: [
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'uuid'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(
          value: _i1.StringValueNode(
        value: '',
        isBlock: false,
      )),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'sentences')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'jsonb'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(
          value: _i1.StringValueNode(
        value: '',
        isBlock: false,
      )),
      directives: [],
    ),
    _i1.VariableDefinitionNode(
      variable: _i1.VariableNode(name: _i1.NameNode(value: 'sentences_type')),
      type: _i1.NamedTypeNode(
        name: _i1.NameNode(value: 'String'),
        isNonNull: false,
      ),
      defaultValue: _i1.DefaultValueNode(
          value: _i1.StringValueNode(
        value: '',
        isBlock: false,
      )),
      directives: [],
    ),
  ],
  directives: [],
  selectionSet: _i1.SelectionSetNode(selections: [
    _i1.FieldNode(
      name: _i1.NameNode(value: 'update_articles_by_pk'),
      alias: null,
      arguments: [
        _i1.ArgumentNode(
          name: _i1.NameNode(value: 'pk_columns'),
          value: _i1.ObjectValueNode(fields: [
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'id'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'id')),
            )
          ]),
        ),
        _i1.ArgumentNode(
          name: _i1.NameNode(value: '_set'),
          value: _i1.ObjectValueNode(fields: [
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'sentences'),
              value: _i1.VariableNode(name: _i1.NameNode(value: 'sentences')),
            ),
            _i1.ObjectFieldNode(
              name: _i1.NameNode(value: 'sentences_type'),
              value:
                  _i1.VariableNode(name: _i1.NameNode(value: 'sentences_type')),
            ),
          ]),
        ),
      ],
      directives: [],
      selectionSet: _i1.SelectionSetNode(selections: [
        _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    )
  ]),
);
const document = _i1.DocumentNode(definitions: [
  Sentences,
  insertArticles,
  updateSentences,
]);
