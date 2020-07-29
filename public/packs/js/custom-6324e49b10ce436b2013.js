/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/custom.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/custom.js":
/*!****************************************!*\
  !*** ./app/javascript/packs/custom.js ***!
  \****************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/getgrip/Desktop/GetGrip/app/javascript/packs/custom.js: Unterminated comment (49:0)\n\n  47 |   });\n  48 | \n> 49 | /*\n     | ^\n  50 |       if($(this).text() in colors)\n  51 |       {\n  52 |         colors[$(this).text()] = colors[$(this).text()] + 1;\n    at Parser._raise (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:742:17)\n    at Parser.raiseWithData (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:735:17)\n    at Parser.raise (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:729:17)\n    at Parser.skipBlockComment (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:7592:32)\n    at Parser.skipSpace (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:7648:20)\n    at Parser.nextToken (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:7556:56)\n    at Parser.next (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:7499:10)\n    at Parser.eat (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:7504:12)\n    at Parser.isLineTerminator (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:8757:17)\n    at Parser.semicolon (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:8761:15)\n    at Parser.parseExpressionStatement (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11637:10)\n    at Parser.parseStatementContent (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11238:19)\n    at Parser.parseStatement (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11104:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11679:25)\n    at Parser.parseBlockBody (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11665:10)\n    at Parser.parseBlock (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11649:10)\n    at Parser.parseFunctionBody (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:10656:24)\n    at Parser.parseFunctionBodyAndFinish (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:10639:10)\n    at /home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11819:12\n    at Parser.withTopicForbiddingContext (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:10979:14)\n    at Parser.parseFunction (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:11818:10)\n    at Parser.parseFunctionExpression (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:10115:17)\n    at Parser.parseExprAtom (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:10023:21)\n    at Parser.parseExprSubscripts (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:9624:23)\n    at Parser.parseMaybeUnary (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:9604:21)\n    at Parser.parseExprOps (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:9474:23)\n    at Parser.parseMaybeConditional (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:9447:23)\n    at Parser.parseMaybeAssign (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:9402:21)\n    at Parser.parseExprListItem (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:10740:18)\n    at Parser.parseCallExpressionArguments (/home/getgrip/Desktop/GetGrip/node_modules/@babel/parser/lib/index.js:9812:22)");

/***/ })

/******/ });
//# sourceMappingURL=custom-6324e49b10ce436b2013.js.map