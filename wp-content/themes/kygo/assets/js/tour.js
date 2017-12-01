"use strict";

var _createClass2 = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _typeof2 = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

function _classCallCheck2(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

(function e(t, n, r) {
  function s(o, u) {
    if (!n[o]) {
      if (!t[o]) {
        var a = typeof require == "function" && require;if (!u && a) return a(o, !0);if (i) return i(o, !0);throw new Error("Cannot find module '" + o + "'");
      }var f = n[o] = { exports: {} };t[o][0].call(f.exports, function (e) {
        var n = t[o][1][e];return s(n ? n : e);
      }, f, f.exports, e, t, n, r);
    }return n[o].exports;
  }var i = typeof require == "function" && require;for (var o = 0; o < r.length; o++) {
    s(r[o]);
  }return s;
})({ 1: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Indexes for all substring searches (e.g. the term "cat" is indexed as "c", "ca", "cat", "a", "at", and "t").
     */
    var AllSubstringsIndexStrategy = exports.AllSubstringsIndexStrategy = function () {
      function AllSubstringsIndexStrategy() {
        _classCallCheck(this, AllSubstringsIndexStrategy);
      }

      _createClass(AllSubstringsIndexStrategy, [{
        key: 'expandToken',

        /**
         * @inheritDocs
         */
        value: function expandToken(token) {
          var expandedTokens = [];
          var string;

          for (var i = 0, length = token.length; i < length; ++i) {
            string = '';

            for (var j = i; j < length; ++j) {
              string += token.charAt(j);
              expandedTokens.push(string);
            }
          }

          return expandedTokens;
        }
      }]);

      return AllSubstringsIndexStrategy;
    }();

    ;
    //# sourceMappingURL=AllSubstringsIndexStrategy.js.map
  }, {}], 2: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Indexes for exact word matches.
     */
    var ExactWordIndexStrategy = exports.ExactWordIndexStrategy = function () {
      function ExactWordIndexStrategy() {
        _classCallCheck(this, ExactWordIndexStrategy);
      }

      _createClass(ExactWordIndexStrategy, [{
        key: 'expandToken',

        /**
         * @inheritDocs
         */
        value: function expandToken(token) {
          return token ? [token] : [];
        }
      }]);

      return ExactWordIndexStrategy;
    }();

    ;
    //# sourceMappingURL=ExactWordIndexStrategy.js.map
  }, {}], 3: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Indexes for prefix searches (e.g. the term "cat" is indexed as "c", "ca", and "cat" allowing prefix search lookups).
     */
    var PrefixIndexStrategy = exports.PrefixIndexStrategy = function () {
      function PrefixIndexStrategy() {
        _classCallCheck(this, PrefixIndexStrategy);
      }

      _createClass(PrefixIndexStrategy, [{
        key: 'expandToken',

        /**
         * @inheritDocs
         */
        value: function expandToken(token) {
          var expandedTokens = [];
          var string = '';

          for (var i = 0, length = token.length; i < length; ++i) {
            string += token.charAt(i);
            expandedTokens.push(string);
          }

          return expandedTokens;
        }
      }]);

      return PrefixIndexStrategy;
    }();

    ;
    //# sourceMappingURL=PrefixIndexStrategy.js.map
  }, {}], 4: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _AllSubstringsIndexStrategy = require('./AllSubstringsIndexStrategy');

    Object.defineProperty(exports, 'AllSubstringsIndexStrategy', {
      enumerable: true,
      get: function get() {
        return _AllSubstringsIndexStrategy.AllSubstringsIndexStrategy;
      }
    });

    var _ExactWordIndexStrategy = require('./ExactWordIndexStrategy');

    Object.defineProperty(exports, 'ExactWordIndexStrategy', {
      enumerable: true,
      get: function get() {
        return _ExactWordIndexStrategy.ExactWordIndexStrategy;
      }
    });

    var _PrefixIndexStrategy = require('./PrefixIndexStrategy');

    Object.defineProperty(exports, 'PrefixIndexStrategy', {
      enumerable: true,
      get: function get() {
        return _PrefixIndexStrategy.PrefixIndexStrategy;
      }
    });
    //# sourceMappingURL=index.js.map
  }, { "./AllSubstringsIndexStrategy": 1, "./ExactWordIndexStrategy": 2, "./PrefixIndexStrategy": 3 }], 5: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Enforces case-sensitive text matches.
     */
    var CaseSensitiveSanitizer = exports.CaseSensitiveSanitizer = function () {
      function CaseSensitiveSanitizer() {
        _classCallCheck(this, CaseSensitiveSanitizer);
      }

      _createClass(CaseSensitiveSanitizer, [{
        key: 'sanitize',

        /**
         * @inheritDocs
         */
        value: function sanitize(text) {
          return text ? text.trim() : '';
        }
      }]);

      return CaseSensitiveSanitizer;
    }();

    ;
    //# sourceMappingURL=CaseSensitiveSanitizer.js.map
  }, {}], 6: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Sanitizes text by converting to a locale-friendly lower-case version and triming leading and trailing whitespace.
     */
    var LowerCaseSanitizer = exports.LowerCaseSanitizer = function () {
      function LowerCaseSanitizer() {
        _classCallCheck(this, LowerCaseSanitizer);
      }

      _createClass(LowerCaseSanitizer, [{
        key: 'sanitize',

        /**
         * @inheritDocs
         */
        value: function sanitize(text) {
          return text ? text.toLocaleLowerCase().trim() : '';
        }
      }]);

      return LowerCaseSanitizer;
    }();

    ;
    //# sourceMappingURL=LowerCaseSanitizer.js.map
  }, {}], 7: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _CaseSensitiveSanitizer = require('./CaseSensitiveSanitizer');

    Object.defineProperty(exports, 'CaseSensitiveSanitizer', {
      enumerable: true,
      get: function get() {
        return _CaseSensitiveSanitizer.CaseSensitiveSanitizer;
      }
    });

    var _LowerCaseSanitizer = require('./LowerCaseSanitizer');

    Object.defineProperty(exports, 'LowerCaseSanitizer', {
      enumerable: true,
      get: function get() {
        return _LowerCaseSanitizer.LowerCaseSanitizer;
      }
    });
    //# sourceMappingURL=index.js.map
  }, { "./CaseSensitiveSanitizer": 5, "./LowerCaseSanitizer": 6 }], 8: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    exports.Search = undefined;

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    var _getNestedFieldValue = require('./getNestedFieldValue');

    var _getNestedFieldValue2 = _interopRequireDefault(_getNestedFieldValue);

    var _index = require('./IndexStrategy/index');

    var _index2 = require('./Sanitizer/index');

    var _index3 = require('./SearchIndex/index');

    var _index4 = require('./Tokenizer/index');

    function _interopRequireDefault(obj) {
      return obj && obj.__esModule ? obj : { default: obj };
    }

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Simple client-side searching within a set of documents.
     *
     * <p>Documents can be searched by any number of fields. Indexing and search strategies are highly customizable.
     */
    var Search = exports.Search = function () {

      /**
       * Constructor.
       * @param uidFieldName Field containing values that uniquely identify search documents; this field's values are used
       *                     to ensure that a search result set does not contain duplicate objects.
       */

      /**
       * Array containing either a property name or a path (list of property names) to a nested value
       */
      function Search(uidFieldName) {
        _classCallCheck(this, Search);

        if (!uidFieldName) {
          throw Error('js-search requires a uid field name constructor parameter');
        }

        this._uidFieldName = uidFieldName;

        // Set default/recommended strategies
        this._indexStrategy = new _index.PrefixIndexStrategy();
        this._searchIndex = new _index3.TfIdfSearchIndex(uidFieldName);
        this._sanitizer = new _index2.LowerCaseSanitizer();
        this._tokenizer = new _index4.SimpleTokenizer();

        this._documents = [];
        this._searchableFields = [];
      }

      /**
       * Override the default index strategy.
       * @param value Custom index strategy
       * @throws Error if documents have already been indexed by this search instance
       */

      _createClass(Search, [{
        key: 'addDocument',

        /**
         * Add a searchable document to the index. Document will automatically be indexed for search.
         * @param document
         */
        value: function addDocument(document) {
          this.addDocuments([document]);
        }

        /**
         * Adds searchable documents to the index. Documents will automatically be indexed for search.
         * @param document
         */

      }, {
        key: 'addDocuments',
        value: function addDocuments(documents) {
          this._documents = this._documents.concat(documents);
          this.indexDocuments_(documents, this._searchableFields);
        }

        /**
         * Add a new searchable field to the index. Existing documents will automatically be indexed using this new field.
         *
         * @param field Searchable field or field path. Pass a string to index a top-level field and an array of strings for nested fields.
         */

      }, {
        key: 'addIndex',
        value: function addIndex(field) {
          this._searchableFields.push(field);
          this.indexDocuments_(this._documents, [field]);
        }

        /**
         * Search all documents for ones matching the specified query text.
         * @param query
         * @returns {Array<Object>}
         */

      }, {
        key: 'search',
        value: function search(query) {
          var tokens = this._tokenizer.tokenize(this._sanitizer.sanitize(query));

          return this._searchIndex.search(tokens, this._documents);
        }

        /**
         * @param documents
         * @param _searchableFields Array containing property names and paths (lists of property names) to nested values
         * @private
         */

      }, {
        key: 'indexDocuments_',
        value: function indexDocuments_(documents, _searchableFields) {
          this._initialized = true;

          var indexStrategy = this._indexStrategy;
          var sanitizer = this._sanitizer;
          var searchIndex = this._searchIndex;
          var tokenizer = this._tokenizer;
          var uidFieldName = this._uidFieldName;

          for (var di = 0, numDocuments = documents.length; di < numDocuments; di++) {
            var doc = documents[di];
            var uid;

            if (uidFieldName instanceof Array) {
              uid = (0, _getNestedFieldValue2.default)(doc, uidFieldName);
            } else {
              uid = doc[uidFieldName];
            }

            for (var sfi = 0, numSearchableFields = _searchableFields.length; sfi < numSearchableFields; sfi++) {
              var fieldValue;
              var searchableField = _searchableFields[sfi];

              if (searchableField instanceof Array) {
                fieldValue = (0, _getNestedFieldValue2.default)(doc, searchableField);
              } else {
                fieldValue = doc[searchableField];
              }

              if (fieldValue != null && typeof fieldValue !== 'string' && fieldValue.toString) {
                fieldValue = fieldValue.toString();
              }

              if (typeof fieldValue === 'string') {
                var fieldTokens = tokenizer.tokenize(sanitizer.sanitize(fieldValue));

                for (var fti = 0, numFieldValues = fieldTokens.length; fti < numFieldValues; fti++) {
                  var fieldToken = fieldTokens[fti];
                  var expandedTokens = indexStrategy.expandToken(fieldToken);

                  for (var eti = 0, nummExpandedTokens = expandedTokens.length; eti < nummExpandedTokens; eti++) {
                    var expandedToken = expandedTokens[eti];

                    searchIndex.indexDocument(expandedToken, uid, doc);
                  }
                }
              }
            }
          }
        }
      }, {
        key: 'indexStrategy',
        set: function set(value) {
          if (this._initialized) {
            throw Error('IIndexStrategy cannot be set after initialization');
          }

          this._indexStrategy = value;
        },
        get: function get() {
          return this._indexStrategy;
        }

        /**
         * Override the default text sanitizing strategy.
         * @param value Custom text sanitizing strategy
         * @throws Error if documents have already been indexed by this search instance
         */

      }, {
        key: 'sanitizer',
        set: function set(value) {
          if (this._initialized) {
            throw Error('ISanitizer cannot be set after initialization');
          }

          this._sanitizer = value;
        },
        get: function get() {
          return this._sanitizer;
        }

        /**
         * Override the default search index strategy.
         * @param value Custom search index strategy
         * @throws Error if documents have already been indexed
         */

      }, {
        key: 'searchIndex',
        set: function set(value) {
          if (this._initialized) {
            throw Error('ISearchIndex cannot be set after initialization');
          }

          this._searchIndex = value;
        },
        get: function get() {
          return this._searchIndex;
        }

        /**
         * Override the default text tokenizing strategy.
         * @param value Custom text tokenizing strategy
         * @throws Error if documents have already been indexed by this search instance
         */

      }, {
        key: 'tokenizer',
        set: function set(value) {
          if (this._initialized) {
            throw Error('ITokenizer cannot be set after initialization');
          }

          this._tokenizer = value;
        },
        get: function get() {
          return this._tokenizer;
        }
      }]);

      return Search;
    }();
    //# sourceMappingURL=Search.js.map
  }, { "./IndexStrategy/index": 4, "./Sanitizer/index": 7, "./SearchIndex/index": 11, "./Tokenizer/index": 17, "./getNestedFieldValue": 18 }], 9: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    exports.TfIdfSearchIndex = undefined;

    var _typeof = typeof Symbol === "function" && _typeof2(Symbol.iterator) === "symbol" ? function (obj) {
      return typeof obj === "undefined" ? "undefined" : _typeof2(obj);
    } : function (obj) {
      return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj === "undefined" ? "undefined" : _typeof2(obj);
    };

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    var _getNestedFieldValue = require('../getNestedFieldValue');

    var _getNestedFieldValue2 = _interopRequireDefault(_getNestedFieldValue);

    function _interopRequireDefault(obj) {
      return obj && obj.__esModule ? obj : { default: obj };
    }

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Search index capable of returning results matching a set of tokens and ranked according to TF-IDF.
     */
    var TfIdfSearchIndex = exports.TfIdfSearchIndex = function () {
      function TfIdfSearchIndex(uidFieldName) {
        _classCallCheck(this, TfIdfSearchIndex);

        this._uidFieldName = uidFieldName;
        this._tokenToIdfCache = {};
        this._tokenMap = {};
      }

      /**
       * @inheritDocs
       */

      _createClass(TfIdfSearchIndex, [{
        key: 'indexDocument',
        value: function indexDocument(token, uid, doc) {
          this._tokenToIdfCache = {}; // New index invalidates previous IDF caches

          var tokenMap = this._tokenMap;
          var tokenDatum;

          if (_typeof(tokenMap[token]) !== 'object') {
            tokenMap[token] = tokenDatum = {
              $numDocumentOccurrences: 0,
              $totalNumOccurrences: 1,
              $uidMap: {}
            };
          } else {
            tokenDatum = tokenMap[token];
            tokenDatum.$totalNumOccurrences++;
          }

          var uidMap = tokenDatum.$uidMap;

          if (_typeof(uidMap[uid]) !== 'object') {
            tokenDatum.$numDocumentOccurrences++;
            uidMap[uid] = {
              $document: doc,
              $numTokenOccurrences: 1
            };
          } else {
            uidMap[uid].$numTokenOccurrences++;
          }
        }

        /**
         * @inheritDocs
         */

      }, {
        key: 'search',
        value: function search(tokens, corpus) {
          var uidToDocumentMap = {};

          for (var i = 0, numTokens = tokens.length; i < numTokens; i++) {
            var token = tokens[i];
            var tokenMetadata = this._tokenMap[token];

            // Short circuit if no matches were found for any given token.
            if (!tokenMetadata) {
              return [];
            }

            if (i === 0) {
              var keys = Object.keys(tokenMetadata.$uidMap);
              for (var j = 0, numKeys = keys.length; j < numKeys; j++) {
                var uid = keys[j];

                uidToDocumentMap[uid] = tokenMetadata.$uidMap[uid].$document;
              }
            } else {
              var keys = Object.keys(uidToDocumentMap);
              for (var j = 0, numKeys = keys.length; j < numKeys; j++) {
                var uid = keys[j];

                if (_typeof(tokenMetadata.$uidMap[uid]) !== 'object') {
                  delete uidToDocumentMap[uid];
                }
              }
            }
          }

          var documents = [];

          for (var uid in uidToDocumentMap) {
            documents.push(uidToDocumentMap[uid]);
          }

          var calculateTfIdf = this._createCalculateTfIdf();

          // Return documents sorted by TF-IDF
          return documents.sort(function (documentA, documentB) {
            return calculateTfIdf(tokens, documentB, corpus) - calculateTfIdf(tokens, documentA, corpus);
          });
        }
      }, {
        key: '_createCalculateIdf',
        value: function _createCalculateIdf() {
          var tokenMap = this._tokenMap;
          var tokenToIdfCache = this._tokenToIdfCache;

          return function calculateIdf(token, documents) {
            if (!tokenToIdfCache[token]) {
              var numDocumentsWithToken = typeof tokenMap[token] !== 'undefined' ? tokenMap[token].$numDocumentOccurrences : 0;

              tokenToIdfCache[token] = 1 + Math.log(documents.length / (1 + numDocumentsWithToken));
            }

            return tokenToIdfCache[token];
          };
        }
      }, {
        key: '_createCalculateTfIdf',
        value: function _createCalculateTfIdf() {
          var tokenMap = this._tokenMap;
          var uidFieldName = this._uidFieldName;
          var calculateIdf = this._createCalculateIdf();

          return function calculateTfIdf(tokens, document, documents) {
            var score = 0;

            for (var i = 0, numTokens = tokens.length; i < numTokens; ++i) {
              var token = tokens[i];

              var inverseDocumentFrequency = calculateIdf(token, documents);

              if (inverseDocumentFrequency === Infinity) {
                inverseDocumentFrequency = 0;
              }

              var uid;
              if (uidFieldName instanceof Array) {
                uid = document && (0, _getNestedFieldValue2.default)(document, uidFieldName);
              } else {
                uid = document && document[uidFieldName];
              }

              var termFrequency = typeof tokenMap[token] !== 'undefined' && typeof tokenMap[token].$uidMap[uid] !== 'undefined' ? tokenMap[token].$uidMap[uid].$numTokenOccurrences : 0;

              score += termFrequency * inverseDocumentFrequency;
            }

            return score;
          };
        }
      }]);

      return TfIdfSearchIndex;
    }();

    ;
    //# sourceMappingURL=TfIdfSearchIndex.js.map
  }, { "../getNestedFieldValue": 18 }], 10: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _typeof = typeof Symbol === "function" && _typeof2(Symbol.iterator) === "symbol" ? function (obj) {
      return typeof obj === "undefined" ? "undefined" : _typeof2(obj);
    } : function (obj) {
      return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj === "undefined" ? "undefined" : _typeof2(obj);
    };

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Search index capable of returning results matching a set of tokens but without any meaningful rank or order.
     */
    var UnorderedSearchIndex = exports.UnorderedSearchIndex = function () {
      function UnorderedSearchIndex() {
        _classCallCheck(this, UnorderedSearchIndex);

        this._tokenToUidToDocumentMap = {};
      }

      /**
       * @inheritDocs
       */

      _createClass(UnorderedSearchIndex, [{
        key: 'indexDocument',
        value: function indexDocument(token, uid, doc) {
          if (_typeof(this._tokenToUidToDocumentMap[token]) !== 'object') {
            this._tokenToUidToDocumentMap[token] = {};
          }

          this._tokenToUidToDocumentMap[token][uid] = doc;
        }

        /**
         * @inheritDocs
         */

      }, {
        key: 'search',
        value: function search(tokens, corpus) {
          var intersectingDocumentMap = {};

          var tokenToUidToDocumentMap = this._tokenToUidToDocumentMap;

          for (var i = 0, numTokens = tokens.length; i < numTokens; i++) {
            var token = tokens[i];
            var documentMap = tokenToUidToDocumentMap[token];

            // Short circuit if no matches were found for any given token.
            if (!documentMap) {
              return [];
            }

            if (i === 0) {
              var keys = Object.keys(documentMap);

              for (var j = 0, numKeys = keys.length; j < numKeys; j++) {
                var uid = keys[j];

                intersectingDocumentMap[uid] = documentMap[uid];
              }
            } else {
              var keys = Object.keys(intersectingDocumentMap);

              for (var j = 0, numKeys = keys.length; j < numKeys; j++) {
                var uid = keys[j];

                if (_typeof(documentMap[uid]) !== 'object') {
                  delete intersectingDocumentMap[uid];
                }
              }
            }
          }

          var keys = Object.keys(intersectingDocumentMap);
          var documents = [];

          for (var i = 0, numKeys = keys.length; i < numKeys; i++) {
            var uid = keys[i];

            documents.push(intersectingDocumentMap[uid]);
          }

          return documents;
        }
      }]);

      return UnorderedSearchIndex;
    }();

    ;
    //# sourceMappingURL=UnorderedSearchIndex.js.map
  }, {}], 11: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _TfIdfSearchIndex = require('./TfIdfSearchIndex');

    Object.defineProperty(exports, 'TfIdfSearchIndex', {
      enumerable: true,
      get: function get() {
        return _TfIdfSearchIndex.TfIdfSearchIndex;
      }
    });

    var _UnorderedSearchIndex = require('./UnorderedSearchIndex');

    Object.defineProperty(exports, 'UnorderedSearchIndex', {
      enumerable: true,
      get: function get() {
        return _UnorderedSearchIndex.UnorderedSearchIndex;
      }
    });
    //# sourceMappingURL=index.js.map
  }, { "./TfIdfSearchIndex": 9, "./UnorderedSearchIndex": 10 }], 12: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    var StopWordsMap = exports.StopWordsMap = {
      a: true,
      able: true,
      about: true,
      across: true,
      after: true,
      all: true,
      almost: true,
      also: true,
      am: true,
      among: true,
      an: true,
      and: true,
      any: true,
      are: true,
      as: true,
      at: true,
      be: true,
      because: true,
      been: true,
      but: true,
      by: true,
      can: true,
      cannot: true,
      could: true,
      dear: true,
      did: true,
      'do': true,
      does: true,
      either: true,
      'else': true,
      ever: true,
      every: true,
      'for': true,
      from: true,
      'get': true,
      got: true,
      had: true,
      has: true,
      have: true,
      he: true,
      her: true,
      hers: true,
      him: true,
      his: true,
      how: true,
      however: true,
      i: true,
      'if': true,
      'in': true,
      into: true,
      is: true,
      it: true,
      its: true,
      just: true,
      least: true,
      let: true,
      like: true,
      likely: true,
      may: true,
      me: true,
      might: true,
      most: true,
      must: true,
      my: true,
      neither: true,
      no: true,
      nor: true,
      not: true,
      of: true,
      off: true,
      often: true,
      on: true,
      only: true,
      or: true,
      other: true,
      our: true,
      own: true,
      rather: true,
      said: true,
      say: true,
      says: true,
      she: true,
      should: true,
      since: true,
      so: true,
      some: true,
      than: true,
      that: true,
      the: true,
      their: true,
      them: true,
      then: true,
      there: true,
      these: true,
      they: true,
      'this': true,
      tis: true,
      to: true,
      too: true,
      twas: true,
      us: true,
      wants: true,
      was: true,
      we: true,
      were: true,
      what: true,
      when: true,
      where: true,
      which: true,
      'while': true,
      who: true,
      whom: true,
      why: true,
      will: true,
      'with': true,
      would: true,
      yet: true,
      you: true,
      your: true
    };

    // Prevent false positives for inherited properties
    StopWordsMap.constructor = false;
    StopWordsMap.hasOwnProperty = false;
    StopWordsMap.isPrototypeOf = false;
    StopWordsMap.propertyIsEnumerable = false;
    StopWordsMap.toLocaleString = false;
    StopWordsMap.toString = false;
    StopWordsMap.valueOf = false;
    //# sourceMappingURL=StopWordsMap.js.map
  }, {}], 13: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    exports.TokenHighlighter = undefined;

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    var _index = require('./IndexStrategy/index');

    var _index2 = require('./Sanitizer/index');

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * This utility highlights the occurrences of tokens within a string of text. It can be used to give visual indicators
     * of match criteria within searchable fields.
     *
     * <p>For performance purposes this highlighter only works with full-word or prefix token indexes.
     */
    var TokenHighlighter = exports.TokenHighlighter = function () {

      /**
       * Constructor.
       *
       * @param opt_indexStrategy Index strategy used by Search
       * @param opt_sanitizer Sanitizer used by Search
       * @param opt_wrapperTagName Optional wrapper tag name; defaults to 'mark' (e.g. <mark>)
       */
      function TokenHighlighter(opt_indexStrategy, opt_sanitizer, opt_wrapperTagName) {
        _classCallCheck(this, TokenHighlighter);

        this._indexStrategy = opt_indexStrategy || new _index.PrefixIndexStrategy();
        this._sanitizer = opt_sanitizer || new _index2.LowerCaseSanitizer();
        this._wrapperTagName = opt_wrapperTagName || 'mark';
      }

      /**
       * Highlights token occurrences within a string by wrapping them with a DOM element.
       *
       * @param text e.g. "john wayne"
       * @param tokens e.g. ["wa"]
       * @returns {string} e.g. "john <mark>wa</mark>yne"
       */

      _createClass(TokenHighlighter, [{
        key: 'highlight',
        value: function highlight(text, tokens) {
          var tagsLength = this._wrapText('').length;

          var tokenDictionary = {};

          // Create a token map for easier lookup below.
          for (var i = 0, numTokens = tokens.length; i < numTokens; i++) {
            var token = this._sanitizer.sanitize(tokens[i]);
            var expandedTokens = this._indexStrategy.expandToken(token);

            for (var j = 0, numExpandedTokens = expandedTokens.length; j < numExpandedTokens; j++) {
              var expandedToken = expandedTokens[j];

              if (!tokenDictionary[expandedToken]) {
                tokenDictionary[expandedToken] = [token];
              } else {
                tokenDictionary[expandedToken].push(token);
              }
            }
          }

          // Track actualCurrentWord and sanitizedCurrentWord separately in case we encounter nested tags.
          var actualCurrentWord = '';
          var sanitizedCurrentWord = '';
          var currentWordStartIndex = 0;

          // Note this assumes either prefix or full word matching.
          for (var i = 0, textLength = text.length; i < textLength; i++) {
            var character = text.charAt(i);

            if (character === ' ') {
              actualCurrentWord = '';
              sanitizedCurrentWord = '';
              currentWordStartIndex = i + 1;
            } else {
              actualCurrentWord += character;
              sanitizedCurrentWord += this._sanitizer.sanitize(character);
            }

            if (tokenDictionary[sanitizedCurrentWord] && tokenDictionary[sanitizedCurrentWord].indexOf(sanitizedCurrentWord) >= 0) {

              actualCurrentWord = this._wrapText(actualCurrentWord);
              text = text.substring(0, currentWordStartIndex) + actualCurrentWord + text.substring(i + 1);

              i += tagsLength;
              textLength += tagsLength;
            }
          }

          return text;
        }

        /**
         * @param text to wrap
         * @returns Text wrapped by wrapper tag (e.g. "foo" becomes "<mark>foo</mark>")
         * @private
         */

      }, {
        key: '_wrapText',
        value: function _wrapText(text) {
          var tagName = this._wrapperTagName;
          return '<' + tagName + '>' + text + '</' + tagName + '>';
        }
      }]);

      return TokenHighlighter;
    }();

    ;
    //# sourceMappingURL=TokenHighlighter.js.map
  }, { "./IndexStrategy/index": 4, "./Sanitizer/index": 7 }], 14: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    var REGEX = /[^a-zа-яё0-9\-']+/i;

    /**
     * Simple tokenizer that splits strings on whitespace characters and returns an array of all non-empty substrings.
     */

    var SimpleTokenizer = exports.SimpleTokenizer = function () {
      function SimpleTokenizer() {
        _classCallCheck(this, SimpleTokenizer);
      }

      _createClass(SimpleTokenizer, [{
        key: 'tokenize',

        /**
         * @inheritDocs
         */
        value: function tokenize(text) {
          return text.split(REGEX).filter(function (text) {
            return text;
          } // Filter empty tokens
          );
        }
      }]);

      return SimpleTokenizer;
    }();

    ;
    //# sourceMappingURL=SimpleTokenizer.js.map
  }, {}], 15: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Stemming is the process of reducing search tokens to their root (or stem) so that searches for different forms of a
     * word will match. For example "search", "searching" and "searched" are all reduced to the stem "search".
     *
     * <p>This stemming tokenizer converts tokens (words) to their stem forms before returning them. It requires an
     * external stemming function to be provided; for this purpose I recommend the NPM 'porter-stemmer' library.
     *
     * <p>For more information see http : //tartarus.org/~martin/PorterStemmer/
     */
    var StemmingTokenizer = exports.StemmingTokenizer = function () {

      /**
       * Constructor.
       *
       * @param stemmingFunction Function capable of accepting a word and returning its stem.
       * @param decoratedIndexStrategy Index strategy to be run after all stop words have been removed.
       */
      function StemmingTokenizer(stemmingFunction, decoratedTokenizer) {
        _classCallCheck(this, StemmingTokenizer);

        this._stemmingFunction = stemmingFunction;
        this._tokenizer = decoratedTokenizer;
      }

      /**
       * @inheritDocs
       */

      _createClass(StemmingTokenizer, [{
        key: 'tokenize',
        value: function tokenize(text) {
          return this._tokenizer.tokenize(text).map(this._stemmingFunction);
        }
      }]);

      return StemmingTokenizer;
    }();

    ;
    //# sourceMappingURL=StemmingTokenizer.js.map
  }, {}], 16: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    exports.StopWordsTokenizer = undefined;

    var _createClass = function () {
      function defineProperties(target, props) {
        for (var i = 0; i < props.length; i++) {
          var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
        }
      }return function (Constructor, protoProps, staticProps) {
        if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;
      };
    }();

    var _StopWordsMap = require('../StopWordsMap');

    function _classCallCheck(instance, Constructor) {
      if (!(instance instanceof Constructor)) {
        throw new TypeError("Cannot call a class as a function");
      }
    }

    /**
     * Stop words are very common (e.g. "a", "and", "the") and are often not semantically meaningful in the context of a
     * search. This tokenizer removes stop words from a set of tokens before passing the remaining tokens along for
     * indexing or searching purposes.
     */
    var StopWordsTokenizer = exports.StopWordsTokenizer = function () {

      /**
       * Constructor.
       *
       * @param decoratedIndexStrategy Index strategy to be run after all stop words have been removed.
       */
      function StopWordsTokenizer(decoratedTokenizer) {
        _classCallCheck(this, StopWordsTokenizer);

        this._tokenizer = decoratedTokenizer;
      }

      /**
       * @inheritDocs
       */

      _createClass(StopWordsTokenizer, [{
        key: 'tokenize',
        value: function tokenize(text) {
          return this._tokenizer.tokenize(text).filter(function (token) {
            return !_StopWordsMap.StopWordsMap[token];
          });
        }
      }]);

      return StopWordsTokenizer;
    }();

    ;
    //# sourceMappingURL=StopWordsTokenizer.js.map
  }, { "../StopWordsMap": 12 }], 17: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _SimpleTokenizer = require('./SimpleTokenizer');

    Object.defineProperty(exports, 'SimpleTokenizer', {
      enumerable: true,
      get: function get() {
        return _SimpleTokenizer.SimpleTokenizer;
      }
    });

    var _StemmingTokenizer = require('./StemmingTokenizer');

    Object.defineProperty(exports, 'StemmingTokenizer', {
      enumerable: true,
      get: function get() {
        return _StemmingTokenizer.StemmingTokenizer;
      }
    });

    var _StopWordsTokenizer = require('./StopWordsTokenizer');

    Object.defineProperty(exports, 'StopWordsTokenizer', {
      enumerable: true,
      get: function get() {
        return _StopWordsTokenizer.StopWordsTokenizer;
      }
    });
    //# sourceMappingURL=index.js.map
  }, { "./SimpleTokenizer": 14, "./StemmingTokenizer": 15, "./StopWordsTokenizer": 16 }], 18: [function (require, module, exports) {
    "use strict";

    Object.defineProperty(exports, "__esModule", {
      value: true
    });
    exports.default = getNestedFieldValue;
    /**
     * Find and return a nested object value.
     *
     * @param object to crawl
     * @param path Property path
     * @returns {any}
     */
    function getNestedFieldValue(object, path) {
      path = path || [];
      object = object || {};

      var value = object;

      // walk down the property path
      for (var i = 0; i < path.length; i++) {
        value = value[path[i]];

        if (value == null) {
          return null;
        }
      }

      return value;
    }
    //# sourceMappingURL=getNestedFieldValue.js.map
  }, {}], 19: [function (require, module, exports) {
    'use strict';

    Object.defineProperty(exports, "__esModule", {
      value: true
    });

    var _index = require('./IndexStrategy/index');

    Object.defineProperty(exports, 'AllSubstringsIndexStrategy', {
      enumerable: true,
      get: function get() {
        return _index.AllSubstringsIndexStrategy;
      }
    });
    Object.defineProperty(exports, 'ExactWordIndexStrategy', {
      enumerable: true,
      get: function get() {
        return _index.ExactWordIndexStrategy;
      }
    });
    Object.defineProperty(exports, 'PrefixIndexStrategy', {
      enumerable: true,
      get: function get() {
        return _index.PrefixIndexStrategy;
      }
    });

    var _index2 = require('./Sanitizer/index');

    Object.defineProperty(exports, 'CaseSensitiveSanitizer', {
      enumerable: true,
      get: function get() {
        return _index2.CaseSensitiveSanitizer;
      }
    });
    Object.defineProperty(exports, 'LowerCaseSanitizer', {
      enumerable: true,
      get: function get() {
        return _index2.LowerCaseSanitizer;
      }
    });

    var _index3 = require('./SearchIndex/index');

    Object.defineProperty(exports, 'TfIdfSearchIndex', {
      enumerable: true,
      get: function get() {
        return _index3.TfIdfSearchIndex;
      }
    });
    Object.defineProperty(exports, 'UnorderedSearchIndex', {
      enumerable: true,
      get: function get() {
        return _index3.UnorderedSearchIndex;
      }
    });

    var _index4 = require('./Tokenizer/index');

    Object.defineProperty(exports, 'SimpleTokenizer', {
      enumerable: true,
      get: function get() {
        return _index4.SimpleTokenizer;
      }
    });
    Object.defineProperty(exports, 'StemmingTokenizer', {
      enumerable: true,
      get: function get() {
        return _index4.StemmingTokenizer;
      }
    });
    Object.defineProperty(exports, 'StopWordsTokenizer', {
      enumerable: true,
      get: function get() {
        return _index4.StopWordsTokenizer;
      }
    });

    var _Search = require('./Search');

    Object.defineProperty(exports, 'Search', {
      enumerable: true,
      get: function get() {
        return _Search.Search;
      }
    });

    var _StopWordsMap = require('./StopWordsMap');

    Object.defineProperty(exports, 'StopWordsMap', {
      enumerable: true,
      get: function get() {
        return _StopWordsMap.StopWordsMap;
      }
    });

    var _TokenHighlighter = require('./TokenHighlighter');

    Object.defineProperty(exports, 'TokenHighlighter', {
      enumerable: true,
      get: function get() {
        return _TokenHighlighter.TokenHighlighter;
      }
    });
    //# sourceMappingURL=index.js.map
  }, { "./IndexStrategy/index": 4, "./Sanitizer/index": 7, "./Search": 8, "./SearchIndex/index": 11, "./StopWordsMap": 12, "./TokenHighlighter": 13, "./Tokenizer/index": 17 }], 20: [function (require, module, exports) {
    /*
     * Tour
     * Search and filter on tour page
     */

    var Tour = function () {
      function Tour(container, tourResults) {
        var _this = this;

        _classCallCheck2(this, Tour);

        this.$el = {};
        this.$el.list_date = tourResults;
        this.$el.container = container;
        this.$el.search = this.$el.container.querySelector('.tour__search-input input');
        this.$el.filters = this.$el.container.querySelectorAll('.tour__search-filter ul li');
        this.$el.json = JSON.parse(data);

        console.log(this.$el.json);

        this.$el.filters.forEach(function (filter) {
          filter.addEventListener('click', function (e) {
            _this.filter(e.target);
          });
        });

        this.$el.search.addEventListener('input', function () {
          var search = _this.$el.search.value;
          var searchLenght = search.length;

          if (searchLenght > 2 && searchLenght % 2 === 0) {
            _this.search(search);
          } else if (searchLenght === 0) {
            _this.displayAll();
          }
        });
      }

      _createClass2(Tour, [{
        key: "search",
        value: function search(_search) {
          var _this2 = this;

          var JsSearch = require('js-search');

          var searchJson = new JsSearch.Search('city');
          searchJson.addIndex('city');

          searchJson.addDocuments(this.$el.json);

          var results = searchJson.search(_search);
          console.log(results);

          if (results.length > 0) {
            this.$el.list_date.innerHTML = '';
          }

          results.forEach(function (result) {
            result.show.forEach(function (show) {
              _this2.update(show);
            });
          });
        }
      }, {
        key: "filter",
        value: function filter(target, displayAll) {
          var _this3 = this;

          this.$el.filters.forEach(function (filter) {
            filter.classList.remove('active');
          });

          target.classList.add('active');

          var filter = target.getAttribute('data-filter');
          this.$el.list_date.innerHTML = '';

          this.$el.json.forEach(function (data) {
            var html = '';
            if (filter === data.type || filter === 'all' || displayAll) {

              data.show.forEach(function (date) {
                _this3.update(date);
              });
            }
          });
        }
      }, {
        key: "displayAll",
        value: function displayAll() {
          var _this4 = this;

          this.$el.json.forEach(function (data) {
            data.show.forEach(function (show) {
              _this4.update(show);
            });
          });
        }
      }, {
        key: "update",
        value: function update(date) {
          var ticket = '';
          if (date.sold_out) {
            ticket = '<span id="sold_out">Sold out</span>';
          } else {
            ticket = '<a href="' + date.link + '" class="btn-kygo">Buy Tickets</a>';
          }
          var html = '<div class="list__date">' + '<span>' + date.city + '</span>' + '<p>' + date.date + '</p>' + '<p id="theater">' + date.theather + '</p>' + ticket + '</div>';

          this.$el.list_date.innerHTML += html;
        }
      }]);

      return Tour;
    }();

    var tour = new Tour(document.querySelector('.tour__search'), document.querySelector('.tour__results'));
  }, { "js-search": 19 }] }, {}, [20]);