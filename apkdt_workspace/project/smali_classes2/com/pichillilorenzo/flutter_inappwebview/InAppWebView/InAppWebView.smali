.class public final Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;
.super Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;
.source "InAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$s;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "InAppWebView"

.field static final checkContextMenuShouldBeHiddenJS:Ljava/lang/String; = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : \'\';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == \'textarea\' || (nodeName == \'input\' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : \'text\')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === \'on\';  return txt === \'\' && !isActiveElementEditable;})();"

.field static final checkGlobalKeyDownEventToHideContextMenuJS:Ljava/lang/String; = "(function(){  document.addEventListener(\'keydown\', function(e) {    window.flutter_inappwebview._hideContextMenu();  });})();"

.field static final consoleLogJS:Ljava/lang/String; = "(function(console) {   var oldLogs = {       \'log\': console.log,       \'debug\': console.debug,       \'error\': console.error,       \'info\': console.info,       \'warn\': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = \'\';               for (var i in arguments) {                   if (message == \'\') {                       message += arguments[i];                   }                   else {                       message += \' \' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);"

.field static final enableVariableForOnLoadResourceJS:Ljava/lang/String; = "window._flutter_inappwebview_useOnLoadResource = $PLACEHOLDER_VALUE;"

.field static final enableVariableForShouldInterceptAjaxRequestJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptAjaxRequest = $PLACEHOLDER_VALUE;"

.field static final enableVariableForShouldInterceptFetchRequestsJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptFetchRequest = $PLACEHOLDER_VALUE;"

.field static final getSelectedTextJS:Ljava/lang/String; = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();"

.field static final interceptAjaxRequestsJS:Ljava/lang/String; = "(function(ajax) {  var send = ajax.prototype.send;  var open = ajax.prototype.open;  var setRequestHeader = ajax.prototype.setRequestHeader;  ajax.prototype._flutter_inappwebview_url = null;  ajax.prototype._flutter_inappwebview_method = null;  ajax.prototype._flutter_inappwebview_isAsync = null;  ajax.prototype._flutter_inappwebview_user = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_already_onreadystatechange_wrapped = false;  ajax.prototype._flutter_inappwebview_request_headers = {};  function convertRequestResponse(request, callback) {    if (request.response != null && request.responseType != null) {      switch (request.responseType) {        case \'arraybuffer\':          callback(new Uint8Array(request.response));          return;        case \'blob\':          const reader = new FileReader();          reader.addEventListener(\'loadend\', function() {              callback(new Uint8Array(reader.result));          });          reader.readAsArrayBuffer(blob);          return;        case \'document\':          callback(request.response.documentElement.outerHTML);          return;        case \'json\':          callback(request.response);          return;      };    }    callback(null);  };  ajax.prototype.open = function(method, url, isAsync, user, password) {    isAsync = (isAsync != null) ? isAsync : true;    this._flutter_inappwebview_url = url;    this._flutter_inappwebview_method = method;    this._flutter_inappwebview_isAsync = isAsync;    this._flutter_inappwebview_user = user;    this._flutter_inappwebview_password = password;    this._flutter_inappwebview_request_headers = {};    open.call(this, method, url, isAsync, user, password);  };  ajax.prototype.setRequestHeader = function(header, value) {    this._flutter_inappwebview_request_headers[header] = value;    setRequestHeader.call(this, header, value);  };  function handleEvent(e) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      var headers = this.getAllResponseHeaders();      var responseHeaders = {};      if (headers != null) {        var arr = headers.trim().split(/[\\r\\n]+/);        arr.forEach(function (line) {          var parts = line.split(\': \');          var header = parts.shift();          var value = parts.join(\': \');          responseHeaders[header] = value;        });      }      convertRequestResponse(this, function(response) {        var ajaxRequest = {          method: self._flutter_inappwebview_method,          url: self._flutter_inappwebview_url,          isAsync: self._flutter_inappwebview_isAsync,          user: self._flutter_inappwebview_user,          password: self._flutter_inappwebview_password,          withCredentials: self.withCredentials,          headers: self._flutter_inappwebview_request_headers,          readyState: self.readyState,          status: self.status,          responseURL: self.responseURL,          responseType: self.responseType,          response: response,          responseText: (self.responseType == \'text\' || self.responseType == \'\') ? self.responseText : null,          responseXML: (self.responseType == \'document\' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,          statusText: self.statusText,          responseHeaders, responseHeaders,          event: {            type: e.type,            loaded: e.loaded,            lengthComputable: e.lengthComputable,            total: e.total          }        };        window.flutter_inappwebview.callHandler(\'onAjaxProgress\', ajaxRequest).then(function(result) {          if (result != null) {            switch (result) {              case 0:                self.abort();                return;            };          }        });      });    }  };  ajax.prototype.send = function(data) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      if (!this._flutter_inappwebview_already_onreadystatechange_wrapped) {        this._flutter_inappwebview_already_onreadystatechange_wrapped = true;        var onreadystatechange = this.onreadystatechange;        this.onreadystatechange = function() {          if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {            var headers = this.getAllResponseHeaders();            var responseHeaders = {};            if (headers != null) {              var arr = headers.trim().split(/[\\r\\n]+/);              arr.forEach(function (line) {                var parts = line.split(\': \');                var header = parts.shift();                var value = parts.join(\': \');                responseHeaders[header] = value;              });            }            convertRequestResponse(this, function(response) {              var ajaxRequest = {                method: self._flutter_inappwebview_method,                url: self._flutter_inappwebview_url,                isAsync: self._flutter_inappwebview_isAsync,                user: self._flutter_inappwebview_user,                password: self._flutter_inappwebview_password,                withCredentials: self.withCredentials,                headers: self._flutter_inappwebview_request_headers,                readyState: self.readyState,                status: self.status,                responseURL: self.responseURL,                responseType: self.responseType,                response: response,                responseText: (self.responseType == \'text\' || self.responseType == \'\') ? self.responseText : null,                responseXML: (self.responseType == \'document\' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,                statusText: self.statusText,                responseHeaders: responseHeaders              };              window.flutter_inappwebview.callHandler(\'onAjaxReadyStateChange\', ajaxRequest).then(function(result) {                if (result != null) {                  switch (result) {                    case 0:                      self.abort();                      return;                  };                }                if (onreadystatechange != null) {                  onreadystatechange();                }              });            });          } else if (onreadystatechange != null) {            onreadystatechange();          }        };      }      this.addEventListener(\'loadstart\', handleEvent);      this.addEventListener(\'load\', handleEvent);      this.addEventListener(\'loadend\', handleEvent);      this.addEventListener(\'progress\', handleEvent);      this.addEventListener(\'error\', handleEvent);      this.addEventListener(\'abort\', handleEvent);      this.addEventListener(\'timeout\', handleEvent);      var ajaxRequest = {        data: data,        method: this._flutter_inappwebview_method,        url: this._flutter_inappwebview_url,        isAsync: this._flutter_inappwebview_isAsync,        user: this._flutter_inappwebview_user,        password: this._flutter_inappwebview_password,        withCredentials: this.withCredentials,        headers: this._flutter_inappwebview_request_headers,        responseType: this.responseType      };      window.flutter_inappwebview.callHandler(\'shouldInterceptAjaxRequest\', ajaxRequest).then(function(result) {        if (result != null) {          switch (result.action) {            case 0:              self.abort();              return;          };          data = result.data;          self.withCredentials = result.withCredentials;          if (result.responseType != null) {            self.responseType = result.responseType;          };          for (var header in result.headers) {            var value = result.headers[header];            var flutter_inappwebview_value = self._flutter_inappwebview_request_headers[header];            if (flutter_inappwebview_value == null) {              self._flutter_inappwebview_request_headers[header] = value;            } else {              self._flutter_inappwebview_request_headers[header] += \', \' + value;            }            setRequestHeader.call(self, header, value);          };          if ((self._flutter_inappwebview_method != result.method && result.method != null) || (self._flutter_inappwebview_url != result.url && result.url != null)) {            self.abort();            self.open(result.method, result.url, result.isAsync, result.user, result.password);            return;          }        }        send.call(self, data);      });    } else {      send.call(this, data);    }  };})(window.XMLHttpRequest);"

.field static final interceptFetchRequestsJS:Ljava/lang/String; = "(function(fetch) {  if (fetch == null) {    return;  }  function convertHeadersToJson(headers) {    var headersObj = {};    for (var header of headers.keys()) {      var value = headers.get(header);      headersObj[header] = value;    }    return headersObj;  }  function convertJsonToHeaders(headersJson) {    return new Headers(headersJson);  }  function convertBodyToArray(body) {    return new Response(body).arrayBuffer().then(function(arrayBuffer) {      var arr = Array.from(new Uint8Array(arrayBuffer));      return arr;    })  }  function convertArrayIntBodyToUint8Array(arrayIntBody) {    return new Uint8Array(arrayIntBody);  }  function convertCredentialsToJson(credentials) {    var credentialsObj = {};    if (window.FederatedCredential != null && credentials instanceof FederatedCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.protocol = credentials.protocol;      credentialsObj.provider = credentials.provider;      credentialsObj.iconURL = credentials.iconURL;    } else if (window.PasswordCredential != null && credentials instanceof PasswordCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.password = credentials.password;      credentialsObj.iconURL = credentials.iconURL;    } else {      credentialsObj.type = \'default\';      credentialsObj.value = credentials;    }  }  function convertJsonToCredential(credentialsJson) {    var credentials;    if (window.FederatedCredential != null && credentialsJson.type === \'federated\') {      credentials = new FederatedCredential({        id: credentialsJson.id,        name: credentialsJson.name,        protocol: credentialsJson.protocol,        provider: credentialsJson.provider,        iconURL: credentialsJson.iconURL      });    } else if (window.PasswordCredential != null && credentialsJson.type === \'password\') {      credentials = new PasswordCredential({        id: credentialsJson.id,        name: credentialsJson.name,        password: credentialsJson.password,        iconURL: credentialsJson.iconURL      });    } else {      credentials = credentialsJson;    }    return credentials;  }  window.fetch = async function(resource, init) {    if (window.window._flutter_inappwebview_useShouldInterceptFetchRequest == null || window.window._flutter_inappwebview_useShouldInterceptFetchRequest == true) {      var fetchRequest = {        url: null,        method: null,        headers: null,        body: null,        mode: null,        credentials: null,        cache: null,        redirect: null,        referrer: null,        referrerPolicy: null,        integrity: null,        keepalive: null      };      if (resource instanceof Request) {        fetchRequest.url = resource.url;        fetchRequest.method = resource.method;        fetchRequest.headers = resource.headers;        fetchRequest.body = resource.body;        fetchRequest.mode = resource.mode;        fetchRequest.credentials = resource.credentials;        fetchRequest.cache = resource.cache;        fetchRequest.redirect = resource.redirect;        fetchRequest.referrer = resource.referrer;        fetchRequest.referrerPolicy = resource.referrerPolicy;        fetchRequest.integrity = resource.integrity;        fetchRequest.keepalive = resource.keepalive;      } else {        fetchRequest.url = resource;        if (init != null) {          fetchRequest.method = init.method;          fetchRequest.headers = init.headers;          fetchRequest.body = init.body;          fetchRequest.mode = init.mode;          fetchRequest.credentials = init.credentials;          fetchRequest.cache = init.cache;          fetchRequest.redirect = init.redirect;          fetchRequest.referrer = init.referrer;          fetchRequest.referrerPolicy = init.referrerPolicy;          fetchRequest.integrity = init.integrity;          fetchRequest.keepalive = init.keepalive;        }      }      if (fetchRequest.headers instanceof Headers) {        fetchRequest.headers = convertHeadersToJson(fetchRequest.headers);      }      fetchRequest.credentials = convertCredentialsToJson(fetchRequest.credentials);      return convertBodyToArray(fetchRequest.body).then(function(body) {        fetchRequest.body = body;        return window.flutter_inappwebview.callHandler(\'shouldInterceptFetchRequest\', fetchRequest).then(function(result) {          if (result != null) {            switch (result.action) {              case 0:                var controller = new AbortController();                if (init != null) {                  init.signal = controller.signal;                } else {                  init = {                    signal: controller.signal                  };                }                controller.abort();                break;            }            resource = (result.url != null) ? result.url : resource;            if (init == null) {              init = {};            }            if (result.method != null && result.method.length > 0) {              init.method = result.method;            }            if (result.headers != null && Object.keys(result.headers).length > 0) {              init.headers = convertJsonToHeaders(result.headers);            }            if (result.body != null && result.body.length > 0)   {              init.body = convertArrayIntBodyToUint8Array(result.body);            }            if (result.mode != null && result.mode.length > 0) {              init.mode = result.mode;            }            if (result.credentials != null) {              init.credentials = convertJsonToCredential(result.credentials);            }            if (result.cache != null && result.cache.length > 0) {              init.cache = result.cache;            }            if (result.redirect != null && result.redirect.length > 0) {              init.redirect = result.redirect;            }            if (result.referrer != null && result.referrer.length > 0) {              init.referrer = result.referrer;            }            if (result.referrerPolicy != null && result.referrerPolicy.length > 0) {              init.referrerPolicy = result.referrerPolicy;            }            if (result.integrity != null && result.integrity.length > 0) {              init.integrity = result.integrity;            }            if (result.keepalive != null) {              init.keepalive = result.keepalive;            }            return fetch(resource, init);          }          return fetch(resource, init);        });      });    } else {      return fetch(resource, init);    }  };})(window.fetch);"

.field static final isActiveElementInputEditableJS:Ljava/lang/String; = "var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : \'\';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == \'textarea\' || (nodeName == \'input\' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : \'text\')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === \'on\';"

.field static mHandler:Landroid/os/Handler; = null

.field static final onWindowBlurEventJS:Ljava/lang/String; = "(function(){  window.addEventListener(\'blur\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowBlur\');  });})();"

.field static final onWindowFocusEventJS:Ljava/lang/String; = "(function(){  window.addEventListener(\'focus\', function(e) {    window.flutter_inappwebview.callHandler(\'onWindowFocus\');  });})();"

.field static final platformReadyJS:Ljava/lang/String; = "(function() {  if (window.flutter_inappwebview._platformReady == null) {    window.dispatchEvent(new Event(\'flutterInAppWebViewPlatformReady\'));    window.flutter_inappwebview._platformReady = true;  }})();"

.field static final printJS:Ljava/lang/String; = "window.print = function() {  window.flutter_inappwebview.callHandler(\'onPrint\', window.location.href);};"

.field static final resourceObserverJS:Ljava/lang/String; = "(function() {   var observer = new PerformanceObserver(function(list) {       list.getEntries().forEach(function(entry) {         if (window.window._flutter_inappwebview_useOnLoadResource == null || window.window._flutter_inappwebview_useOnLoadResource == true) {           window.flutter_inappwebview.callHandler(\'onLoadResource\', entry);         }       });   });   observer.observe({entryTypes: [\'resource\']});})();"

.field static final scriptsWrapperJS:Ljava/lang/String; = "(function(){  if (window.flutter_inappwebview._scriptsLoaded == null) {    $PLACEHOLDER_VALUE    window.flutter_inappwebview._scriptsLoaded = true;  }})();"

.field static final variableForOnLoadResourceJS:Ljava/lang/String; = "window._flutter_inappwebview_useOnLoadResource"

.field static final variableForShouldInterceptAjaxRequestJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptAjaxRequest"

.field static final variableForShouldInterceptFetchRequestsJS:Ljava/lang/String; = "window._flutter_inappwebview_useShouldInterceptFetchRequest"


# instance fields
.field public channel:Lg/a/c/a/k;

.field public checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

.field public checkScrollStoppedTask:Ljava/lang/Runnable;

.field public contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

.field public contextMenu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public floatingContextMenu:Landroid/widget/LinearLayout;

.field public flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

.field private g:Landroid/graphics/Point;

.field public gestureDetector:Landroid/view/GestureDetector;

.field private h:Landroid/graphics/Point;

.field public headlessHandler:Landroid/os/Handler;

.field public httpClient:Li/w;

.field public id:Ljava/lang/Object;

.field public inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

.field public inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;

.field public inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

.field public inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;

.field public initialPositionScrollStoppedTask:I

.field public isLoading:Z

.field public javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/i;

.field public newCheckContextMenuShouldBeClosedTaskTask:I

.field public newCheckScrollStoppedTask:I

.field okHttpClientCacheSize:I

.field public options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

.field public regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

.field public scale:F

.field public windowId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 v0, 0xa00000

    .line 4
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 5
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 7
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 8
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 10
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 11
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 12
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->g:Landroid/graphics/Point;

    .line 13
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 p2, 0xa00000

    .line 17
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 18
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-direct {p2}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 20
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 21
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 22
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    .line 23
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 24
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 25
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->g:Landroid/graphics/Point;

    .line 26
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 29
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 p2, 0xa00000

    .line 30
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 31
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-direct {p2}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;-><init>()V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 33
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 34
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 35
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    .line 36
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 37
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 38
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->g:Landroid/graphics/Point;

    .line 39
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;Ljava/util/Map;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    .line 42
    invoke-virtual {p0}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p7

    iget p7, p7, Landroid/util/DisplayMetrics;->density:F

    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    const/high16 p7, 0xa00000

    .line 43
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->okHttpClientCacheSize:I

    .line 44
    new-instance p7, Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-direct {p7}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;-><init>()V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    const/4 p7, 0x0

    .line 45
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 46
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 47
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 48
    new-instance p7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/16 p7, 0x64

    .line 49
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckScrollStoppedTask:I

    .line 50
    iput p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->newCheckContextMenuShouldBeClosedTaskTask:I

    .line 51
    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->g:Landroid/graphics/Point;

    .line 52
    new-instance p7, Landroid/graphics/Point;

    invoke-direct {p7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    .line 53
    instance-of p1, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_0

    .line 54
    check-cast p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_0

    .line 55
    :cond_0
    instance-of p1, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    if-eqz p1, :cond_1

    .line 56
    check-cast p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    .line 57
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->channel:Lg/a/c/a/k;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;->f:Lg/a/c/a/k;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lg/a/c/a/k;

    .line 58
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->id:Ljava/lang/Object;

    .line 59
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 60
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    .line 61
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 62
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$p;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$p;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->g:Landroid/graphics/Point;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v3, "uuid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "hitTestResult"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lg/a/c/a/k;

    const-string v2, "onCreateContextMenu"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static getCertificateMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslCertificate;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CName"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DName"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "OName"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    .line 9
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_0

    .line 18
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/r;->a(Landroid/net/http/SslCertificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    .line 20
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "issuedBy"

    .line 21
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "issuedTo"

    .line 22
    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "validNotAfterDate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "validNotBeforeDate"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "x509Certificate"

    .line 25
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public adjustFloatingContextMenuPosition()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$f;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$f;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    const-string v1, "(function(){  var selection = window.getSelection();  var rangeY = null;  if (selection != null && selection.rangeCount > 0) {    var range = selection.getRangeAt(0);    var clientRect = range.getClientRects();    if (clientRect.length > 0) {      rangeY = clientRect[0].y;    } else if (document.activeElement) {      var boundingClientRect = document.activeElement.getBoundingClientRect();      rangeY = boundingClientRect.y;    }  }  return rangeY;})();"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public clearAllCache()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->a()V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    .line 4
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;->m:Ljava/util/Map;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "flutter_inappwebview"

    .line 5
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 7
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    :cond_2
    invoke-super {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->dispose()V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public getCertificateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap(Landroid/net/http/SslCertificate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCopyBackForwardList()Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 5
    invoke-virtual {v0, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    .line 6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "originalUrl"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v7, "url"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "history"

    .line 12
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "currentIndex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSelectedText(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$g;

    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$g;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Landroid/webkit/ValueCallback;)V

    const-string p1, "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();"

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getSelectedText(Lg/a/c/a/k$d;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 2
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$h;

    invoke-direct {v0, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$h;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Lg/a/c/a/k$d;)V

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSelectedText(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getUpdatedScale()Ljava/lang/Float;
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hideContextMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onHideContextMenu()V

    return-void
.end method

.method public injectCSSCode(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document);"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public injectCSSFileFromUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document);"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 5
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$r;

    invoke-direct {v0, p0, p1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$r;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lg/a/c/a/k$d;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public injectJavascriptFileFromUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document);"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 6

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p6, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public loadFile(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 3

    const-string v0, "InAppWebView"

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v1, "url is empty"

    .line 5
    invoke-interface {p2, v0, v1, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " asset file cannot be found!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadFile(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lg/a/c/a/k$d;",
            ")V"
        }
    .end annotation

    const-string v0, "InAppWebView"

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "url is empty"

    .line 11
    invoke-interface {p3, v0, p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p2

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " asset file cannot be found!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1, p2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, "InAppWebView"

    const-string v1, "url is empty"

    .line 4
    invoke-interface {p2, v0, v1, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Lg/a/c/a/k$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lg/a/c/a/k$d;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppWebView"

    const-string v0, "url is empty"

    .line 8
    invoke-interface {p3, p2, v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 2
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->b()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InputAwareWebView;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$a;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    const-wide/16 v2, 0x80

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p1
.end method

.method public onFloatingActionGlobalLayout(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    .line 3
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 5
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr p1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int v3, p1, v1

    if-le v3, v0, :cond_1

    sub-int p1, v0, v1

    :cond_1
    :goto_0
    int-to-float v0, p2

    int-to-float v1, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    add-int/2addr p2, v2

    int-to-float v0, p2

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    float-to-int v0, v0

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2, p1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 8
    invoke-virtual {p0, p2, v1}, Landroid/webkit/WebView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$e;

    invoke-direct {p2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$e;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHideContextMenu()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lg/a/c/a/k;

    const-string v2, "onHideContextMenu"

    invoke-virtual {v1, v2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    int-to-float p1, p1

    .line 2
    iget p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scale:F

    div-float/2addr p1, p3

    float-to-int p1, p1

    int-to-float p2, p2

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 3
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 4
    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 5
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    const/16 p4, 0x8

    invoke-virtual {p3, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 7
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    if-eqz p4, :cond_1

    .line 8
    iget-object p4, p4, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->uuid:Ljava/lang/String;

    const-string v0, "uuid"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "x"

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "y"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lg/a/c/a/k;

    const-string p2, "onScrollChanged"

    invoke-virtual {p1, p2, p3}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onScrollStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->adjustFloatingContextMenuPosition()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public postUrl(Ljava/lang/String;[BLg/a/c/a/k$d;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppWebView"

    const-string v0, "url is empty"

    .line 4
    invoke-interface {p3, p2, v0, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public prepare()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v3, Li/w;

    invoke-direct {v3}, Li/w;-><init>()V

    invoke-virtual {v3}, Li/w;->D()Li/w$b;

    move-result-object v3

    invoke-virtual {v3}, Li/w$b;->a()Li/w;

    move-result-object v3

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->httpClient:Li/w;

    .line 3
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/i;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    :goto_1
    invoke-direct {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/i;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/i;

    .line 4
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/i;

    const-string v4, "flutter_inappwebview"

    invoke-virtual {p0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    :goto_2
    invoke-direct {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;

    .line 6
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/e;

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 7
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    :goto_3
    invoke-direct {v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    .line 8
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/f;

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_5

    const-string v3, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    invoke-static {v3}, Landroidx/webkit/WebViewFeature;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 10
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/c;

    :goto_4
    invoke-direct {v3, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;

    .line 11
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewRenderProcessClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/h;

    invoke-static {p0, v0}, Landroidx/webkit/b;->a(Landroid/webkit/WebView;Landroidx/webkit/d;)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$s;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$s;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 14
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 15
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_7

    .line 17
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 18
    :cond_7
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 19
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->B:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 20
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->C:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 21
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m0:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v3, v6, :cond_8

    .line 23
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->G:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    .line 24
    :cond_8
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 25
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->D:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 26
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->E:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 27
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    const/16 v7, 0x11

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 28
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_5

    .line 29
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_a

    .line 30
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 31
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 32
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_c

    .line 33
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 34
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 36
    :cond_c
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    goto :goto_7

    .line 38
    :cond_d
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->A:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 39
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 40
    :cond_e
    :goto_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_f

    .line 41
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v8, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v8, v8, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3, p0, v8}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 42
    :cond_f
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a0:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 43
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->F:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 44
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 45
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 46
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 47
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 48
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v3, v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 49
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 50
    :cond_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_13

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->H:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 51
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 52
    :cond_13
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->I:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 53
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->J:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 54
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->K:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 55
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->L:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 56
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setCacheEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 58
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 59
    :cond_14
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->N:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 60
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->O:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 61
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 63
    :cond_15
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 65
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 66
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_16

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->U:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    .line 69
    :cond_16
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_17

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    .line 73
    :cond_17
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Y:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 74
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eqz v1, :cond_19

    .line 75
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_18

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings$LayoutAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 76
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_a

    .line 77
    :cond_18
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 78
    :cond_19
    :goto_a
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b0:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 79
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 80
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 81
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 82
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e0:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 83
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1a

    .line 84
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f0:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    .line 85
    :cond_1a
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    if-eqz v1, :cond_1b

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;

    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;->toValue()I

    move-result v3

    if-ne v1, v3, :cond_1b

    .line 90
    invoke-virtual {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDesktopMode(Z)V

    .line 91
    :cond_1b
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j0:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 92
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 93
    invoke-virtual {p0, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setIncognito(Z)V

    .line 94
    :cond_1c
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_b

    .line 96
    :cond_1d
    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 97
    :goto_b
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 98
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 99
    :cond_1e
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 100
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarDefaultDelayBeforeFade(I)V

    goto :goto_c

    .line 102
    :cond_1f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    .line 103
    :goto_c
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 105
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarFadeDuration(I)V

    goto :goto_d

    .line 106
    :cond_20
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollBarFadeDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    .line 107
    :goto_d
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollbarPosition(I)V

    .line 108
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 109
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p0:Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 110
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 111
    :cond_21
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    const-string v1, "waivedWhenNotVisible"

    const-string v2, "rendererRequestedPriority"

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_22

    .line 112
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    .line 113
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    .line 114
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 115
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->setRendererPriorityPolicy(IZ)V

    goto :goto_e

    .line 116
    :cond_22
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    if-eqz v0, :cond_23

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_24

    .line 117
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRendererRequestedPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_24
    :goto_e
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "trigger"

    .line 121
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/b/e;

    move-result-object v2

    const-string v3, "action"

    .line 122
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/b/b;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/b/b;

    move-result-object v1

    .line 123
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/b/a;

    invoke-direct {v4, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/b/a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/b/e;Lcom/pichillilorenzo/flutter_inappwebview/b/b;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 124
    :cond_25
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$j;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$j;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 125
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$k;

    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$k;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->gestureDetector:Landroid/view/GestureDetector;

    .line 126
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$l;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkScrollStoppedTask:Ljava/lang/Runnable;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_26

    .line 128
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$m;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    .line 129
    :cond_26
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$n;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$n;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$o;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$o;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public printCurrentPage()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/q;->f:Landroid/app/Activity;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Document"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 5
    invoke-virtual {v3}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    :cond_0
    return-void
.end method

.method public rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 16

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->hideContextMenu()V

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v10

    .line 4
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v10}, Landroid/view/Menu;->clear()V

    return-object p1

    .line 6
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/n;->floating_action_mode:I

    .line 7
    invoke-virtual {v0, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 9
    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;-><init>()V

    .line 12
    iget-object v2, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    if-eqz v2, :cond_3

    const-string v0, "menuItems"

    .line 13
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 14
    iget-object v2, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    const-string v3, "options"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;

    :cond_3
    if-nez v0, :cond_4

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v12, v0

    .line 17
    iget-object v0, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/a;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    const/4 v13, 0x0

    .line 18
    :goto_1
    invoke-interface {v10}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge v13, v0, :cond_7

    .line 19
    invoke-interface {v10, v13}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 20
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    .line 21
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/n;->floating_action_mode_item:I

    .line 23
    invoke-virtual {v0, v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 24
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v15, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$b;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$b;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Landroid/view/ActionMode$Callback;Landroid/view/ActionMode;Landroid/view/MenuItem;ILjava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 27
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 28
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "androidId"

    .line 29
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "title"

    .line 30
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/pichillilorenzo/flutter_inappwebview/n;->floating_action_mode_item:I

    .line 32
    invoke-virtual {v3, v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 33
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$c;

    invoke-direct {v4, v7, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$c;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    .line 36
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 37
    :cond_9
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    if-eqz v0, :cond_a

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 38
    :goto_3
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->h:Landroid/graphics/Point;

    if-eqz v1, :cond_b

    iget v8, v1, Landroid/graphics/Point;->y:I

    .line 39
    :cond_b
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->g:Landroid/graphics/Point;

    .line 40
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_d

    .line 41
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;

    invoke-direct {v2, v7, v0, v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$d;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 42
    iget-object v1, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->floatingContextMenu:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3, v0, v8}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v7, v1, v2}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v9, :cond_c

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->b()V

    .line 44
    :cond_c
    iget-object v0, v7, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->checkContextMenuShouldBeClosedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 45
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_d
    invoke-interface {v10}, Landroid/view/Menu;->clear()V

    return-object p1
.end method

.method public reload()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public requestFocusNodeHref()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "src"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    .line 6
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "title"

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public requestImageRef()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestImageRef(Landroid/os/Message;)V

    .line 3
    invoke-virtual {v0}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array v0, p3, [I

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    const/4 p1, 0x0

    aput v1, v0, p1

    const-string v1, "scrollX"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, p3, [I

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr v2, p2

    aput v2, v1, p1

    const-string p2, "scrollY"

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, p1

    aput-object p2, v1, p3

    .line 4
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    new-array v0, p3, [I

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "scrollX"

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array v0, p3, [I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v0, v1

    const-string p2, "scrollY"

    invoke-static {p2, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v0, v1

    aput-object p2, v0, p3

    .line 4
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public setCacheEnabled(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "Android"

    const-string v2, "diordnA"

    const-string v3, "Mobile"

    const-string v4, "eliboM"

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public setIncognito(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    .line 3
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    const/4 p1, 0x2

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 8
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    .line 10
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 12
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :goto_1
    return-void
.end method

.method public setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "javaScriptEnabled"

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    const-string v1, "debuggingEnabled"

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_1
    const-string v1, "useShouldInterceptAjaxRequest"

    .line 6
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "javascript:"

    const-string v4, "$PLACEHOLDER_VALUE"

    const-string v5, "true"

    const-string v6, "false"

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_4

    .line 7
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v1, v6

    :goto_0
    const-string v8, "window._flutter_inappwebview_useShouldInterceptAjaxRequest = $PLACEHOLDER_VALUE;"

    .line 8
    invoke-virtual {v8, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 9
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_3

    .line 10
    invoke-virtual {p0, v1, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v1, "useShouldInterceptFetchRequest"

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_7

    .line 13
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_2

    :cond_5
    move-object v1, v6

    :goto_2
    const-string v8, "window._flutter_inappwebview_useShouldInterceptFetchRequest = $PLACEHOLDER_VALUE;"

    .line 14
    invoke-virtual {v8, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 15
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_6

    .line 16
    invoke-virtual {p0, v1, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_3

    .line 17
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string v1, "useOnLoadResource"

    .line 18
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b:Ljava/lang/Boolean;

    iget-object v8, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_a

    .line 19
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v5, v6

    :goto_4
    const-string v1, "window._flutter_inappwebview_useOnLoadResource = $PLACEHOLDER_VALUE;"

    .line 20
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 21
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_9

    .line 22
    invoke-virtual {p0, v1, v7}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_5

    .line 23
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v1, "javaScriptCanOpenWindowsAutomatically"

    .line 24
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_b

    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    :cond_b
    const-string v1, "builtInZoomControls"

    .line 26
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->B:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->B:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_c

    .line 27
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :cond_c
    const-string v1, "displayZoomControls"

    .line 28
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->C:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->C:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_d

    .line 29
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_d
    const-string v1, "safeBrowsingEnabled"

    .line 30
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1a

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->G:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->G:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_e

    .line 31
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    :cond_e
    const-string v1, "mediaPlaybackRequiresUserGesture"

    .line 32
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_f

    .line 33
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_f
    const-string v1, "databaseEnabled"

    .line 34
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->D:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->D:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_10

    .line 35
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    :cond_10
    const-string v1, "domStorageEnabled"

    .line 36
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->E:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->E:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_11

    .line 37
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    :cond_11
    const-string v1, "userAgent"

    .line 38
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 39
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_12
    const-string v1, "applicationNameForUserAgent"

    .line 40
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_14

    .line 42
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e:Ljava/lang/String;

    goto :goto_6

    :cond_13
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_14
    const-string v1, "clearCache"

    .line 45
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 46
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    goto :goto_7

    :cond_15
    const-string v1, "clearSessionCache"

    .line 47
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->A:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 48
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    :cond_16
    :goto_7
    const-string v1, "thirdPartyCookiesEnabled"

    .line 49
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x15

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_17

    .line 50
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k0:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v1, p0, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_17
    const-string v1, "useWideViewPort"

    .line 51
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->F:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->F:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_18

    .line 52
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    :cond_18
    const-string v1, "supportZoom"

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->y:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_19

    .line 54
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    :cond_19
    const-string v1, "textZoom"

    .line 55
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    invoke-virtual {v1, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 56
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->z:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    :cond_1a
    const-string v1, "verticalScrollBarEnabled"

    .line 57
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_1b

    .line 58
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_1b
    const-string v1, "horizontalScrollBarEnabled"

    .line 59
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    iget-object v5, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_1c

    .line 60
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    :cond_1c
    const-string v1, "transparentBackground"

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u:Ljava/lang/Boolean;

    if-eq v1, v6, :cond_1e

    .line 62
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 63
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_8

    :cond_1d
    const-string v1, "#FFFFFF"

    .line 64
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 65
    :cond_1e
    :goto_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_20

    const-string v1, "mixedContentMode"

    .line 66
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->H:Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->H:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 67
    :cond_1f
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->H:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_20
    const-string v1, "supportMultipleWindows"

    .line 68
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m0:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m0:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_21

    .line 69
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    :cond_21
    const-string v1, "useOnDownloadStart"

    .line 70
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_23

    .line 71
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 72
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$s;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$s;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_9

    .line 73
    :cond_22
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_23
    :goto_9
    const-string v1, "allowContentAccess"

    .line 74
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->I:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->I:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_24

    .line 75
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_24
    const-string v1, "allowFileAccess"

    .line 76
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->J:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->J:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_25

    .line 77
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :cond_25
    const-string v1, "allowFileAccessFromFileURLs"

    .line 78
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->K:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->K:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_26

    .line 79
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_26
    const-string v1, "allowUniversalAccessFromFileURLs"

    .line 80
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->L:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->L:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_27

    .line 81
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_27
    const-string v1, "cacheEnabled"

    .line 82
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_28

    .line 83
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setCacheEnabled(Z)V

    :cond_28
    const-string v1, "appCachePath"

    .line 84
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    if-eqz v1, :cond_29

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 85
    :cond_29
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    :cond_2a
    const-string v1, "blockNetworkImage"

    .line 86
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->N:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->N:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_2b

    .line 87
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    :cond_2b
    const-string v1, "blockNetworkLoads"

    .line 88
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->O:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->O:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_2c

    .line 89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    :cond_2c
    const-string v1, "cacheMode"

    .line 90
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 91
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->P:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :cond_2d
    const-string v1, "cursiveFontFamily"

    .line 92
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 93
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCursiveFontFamily(Ljava/lang/String;)V

    :cond_2e
    const-string v1, "defaultFixedFontSize"

    .line 94
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 95
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->R:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    :cond_2f
    const-string v1, "defaultFontSize"

    .line 96
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 97
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->S:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    :cond_30
    const-string v1, "defaultTextEncodingName"

    .line 98
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 99
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 100
    :cond_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_33

    const-string v1, "disabledActionModeMenuItems"

    .line 101
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->U:Ljava/lang/Integer;

    if-eqz v1, :cond_32

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->U:Ljava/lang/Integer;

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 103
    :cond_32
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->U:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisabledActionModeMenuItems(I)V

    :cond_33
    const-string v1, "fantasyFontFamily"

    .line 104
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 105
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFantasyFontFamily(Ljava/lang/String;)V

    :cond_34
    const-string v1, "fixedFontFamily"

    .line 106
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 107
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setFixedFontFamily(Ljava/lang/String;)V

    :cond_35
    const-string v1, "forceDark"

    .line 108
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v1, v4, :cond_36

    .line 110
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->X:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setForceDark(I)V

    :cond_36
    const-string v1, "geolocationEnabled"

    .line 111
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Y:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Y:Ljava/lang/Boolean;

    if-eq v1, v4, :cond_37

    .line 112
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    :cond_37
    const-string v1, "layoutAlgorithm"

    .line 113
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v1, v4, :cond_39

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_38

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 115
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_a

    .line 116
    :cond_38
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->Z:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :cond_39
    :goto_a
    const-string v1, "loadWithOverviewMode"

    .line 117
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a0:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->a0:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3a

    .line 118
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_3a
    const-string v1, "loadsImagesAutomatically"

    .line 119
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b0:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->b0:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3b

    .line 120
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    :cond_3b
    const-string v1, "minimumFontSize"

    .line 121
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 122
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    :cond_3c
    const-string v1, "minimumLogicalFontSize"

    .line 123
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 124
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->c0:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    :cond_3d
    const-string v1, "initialScale"

    .line 125
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 126
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->d0:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    :cond_3e
    const-string v1, "needInitialFocus"

    .line 127
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e0:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->e0:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_3f

    .line 128
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    :cond_3f
    const-string v1, "offscreenPreRaster"

    .line 129
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f0:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->f0:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_40

    .line 130
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_40

    .line 131
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    :cond_40
    const-string v1, "sansSerifFontFamily"

    .line 132
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 133
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSansSerifFontFamily(Ljava/lang/String;)V

    :cond_41
    const-string v1, "serifFontFamily"

    .line 134
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 135
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->h0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSerifFontFamily(Ljava/lang/String;)V

    :cond_42
    const-string v1, "standardFontFamily"

    .line 136
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 137
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setStandardFontFamily(Ljava/lang/String;)V

    :cond_43
    const-string v1, "preferredContentMode"

    .line 138
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 139
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$i;->a:[I

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;->fromValue(I)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/i;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v4, :cond_45

    if-eq v1, v2, :cond_44

    const/4 v6, 0x3

    if-eq v1, v6, :cond_44

    goto :goto_b

    .line 140
    :cond_44
    invoke-virtual {p0, v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDesktopMode(Z)V

    goto :goto_b

    .line 141
    :cond_45
    invoke-virtual {p0, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setDesktopMode(Z)V

    :cond_46
    :goto_b
    const-string v1, "saveFormData"

    .line 142
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j0:Ljava/lang/Boolean;

    iget-object v6, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->j0:Ljava/lang/Boolean;

    if-eq v1, v6, :cond_47

    .line 143
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :cond_47
    const-string v0, "incognito"

    .line 144
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_48

    .line 145
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setIncognito(Z)V

    :cond_48
    const-string v0, "hardwareAcceleration"

    .line 146
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l0:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l0:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_4a

    .line 147
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 148
    invoke-virtual {p0, v2, v7}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_c

    .line 149
    :cond_49
    invoke-virtual {p0, v4, v7}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4a
    :goto_c
    const-string v0, "regexToCancelSubFramesLoading"

    .line 150
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 152
    :cond_4b
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 153
    iput-object v7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    goto :goto_d

    .line 154
    :cond_4c
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->n0:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->regexToCancelSubFramesLoadingCompiled:Ljava/util/regex/Pattern;

    .line 155
    :cond_4d
    :goto_d
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o:Ljava/util/List;

    if-eqz v0, :cond_4e

    .line 156
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "trigger"

    .line 158
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/pichillilorenzo/flutter_inappwebview/b/e;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/b/e;

    move-result-object v2

    const-string v6, "action"

    .line 159
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/b/b;->a(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/b/b;

    move-result-object v1

    .line 160
    iget-object v6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contentBlockerHandler:Lcom/pichillilorenzo/flutter_inappwebview/b/d;

    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview/b/d;->a()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/pichillilorenzo/flutter_inappwebview/b/a;

    invoke-direct {v7, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/b/a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/b/e;Lcom/pichillilorenzo/flutter_inappwebview/b/b;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_4e
    const-string v0, "scrollBarStyle"

    .line 161
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 162
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->q0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    :cond_4f
    const-string v0, "scrollBarDefaultDelayBeforeFade"

    .line 163
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    if-eqz v0, :cond_50

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 165
    :cond_50
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->s0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarDefaultDelayBeforeFade(I)V

    :cond_51
    const-string v0, "scrollbarFadingEnabled"

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 167
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->t0:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    :cond_52
    const-string v0, "scrollBarFadeDuration"

    .line 168
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    if-eqz v0, :cond_53

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 170
    :cond_53
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->u0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollBarFadeDuration(I)V

    :cond_54
    const-string v0, "verticalScrollbarPosition"

    .line 171
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 172
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->r0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollbarPosition(I)V

    :cond_55
    const-string v0, "disableVerticalScroll"

    .line 173
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_57

    .line 174
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x1

    goto :goto_f

    :cond_56
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_57
    const-string v0, "disableHorizontalScroll"

    .line 175
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->w:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_59

    .line 176
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_10

    :cond_58
    const/4 v4, 0x0

    :goto_10
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    :cond_59
    const-string v0, "overScrollMode"

    .line 177
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 178
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->o0:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    :cond_5a
    const-string v0, "networkAvailable"

    .line 179
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p0:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->p0:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_5b

    .line 180
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    :cond_5b
    const-string v0, "rendererPriorityPolicy"

    .line 181
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5d

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    const-string v0, "rendererRequestedPriority"

    .line 182
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "waivedWhenNotVisible"

    if-ne p2, v1, :cond_5c

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    .line 183
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq p2, v1, :cond_5d

    :cond_5c
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_5d

    .line 184
    iget-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    .line 185
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;->v0:Ljava/util/Map;

    .line 186
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 187
    invoke-virtual {p0, p2, v0}, Landroid/webkit/WebView;->setRendererPriorityPolicy(IZ)V

    .line 188
    :cond_5d
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/g;

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->rebuildActionMode(Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public takeScreenshot(Lg/a/c/a/k$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->headlessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$q;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$q;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Lg/a/c/a/k$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
