(defvar javascript-symbols '("attributes" "baseURIObject" "childNodes"
  "className" "clientHeight" "clientLeft" "clientTop" "clientWidth"
  "dir" "firstChild" "id" "innerHTML" "lang" "lastChild" "localName"
  "name" "namespaceURI" "nextSibling" "nodeName" "nodePrincipal"
  "nodeType" "nodeValue" "offsetHeight" "offsetLeft" "offsetParent"
  "offsetTop" "offsetWidth" "ownerDocument" "parentNode" "prefix"
  "previousSibling" "scrollHeight" "scrollLeft" "scrollTop"
  "scrollWidth" "style" "tabIndex" "tagName" "textContent" "title"
  "createAttribute" "createAttributeNS" "createCDATASection"
  "createComment" "createDocumentFragment" "createElement"
  "createElementNS" "createEntityReference"
  "createProcessingInstruction" "createTextNode" "getElementById"
  "getElementsByClassName" "getElementsByTagName"
  "getElementsByTagNameNS" "getAttribute" "getAttributeNode"
  "getAttributeNodeNS" "getAttributeNS" "getElementsByTagName"
  "getElementsByTagNameNS" "hasAttribute" "hasAttributeNS"
  "removeAttribute" "removeAttributeNode" "removeAttributeNS"
  "setAttribute" "setAttributeNode" "setAttributeNodeNS"
  "setAttributeNS" "setIdAttribute" "setIdAttributeNode"
  "setIdAttributeNS" "createDocument" "createDocumentType"
  "hasFeature" "getNamedItem" "getNamedItemNS" "item"
  "addEventListener" "appendChild" "cloneNode" "dispatchEvent" "focus"
  "hasAttributes" "hasChildNodes" "insertBefore" "isDefaultNamespace"
  "isSameNode" "isSupported" "lookupNamespaceURI" "lookupPrefix"
  "normalize" "removeChild" "replaceChild" "evaluate" "query"
  "registerNamespace" "above" "abs" "acos" "action" "alert"
  "alinkColor" "anchor" "Object" "String" "anchors" "appCodeName"
  "Applet" "applets" "apply" "appName" "appVersion" "arguments"
  "arity" "Array" "asin" "assignment" "operator" "atan" "atan2"
  "availHeight" "availWidth" "back" "History" "Window" "background"
  "below" "bgColor" "Document" "Layer" "bitwise" "operators" "blur"
  "Button" "Checkbox" "FileUpload" "Password" "Radio" "Reset" "Select"
  "Submit" "Text" "Textarea" "Window" "Boolean" "border" "break"
  "Button" "call" "captureEvents" "Document" "Layer" "Window" "ceil"
  "charAt" "charCodeAt" "Checkbox" "checked" "Object" "Radio"
  "clearInterval" "clearTimeout" "click" "Button" "Checkbox"
  "FileUpload" "Radio" "Reset" "Submit" "close" "Document" "Window"
  "closed" "colorDepth" "comment" "comparison" "operators" "compile"
  "complete" "concat" "Array" "String" "confirm" "constructor" "Array"
  "Boolean" "Date" "Function" "Number" "Object" "RegExp" "String"
  "continue" "cookie" "cos" "current" "data" "Date" "defaultChecked"
  "Checkbox" "Radio" "defaultSelected" "defaultStatus" "defaultValue"
  "Password" "Text" "Textarea" "delete" "disableExternalCapture"
  "document" "Layer" "Object" "Window" "domain" "E" "elements"
  "embeds" "enableExternalCapture" "encoding" "escape" "eval"
  "Function" "Method" "Event" "exec" "exp" "export" "fgColor"
  "FileUpload" "find" "floor" "focus" "Button" "Checkbox" "FileUpload"
  "Password" "Radio" "Reset" "Select" "Submit" "Text" "Textarea"
  "Window" "form" "Button" "Checkbox" "Document" "FileUpload" "Hidden"
  "Object" "Password" "Radio" "Reset" "Select" "Submit" "Text"
  "TextArea" "formatting" "formName" "forms" "forward" "History"
  "Window" "Frame" "frames" "fromCharCode" "function" "Object"
  "Statement" "getDate" "getDay" "getFullYear" "getHours"
  "getMilliseconds" "getMinutes" "getMonth" "getSeconds"
  "getSelection" "getTime" "getTimezoneOffset" "getUTCDate"
  "getUTCDay" "getUTCFullYear" "getUTCHours" "getUTCMilliseconds"
  "getUTCMinutes" "getUTCMonth" "getUTCSeconds" "global" "go"
  "handleEvent" "Button" "Checkbox" "Document" "FileUpload" "Form"
  "Image" "Layer" "Link" "Password" "Radio" "Reset" "Select" "Submit"
  "Text" "Textarea" "Window" "hash" "Link" "Location" "height" "Event"
  "Image" "Screen" "Hidden" "history" "Object" "Window" "home" "host"
  "Link" "Location" "hostname" "Link" "Location" "href" "Link"
  "Location" "hspace" "ignoreCase" "Image" "images" "import" "index"
  "indexOf" "Infinity" "innerHeight" "innerWidth" "input" "Array"
  "RegExp" "isFinite" "isNaN" "javaEnabled" "join" "label" "language"
  "lastIndex" "lastIndexOf" "lastMatch" "lastModified" "lastParen"
  "Layer" "layers" "layerX" "layerY" "leftContext" "length" "Array"
  "Form" "Function" "History" "Select" "String" "Window" "link"
  "Object" "String" "linkColor" "links" "LN10" "LN2" "load" "location"
  "Object" "Window" "locationbar" "log" "LOG10E" "LOG2E" "lowsrc"
  "match" "Math" "max" "MAX"_"VALUE" "menubar" "method" "mimeTypes"
  "min" "MIN"_"VALUE" "modifiers" "moveAbove" "moveBelow" "moveBy"
  "Layer" "Window" "moveTo" "Layer" "Window" "moveToAbsolute"
  "multiline" "name" "Button" "Checkbox" "FileUpload" "Form" "Hidden"
  "Image" "Password" "Radio" "Reset" "Select" "Submit" "Text"
  "Textarea" "Window" "NaN" "Number" "Primitive" "Value" "navigator"
  "NEGATIVE"_"INFINITY" "new" "next" "number" "Function" "Object"
  "onAbort" "onBlur" "onChange" "onClick" "onDblClick" "onDragDrop"
  "onFocus" "onKeyDown" "onKeyPress" "onKeyUp" "onload" "onMouseDown"
  "onMouseMove" "onMouseOut" "onMouseOver" "onMouseUp" "onMove"
  "onReset" "onResize" "onSelect" "onSubmit" "onUnload" "open"
  "Document" "Window" "opener" "options" "outerheight" "outerwidth"
  "pageX" "Event" "Layer" "pageY" "Event" "Layer" "pageXoffset"
  "pageYoffset" "parent" "parentLayer" "parse" "parseFloat" "parseInt"
  "Password" "pathname" "Link" "Location" "personalbar" "PI"
  "pixelDepth" "platform" "plugins" "Document" "pop" "port" "Link"
  "Location" "POSITIVE"_"INFINITY" "pow" "preference" "previous"
  "print" "prompt" "protocol" "Link" "Location" "prototype" "Array"
  "Boolean" "Date" "Function" "Number" "Object" "RegExp" "push"
  "Radio" "random" "referrer" "RegExp" "releaseEvents" "Document"
  "Layer" "Window" "reload" "replace" "Location" "String" "reset"
  "Form" "Object" "resizeBy" "Layer" "Window" "resizeTo" "Layer"
  "Window" "return" "reverse" "rightContext" "round" "routeEvent"
  "Document" "Layer" "Window" "screen" "screenX" "screenY" "scroll"
  "scrollbars" "scrollBy" "scrollTo" "search" "Link" "Location"
  "String" "Select" "Method" "Password" "Text" "Textarea" "Select"
  "Object" "selected" "selectedIndex" "self" "setDate" "setFullYear"
  "setHours" "setInterval" "setMilliseconds" "setMinutes" "setMonth"
  "setSeconds" "setTime" "setTimeout" "setUTCDate" "setUTCFullYear"
  "setUTCHours" "setUTCMilliseconds" "setUTCMinutes" "setUTCMonth"
  "setUTCSeconds" "shift" "siblingAbove" "siblingBelow" "sin" "slice"
  "Array" "String" "sort" "source" "special" "characters" "RegExp"
  "special" "operators" "splice" "split" "sqrt" "SQRT1"_"2" "SQRT2"
  "src" "Image" "Layer" "status" "statusbar" "stop" "string" "Object"
  "Function" "Method" "submit" "Form" "Object" "substr" "substring"
  "switch" "taint" "taintEnabled" "tan" "target" "Event" "Form" "Link"
  "test" "text" "Link" "Object" "Option" "Textarea" "this" "throw"
  "title" "toGMTString" "toLocaleString" "toLowerCase" "toolbar" "top"
  "Layer" "Window" "toSource" "Array" "Boolean" "Date" "Function"
  "Number" "Object" "RegExp" "String" "toString" "Array" "Boolean"
  "Date" "Function" "Number" "Object" "RegExp" "String" "toUpperCase"
  "toUTCString" "type" "Button" "Checkbox" "Event" "FileUpload"
  "Hidden" "Password" "Radio" "Reset" "Select" "Submit" "Text"
  "Textarea" "typeof" "Undefined" "unescape" "unshift" "untaint"
  "unwatch" "URL" "userAgent" "UTC" "value" "Button" "Checkbox"
  "FileUpload" "Hidden" "Option" "Password" "Radio" "Reset" "Submit"
  "Text" "Textarea" "valueOf" "Array" "Boolean" "Date" "Function"
  "Number" "Object" "RegExp" "String" "var" "visibility" "vlinkColor"
  "void" "vspace" "watch" "which" "while" "width" "Event" "Image"
  "Screen" "window" "with" "write" "writeln" "x" "y" "zIndex" ))
