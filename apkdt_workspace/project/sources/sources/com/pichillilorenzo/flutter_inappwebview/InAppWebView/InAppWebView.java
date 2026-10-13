package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.net.http.SslCertificate;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.print.PrintAttributes;
import android.print.PrintManager;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.AbsoluteLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebViewFeature;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import g.a.c.a.k;
import i.w;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class InAppWebView extends InputAwareWebView {
    static final String LOG_TAG = "InAppWebView";
    static final String checkContextMenuShouldBeHiddenJS = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : '';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == 'textarea' || (nodeName == 'input' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : 'text')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === 'on';  return txt === '' && !isActiveElementEditable;})();";
    static final String checkGlobalKeyDownEventToHideContextMenuJS = "(function(){  document.addEventListener('keydown', function(e) {    window.flutter_inappwebview._hideContextMenu();  });})();";
    static final String consoleLogJS = "(function(console) {   var oldLogs = {       'log': console.log,       'debug': console.debug,       'error': console.error,       'info': console.info,       'warn': console.warn   };   for (var k in oldLogs) {       (function(oldLog) {           console[oldLog] = function() {               var message = '';               for (var i in arguments) {                   if (message == '') {                       message += arguments[i];                   }                   else {                       message += ' ' + arguments[i];                   }               }               oldLogs[oldLog].call(console, message);           }       })(k);   }})(window.console);";
    static final String enableVariableForOnLoadResourceJS = "window._flutter_inappwebview_useOnLoadResource = $PLACEHOLDER_VALUE;";
    static final String enableVariableForShouldInterceptAjaxRequestJS = "window._flutter_inappwebview_useShouldInterceptAjaxRequest = $PLACEHOLDER_VALUE;";
    static final String enableVariableForShouldInterceptFetchRequestsJS = "window._flutter_inappwebview_useShouldInterceptFetchRequest = $PLACEHOLDER_VALUE;";
    static final String getSelectedTextJS = "(function(){  var txt;  if (window.getSelection) {    txt = window.getSelection().toString();  } else if (window.document.getSelection) {    txt = window.document.getSelection().toString();  } else if (window.document.selection) {    txt = window.document.selection.createRange().text;  }  return txt;})();";
    static final String interceptAjaxRequestsJS = "(function(ajax) {  var send = ajax.prototype.send;  var open = ajax.prototype.open;  var setRequestHeader = ajax.prototype.setRequestHeader;  ajax.prototype._flutter_inappwebview_url = null;  ajax.prototype._flutter_inappwebview_method = null;  ajax.prototype._flutter_inappwebview_isAsync = null;  ajax.prototype._flutter_inappwebview_user = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_password = null;  ajax.prototype._flutter_inappwebview_already_onreadystatechange_wrapped = false;  ajax.prototype._flutter_inappwebview_request_headers = {};  function convertRequestResponse(request, callback) {    if (request.response != null && request.responseType != null) {      switch (request.responseType) {        case 'arraybuffer':          callback(new Uint8Array(request.response));          return;        case 'blob':          const reader = new FileReader();          reader.addEventListener('loadend', function() {              callback(new Uint8Array(reader.result));          });          reader.readAsArrayBuffer(blob);          return;        case 'document':          callback(request.response.documentElement.outerHTML);          return;        case 'json':          callback(request.response);          return;      };    }    callback(null);  };  ajax.prototype.open = function(method, url, isAsync, user, password) {    isAsync = (isAsync != null) ? isAsync : true;    this._flutter_inappwebview_url = url;    this._flutter_inappwebview_method = method;    this._flutter_inappwebview_isAsync = isAsync;    this._flutter_inappwebview_user = user;    this._flutter_inappwebview_password = password;    this._flutter_inappwebview_request_headers = {};    open.call(this, method, url, isAsync, user, password);  };  ajax.prototype.setRequestHeader = function(header, value) {    this._flutter_inappwebview_request_headers[header] = value;    setRequestHeader.call(this, header, value);  };  function handleEvent(e) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      var headers = this.getAllResponseHeaders();      var responseHeaders = {};      if (headers != null) {        var arr = headers.trim().split(/[\\r\\n]+/);        arr.forEach(function (line) {          var parts = line.split(': ');          var header = parts.shift();          var value = parts.join(': ');          responseHeaders[header] = value;        });      }      convertRequestResponse(this, function(response) {        var ajaxRequest = {          method: self._flutter_inappwebview_method,          url: self._flutter_inappwebview_url,          isAsync: self._flutter_inappwebview_isAsync,          user: self._flutter_inappwebview_user,          password: self._flutter_inappwebview_password,          withCredentials: self.withCredentials,          headers: self._flutter_inappwebview_request_headers,          readyState: self.readyState,          status: self.status,          responseURL: self.responseURL,          responseType: self.responseType,          response: response,          responseText: (self.responseType == 'text' || self.responseType == '') ? self.responseText : null,          responseXML: (self.responseType == 'document' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,          statusText: self.statusText,          responseHeaders, responseHeaders,          event: {            type: e.type,            loaded: e.loaded,            lengthComputable: e.lengthComputable,            total: e.total          }        };        window.flutter_inappwebview.callHandler('onAjaxProgress', ajaxRequest).then(function(result) {          if (result != null) {            switch (result) {              case 0:                self.abort();                return;            };          }        });      });    }  };  ajax.prototype.send = function(data) {    var self = this;    if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {      if (!this._flutter_inappwebview_already_onreadystatechange_wrapped) {        this._flutter_inappwebview_already_onreadystatechange_wrapped = true;        var onreadystatechange = this.onreadystatechange;        this.onreadystatechange = function() {          if (window._flutter_inappwebview_useShouldInterceptAjaxRequest == null || window._flutter_inappwebview_useShouldInterceptAjaxRequest == true) {            var headers = this.getAllResponseHeaders();            var responseHeaders = {};            if (headers != null) {              var arr = headers.trim().split(/[\\r\\n]+/);              arr.forEach(function (line) {                var parts = line.split(': ');                var header = parts.shift();                var value = parts.join(': ');                responseHeaders[header] = value;              });            }            convertRequestResponse(this, function(response) {              var ajaxRequest = {                method: self._flutter_inappwebview_method,                url: self._flutter_inappwebview_url,                isAsync: self._flutter_inappwebview_isAsync,                user: self._flutter_inappwebview_user,                password: self._flutter_inappwebview_password,                withCredentials: self.withCredentials,                headers: self._flutter_inappwebview_request_headers,                readyState: self.readyState,                status: self.status,                responseURL: self.responseURL,                responseType: self.responseType,                response: response,                responseText: (self.responseType == 'text' || self.responseType == '') ? self.responseText : null,                responseXML: (self.responseType == 'document' && self.responseXML != null) ? self.responseXML.documentElement.outerHTML : null,                statusText: self.statusText,                responseHeaders: responseHeaders              };              window.flutter_inappwebview.callHandler('onAjaxReadyStateChange', ajaxRequest).then(function(result) {                if (result != null) {                  switch (result) {                    case 0:                      self.abort();                      return;                  };                }                if (onreadystatechange != null) {                  onreadystatechange();                }              });            });          } else if (onreadystatechange != null) {            onreadystatechange();          }        };      }      this.addEventListener('loadstart', handleEvent);      this.addEventListener('load', handleEvent);      this.addEventListener('loadend', handleEvent);      this.addEventListener('progress', handleEvent);      this.addEventListener('error', handleEvent);      this.addEventListener('abort', handleEvent);      this.addEventListener('timeout', handleEvent);      var ajaxRequest = {        data: data,        method: this._flutter_inappwebview_method,        url: this._flutter_inappwebview_url,        isAsync: this._flutter_inappwebview_isAsync,        user: this._flutter_inappwebview_user,        password: this._flutter_inappwebview_password,        withCredentials: this.withCredentials,        headers: this._flutter_inappwebview_request_headers,        responseType: this.responseType      };      window.flutter_inappwebview.callHandler('shouldInterceptAjaxRequest', ajaxRequest).then(function(result) {        if (result != null) {          switch (result.action) {            case 0:              self.abort();              return;          };          data = result.data;          self.withCredentials = result.withCredentials;          if (result.responseType != null) {            self.responseType = result.responseType;          };          for (var header in result.headers) {            var value = result.headers[header];            var flutter_inappwebview_value = self._flutter_inappwebview_request_headers[header];            if (flutter_inappwebview_value == null) {              self._flutter_inappwebview_request_headers[header] = value;            } else {              self._flutter_inappwebview_request_headers[header] += ', ' + value;            }            setRequestHeader.call(self, header, value);          };          if ((self._flutter_inappwebview_method != result.method && result.method != null) || (self._flutter_inappwebview_url != result.url && result.url != null)) {            self.abort();            self.open(result.method, result.url, result.isAsync, result.user, result.password);            return;          }        }        send.call(self, data);      });    } else {      send.call(this, data);    }  };})(window.XMLHttpRequest);";
    static final String interceptFetchRequestsJS = "(function(fetch) {  if (fetch == null) {    return;  }  function convertHeadersToJson(headers) {    var headersObj = {};    for (var header of headers.keys()) {      var value = headers.get(header);      headersObj[header] = value;    }    return headersObj;  }  function convertJsonToHeaders(headersJson) {    return new Headers(headersJson);  }  function convertBodyToArray(body) {    return new Response(body).arrayBuffer().then(function(arrayBuffer) {      var arr = Array.from(new Uint8Array(arrayBuffer));      return arr;    })  }  function convertArrayIntBodyToUint8Array(arrayIntBody) {    return new Uint8Array(arrayIntBody);  }  function convertCredentialsToJson(credentials) {    var credentialsObj = {};    if (window.FederatedCredential != null && credentials instanceof FederatedCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.protocol = credentials.protocol;      credentialsObj.provider = credentials.provider;      credentialsObj.iconURL = credentials.iconURL;    } else if (window.PasswordCredential != null && credentials instanceof PasswordCredential) {      credentialsObj.type = credentials.type;      credentialsObj.id = credentials.id;      credentialsObj.name = credentials.name;      credentialsObj.password = credentials.password;      credentialsObj.iconURL = credentials.iconURL;    } else {      credentialsObj.type = 'default';      credentialsObj.value = credentials;    }  }  function convertJsonToCredential(credentialsJson) {    var credentials;    if (window.FederatedCredential != null && credentialsJson.type === 'federated') {      credentials = new FederatedCredential({        id: credentialsJson.id,        name: credentialsJson.name,        protocol: credentialsJson.protocol,        provider: credentialsJson.provider,        iconURL: credentialsJson.iconURL      });    } else if (window.PasswordCredential != null && credentialsJson.type === 'password') {      credentials = new PasswordCredential({        id: credentialsJson.id,        name: credentialsJson.name,        password: credentialsJson.password,        iconURL: credentialsJson.iconURL      });    } else {      credentials = credentialsJson;    }    return credentials;  }  window.fetch = async function(resource, init) {    if (window.window._flutter_inappwebview_useShouldInterceptFetchRequest == null || window.window._flutter_inappwebview_useShouldInterceptFetchRequest == true) {      var fetchRequest = {        url: null,        method: null,        headers: null,        body: null,        mode: null,        credentials: null,        cache: null,        redirect: null,        referrer: null,        referrerPolicy: null,        integrity: null,        keepalive: null      };      if (resource instanceof Request) {        fetchRequest.url = resource.url;        fetchRequest.method = resource.method;        fetchRequest.headers = resource.headers;        fetchRequest.body = resource.body;        fetchRequest.mode = resource.mode;        fetchRequest.credentials = resource.credentials;        fetchRequest.cache = resource.cache;        fetchRequest.redirect = resource.redirect;        fetchRequest.referrer = resource.referrer;        fetchRequest.referrerPolicy = resource.referrerPolicy;        fetchRequest.integrity = resource.integrity;        fetchRequest.keepalive = resource.keepalive;      } else {        fetchRequest.url = resource;        if (init != null) {          fetchRequest.method = init.method;          fetchRequest.headers = init.headers;          fetchRequest.body = init.body;          fetchRequest.mode = init.mode;          fetchRequest.credentials = init.credentials;          fetchRequest.cache = init.cache;          fetchRequest.redirect = init.redirect;          fetchRequest.referrer = init.referrer;          fetchRequest.referrerPolicy = init.referrerPolicy;          fetchRequest.integrity = init.integrity;          fetchRequest.keepalive = init.keepalive;        }      }      if (fetchRequest.headers instanceof Headers) {        fetchRequest.headers = convertHeadersToJson(fetchRequest.headers);      }      fetchRequest.credentials = convertCredentialsToJson(fetchRequest.credentials);      return convertBodyToArray(fetchRequest.body).then(function(body) {        fetchRequest.body = body;        return window.flutter_inappwebview.callHandler('shouldInterceptFetchRequest', fetchRequest).then(function(result) {          if (result != null) {            switch (result.action) {              case 0:                var controller = new AbortController();                if (init != null) {                  init.signal = controller.signal;                } else {                  init = {                    signal: controller.signal                  };                }                controller.abort();                break;            }            resource = (result.url != null) ? result.url : resource;            if (init == null) {              init = {};            }            if (result.method != null && result.method.length > 0) {              init.method = result.method;            }            if (result.headers != null && Object.keys(result.headers).length > 0) {              init.headers = convertJsonToHeaders(result.headers);            }            if (result.body != null && result.body.length > 0)   {              init.body = convertArrayIntBodyToUint8Array(result.body);            }            if (result.mode != null && result.mode.length > 0) {              init.mode = result.mode;            }            if (result.credentials != null) {              init.credentials = convertJsonToCredential(result.credentials);            }            if (result.cache != null && result.cache.length > 0) {              init.cache = result.cache;            }            if (result.redirect != null && result.redirect.length > 0) {              init.redirect = result.redirect;            }            if (result.referrer != null && result.referrer.length > 0) {              init.referrer = result.referrer;            }            if (result.referrerPolicy != null && result.referrerPolicy.length > 0) {              init.referrerPolicy = result.referrerPolicy;            }            if (result.integrity != null && result.integrity.length > 0) {              init.integrity = result.integrity;            }            if (result.keepalive != null) {              init.keepalive = result.keepalive;            }            return fetch(resource, init);          }          return fetch(resource, init);        });      });    } else {      return fetch(resource, init);    }  };})(window.fetch);";
    static final String isActiveElementInputEditableJS = "var activeEl = document.activeElement;var nodeName = (activeEl != null) ? activeEl.nodeName.toLowerCase() : '';var isActiveElementInputEditable = activeEl != null && (activeEl.nodeType == 1 && (nodeName == 'textarea' || (nodeName == 'input' && /^(?:text|email|number|search|tel|url|password)$/i.test(activeEl.type != null ? activeEl.type : 'text')))) && !activeEl.disabled && !activeEl.readOnly;var isActiveElementEditable = isActiveElementInputEditable || (activeEl != null && activeEl.isContentEditable) || document.designMode === 'on';";
    static Handler mHandler = new Handler();
    static final String onWindowBlurEventJS = "(function(){  window.addEventListener('blur', function(e) {    window.flutter_inappwebview.callHandler('onWindowBlur');  });})();";
    static final String onWindowFocusEventJS = "(function(){  window.addEventListener('focus', function(e) {    window.flutter_inappwebview.callHandler('onWindowFocus');  });})();";
    static final String platformReadyJS = "(function() {  if (window.flutter_inappwebview._platformReady == null) {    window.dispatchEvent(new Event('flutterInAppWebViewPlatformReady'));    window.flutter_inappwebview._platformReady = true;  }})();";
    static final String printJS = "window.print = function() {  window.flutter_inappwebview.callHandler('onPrint', window.location.href);};";
    static final String resourceObserverJS = "(function() {   var observer = new PerformanceObserver(function(list) {       list.getEntries().forEach(function(entry) {         if (window.window._flutter_inappwebview_useOnLoadResource == null || window.window._flutter_inappwebview_useOnLoadResource == true) {           window.flutter_inappwebview.callHandler('onLoadResource', entry);         }       });   });   observer.observe({entryTypes: ['resource']});})();";
    static final String scriptsWrapperJS = "(function(){  if (window.flutter_inappwebview._scriptsLoaded == null) {    $PLACEHOLDER_VALUE    window.flutter_inappwebview._scriptsLoaded = true;  }})();";
    static final String variableForOnLoadResourceJS = "window._flutter_inappwebview_useOnLoadResource";
    static final String variableForShouldInterceptAjaxRequestJS = "window._flutter_inappwebview_useShouldInterceptAjaxRequest";
    static final String variableForShouldInterceptFetchRequestsJS = "window._flutter_inappwebview_useShouldInterceptFetchRequest";
    public g.a.c.a.k channel;
    public Runnable checkContextMenuShouldBeClosedTask;
    public Runnable checkScrollStoppedTask;
    public com.pichillilorenzo.flutter_inappwebview.b.d contentBlockerHandler;
    public Map<String, Object> contextMenu;
    public LinearLayout floatingContextMenu;
    public com.pichillilorenzo.flutter_inappwebview.InAppWebView.c flutterWebView;

    /* renamed from: g, reason: collision with root package name */
    private Point f16413g;
    public GestureDetector gestureDetector;

    /* renamed from: h, reason: collision with root package name */
    private Point f16414h;
    public Handler headlessHandler;
    public w httpClient;
    public Object id;
    public InAppBrowserActivity inAppBrowserActivity;
    public com.pichillilorenzo.flutter_inappwebview.InAppWebView.e inAppWebViewChromeClient;
    public com.pichillilorenzo.flutter_inappwebview.InAppWebView.f inAppWebViewClient;
    public com.pichillilorenzo.flutter_inappwebview.InAppWebView.h inAppWebViewRenderProcessClient;
    public int initialPositionScrollStoppedTask;
    public boolean isLoading;
    public com.pichillilorenzo.flutter_inappwebview.i javaScriptBridgeInterface;
    public int newCheckContextMenuShouldBeClosedTaskTask;
    public int newCheckScrollStoppedTask;
    int okHttpClientCacheSize;
    public com.pichillilorenzo.flutter_inappwebview.InAppWebView.g options;
    public Pattern regexToCancelSubFramesLoadingCompiled;
    public float scale;
    public Integer windowId;

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InputMethodManager inputMethodManager = (InputMethodManager) InAppWebView.this.getContext().getSystemService("input_method");
            if (inputMethodManager == null || inputMethodManager.isAcceptingText()) {
                return;
            }
            inputMethodManager.hideSoftInputFromWindow(InAppWebView.this.containerView.getWindowToken(), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ActionMode.Callback f16416e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ ActionMode f16417f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ MenuItem f16418g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ int f16419h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ String f16420i;

        b(ActionMode.Callback callback, ActionMode actionMode, MenuItem menuItem, int i2, String str) {
            this.f16416e = callback;
            this.f16417f = actionMode;
            this.f16418g = menuItem;
            this.f16419h = i2;
            this.f16420i = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InAppWebView.this.hideContextMenu();
            this.f16416e.onActionItemClicked(this.f16417f, this.f16418g);
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = InAppWebView.this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put("androidId", Integer.valueOf(this.f16419h));
            hashMap.put("iosId", null);
            hashMap.put("title", this.f16420i);
            InAppWebView.this.channel.a("onContextMenuActionItemClicked", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f16422e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f16423f;

        c(int i2, String str) {
            this.f16422e = i2;
            this.f16423f = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InAppWebView.this.hideContextMenu();
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = InAppWebView.this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put("androidId", Integer.valueOf(this.f16422e));
            hashMap.put("iosId", null);
            hashMap.put("title", this.f16423f);
            InAppWebView.this.channel.a("onContextMenuActionItemClicked", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f16425e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f16426f;

        d(int i2, int i3) {
            this.f16425e = i2;
            this.f16426f = i3;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            LinearLayout linearLayout = InAppWebView.this.floatingContextMenu;
            if (linearLayout != null) {
                linearLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                if (InAppWebView.this.getSettings().getJavaScriptEnabled()) {
                    InAppWebView.this.onScrollStopped();
                } else {
                    InAppWebView.this.onFloatingActionGlobalLayout(this.f16425e, this.f16426f);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LinearLayout linearLayout = InAppWebView.this.floatingContextMenu;
            if (linearLayout != null) {
                linearLayout.setVisibility(0);
                InAppWebView.this.floatingContextMenu.animate().alpha(1.0f).setDuration(100L).setListener(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements ValueCallback<String> {
        f() {
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            InAppWebView inAppWebView = InAppWebView.this;
            LinearLayout linearLayout = inAppWebView.floatingContextMenu;
            if (linearLayout != null) {
                if (str != null) {
                    int i2 = inAppWebView.f16413g.x;
                    float parseFloat = Float.parseFloat(str);
                    InAppWebView inAppWebView2 = InAppWebView.this;
                    double d2 = parseFloat * inAppWebView2.scale;
                    double height = inAppWebView2.floatingContextMenu.getHeight();
                    Double.isNaN(height);
                    Double.isNaN(d2);
                    int i3 = (int) (d2 + (height / 3.5d));
                    InAppWebView.this.f16413g.y = i3;
                    InAppWebView.this.onFloatingActionGlobalLayout(i2, i3);
                    return;
                }
                linearLayout.setVisibility(0);
                InAppWebView.this.floatingContextMenu.animate().alpha(1.0f).setDuration(100L).setListener(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements ValueCallback<String> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ValueCallback f16430a;

        g(InAppWebView inAppWebView, ValueCallback valueCallback) {
            this.f16430a = valueCallback;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            this.f16430a.onReceiveValue(str != null ? str.substring(1, str.length() - 1) : null);
        }
    }

    /* loaded from: classes2.dex */
    class h implements ValueCallback<String> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16431a;

        h(InAppWebView inAppWebView, k.d dVar) {
            this.f16431a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            this.f16431a.a(str);
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class i {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f16432a = new int[com.pichillilorenzo.flutter_inappwebview.InAppWebView.i.values().length];

        static {
            try {
                f16432a[com.pichillilorenzo.flutter_inappwebview.InAppWebView.i.DESKTOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16432a[com.pichillilorenzo.flutter_inappwebview.InAppWebView.i.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16432a[com.pichillilorenzo.flutter_inappwebview.InAppWebView.i.RECOMMENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    class j implements WebView.FindListener {
        j() {
        }

        @Override // android.webkit.WebView.FindListener
        public void onFindResultReceived(int i2, int i3, boolean z) {
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = InAppWebView.this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put("activeMatchOrdinal", Integer.valueOf(i2));
            hashMap.put("numberOfMatches", Integer.valueOf(i3));
            hashMap.put("isDoneCounting", Boolean.valueOf(z));
            InAppWebView.this.channel.a("onFindResultReceived", hashMap);
        }
    }

    /* loaded from: classes2.dex */
    class k extends GestureDetector.SimpleOnGestureListener {
        k() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            InAppWebView inAppWebView = InAppWebView.this;
            if (inAppWebView.floatingContextMenu != null) {
                inAppWebView.hideContextMenu();
            }
            return super.onSingleTapUp(motionEvent);
        }
    }

    /* loaded from: classes2.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int scrollY = InAppWebView.this.getScrollY();
            InAppWebView inAppWebView = InAppWebView.this;
            if (inAppWebView.initialPositionScrollStoppedTask - scrollY == 0) {
                inAppWebView.onScrollStopped();
                return;
            }
            inAppWebView.initialPositionScrollStoppedTask = inAppWebView.getScrollY();
            InAppWebView inAppWebView2 = InAppWebView.this;
            inAppWebView2.headlessHandler.postDelayed(inAppWebView2.checkScrollStoppedTask, inAppWebView2.newCheckScrollStoppedTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements Runnable {

        /* loaded from: classes2.dex */
        class a implements ValueCallback<String> {
            a() {
            }

            @Override // android.webkit.ValueCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str) {
                if (str != null && !str.equals("true")) {
                    InAppWebView inAppWebView = InAppWebView.this;
                    inAppWebView.headlessHandler.postDelayed(inAppWebView.checkContextMenuShouldBeClosedTask, inAppWebView.newCheckContextMenuShouldBeClosedTaskTask);
                } else {
                    InAppWebView inAppWebView2 = InAppWebView.this;
                    if (inAppWebView2.floatingContextMenu != null) {
                        inAppWebView2.hideContextMenu();
                    }
                }
            }
        }

        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InAppWebView inAppWebView = InAppWebView.this;
            if (inAppWebView.floatingContextMenu != null) {
                inAppWebView.evaluateJavascript(InAppWebView.checkContextMenuShouldBeHiddenJS, new a());
            }
        }
    }

    /* loaded from: classes2.dex */
    class n implements View.OnTouchListener {

        /* renamed from: e, reason: collision with root package name */
        float f16438e;

        /* renamed from: f, reason: collision with root package name */
        float f16439f;

        n() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            InAppWebView.this.gestureDetector.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1) {
                InAppWebView.this.checkScrollStoppedTask.run();
            }
            if (InAppWebView.this.options.w.booleanValue() && InAppWebView.this.options.v.booleanValue()) {
                return motionEvent.getAction() == 2;
            }
            if (InAppWebView.this.options.w.booleanValue() || InAppWebView.this.options.v.booleanValue()) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f16438e = motionEvent.getX();
                    this.f16439f = motionEvent.getY();
                } else if (action == 1 || action == 2 || action == 3) {
                    if (InAppWebView.this.options.w.booleanValue()) {
                        motionEvent.setLocation(this.f16438e, motionEvent.getY());
                    } else {
                        motionEvent.setLocation(motionEvent.getX(), this.f16439f);
                    }
                }
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class o implements View.OnLongClickListener {
        o() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            WebView.HitTestResult hitTestResult = InAppWebView.this.getHitTestResult();
            HashMap hashMap = new HashMap();
            hashMap.put("type", Integer.valueOf(hitTestResult.getType()));
            hashMap.put("extra", hitTestResult.getExtra());
            HashMap hashMap2 = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = InAppWebView.this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap2.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap2.put("hitTestResult", hashMap);
            InAppWebView.this.channel.a("onLongPressHitTestResult", hashMap2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p implements ValueCallback<Boolean> {
        p(InAppWebView inAppWebView) {
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
        }
    }

    /* loaded from: classes2.dex */
    class q implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ k.d f16442e;

        q(k.d dVar) {
            this.f16442e = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                double contentHeight = InAppWebView.this.getContentHeight() * InAppWebView.this.scale;
                Double.isNaN(contentHeight);
                Bitmap createBitmap = Bitmap.createBitmap(InAppWebView.this.getWidth(), (int) (contentHeight + 0.5d), Bitmap.Config.ARGB_8888);
                InAppWebView.this.draw(new Canvas(createBitmap));
                int scrollY = InAppWebView.this.getScrollY();
                int measuredHeight = InAppWebView.this.getMeasuredHeight();
                int height = createBitmap.getHeight();
                if (scrollY + measuredHeight > height) {
                    scrollY = height - measuredHeight;
                }
                if (scrollY < 0) {
                    scrollY = 0;
                }
                Bitmap createBitmap2 = Bitmap.createBitmap(createBitmap, 0, scrollY, createBitmap.getWidth(), measuredHeight);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap2.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                    e2.getMessage();
                }
                createBitmap2.recycle();
                this.f16442e.a(byteArrayOutputStream.toByteArray());
            } catch (IllegalArgumentException e3) {
                e3.getMessage();
                this.f16442e.a(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f16444e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ k.d f16445f;

        /* loaded from: classes2.dex */
        class a implements ValueCallback<String> {
            a() {
            }

            @Override // android.webkit.ValueCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onReceiveValue(String str) {
                k.d dVar = r.this.f16445f;
                if (dVar == null) {
                    return;
                }
                dVar.a(str);
            }
        }

        r(String str, k.d dVar) {
            this.f16444e = str;
            this.f16445f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT < 19) {
                InAppWebView.this.loadUrl("javascript:" + this.f16444e);
                this.f16445f.a("");
                return;
            }
            InAppWebView.this.evaluateJavascript(this.f16444e, new a());
        }
    }

    /* loaded from: classes2.dex */
    class s implements DownloadListener {
        s() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
            HashMap hashMap = new HashMap();
            InAppBrowserActivity inAppBrowserActivity = InAppWebView.this.inAppBrowserActivity;
            if (inAppBrowserActivity != null) {
                hashMap.put("uuid", inAppBrowserActivity.uuid);
            }
            hashMap.put(HummerConstants.URL, str);
            InAppWebView.this.channel.a("onDownloadStart", hashMap);
        }
    }

    public InAppWebView(Context context) {
        super(context);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new com.pichillilorenzo.flutter_inappwebview.b.d();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.f16413g = new Point(0, 0);
        this.f16414h = new Point(0, 0);
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().removeAllCookies(new p(this));
        } else {
            CookieManager.getInstance().removeAllCookie();
        }
    }

    private void b() {
        WebView.HitTestResult hitTestResult = getHitTestResult();
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(hitTestResult.getType()));
        hashMap.put("extra", hitTestResult.getExtra());
        HashMap hashMap2 = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap2.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap2.put("hitTestResult", hashMap);
        this.channel.a("onCreateContextMenu", hashMap2);
    }

    @RequiresApi(api = 19)
    public void adjustFloatingContextMenuPosition() {
        evaluateJavascript("(function(){  var selection = window.getSelection();  var rangeY = null;  if (selection != null && selection.rangeCount > 0) {    var range = selection.getRangeAt(0);    var clientRect = range.getClientRects();    if (clientRect.length > 0) {      rangeY = clientRect[0].y;    } else if (document.activeElement) {      var boundingClientRect = document.activeElement.getBoundingClientRect();      rangeY = boundingClientRect.y;    }  }  return rangeY;})();", new f());
    }

    public void clearAllCache() {
        clearCache(true);
        a();
        clearFormData();
        WebStorage.getInstance().deleteAllData();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.pichillilorenzo.flutter_inappwebview.InAppWebView.InputAwareWebView
    public void dispose() {
        Integer num = this.windowId;
        if (num != null && com.pichillilorenzo.flutter_inappwebview.InAppWebView.e.m.containsKey(num)) {
            com.pichillilorenzo.flutter_inappwebview.InAppWebView.e.m.remove(this.windowId);
        }
        this.headlessHandler.removeCallbacksAndMessages(null);
        mHandler.removeCallbacksAndMessages(null);
        removeJavascriptInterface("flutter_inappwebview");
        removeAllViews();
        Runnable runnable = this.checkContextMenuShouldBeClosedTask;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.checkScrollStoppedTask;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        super.dispose();
    }

    public void evaluateJavascript(String str, k.d dVar) {
        injectDeferredObject(str, null, dVar);
    }

    public Map<String, Object> getCertificateMap() {
        return getCertificateMap(getCertificate());
    }

    public HashMap<String, Object> getCopyBackForwardList() {
        WebBackForwardList copyBackForwardList = copyBackForwardList();
        int size = copyBackForwardList.getSize();
        int currentIndex = copyBackForwardList.getCurrentIndex();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            WebHistoryItem itemAtIndex = copyBackForwardList.getItemAtIndex(i2);
            HashMap hashMap = new HashMap();
            hashMap.put("originalUrl", itemAtIndex.getOriginalUrl());
            hashMap.put("title", itemAtIndex.getTitle());
            hashMap.put(HummerConstants.URL, itemAtIndex.getUrl());
            arrayList.add(hashMap);
        }
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put("history", arrayList);
        hashMap2.put("currentIndex", Integer.valueOf(currentIndex));
        return hashMap2;
    }

    public Map<String, Object> getOptions() {
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar = this.options;
        if (gVar != null) {
            return gVar.a(this);
        }
        return null;
    }

    @RequiresApi(api = 19)
    public void getSelectedText(ValueCallback<String> valueCallback) {
        evaluateJavascript(getSelectedTextJS, new g(this, valueCallback));
    }

    public Float getUpdatedScale() {
        return Float.valueOf(this.scale);
    }

    public void hideContextMenu() {
        removeView(this.floatingContextMenu);
        this.floatingContextMenu = null;
        onHideContextMenu();
    }

    public void injectCSSCode(String str) {
        injectDeferredObject(str, "(function(d) { var c = d.createElement('style'); c.innerHTML = %s; d.body.appendChild(c); })(document);", null);
    }

    public void injectCSSFileFromUrl(String str) {
        injectDeferredObject(str, "(function(d) { var c = d.createElement('link'); c.rel='stylesheet'; c.type='text/css'; c.href = %s; d.head.appendChild(c); })(document);", null);
    }

    public void injectDeferredObject(String str, String str2, k.d dVar) {
        if (str2 != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(str);
            String jSONArray2 = jSONArray.toString();
            str = String.format(str2, jSONArray2.substring(1, jSONArray2.length() - 1));
        }
        this.headlessHandler.post(new r(str, dVar));
    }

    public void injectJavascriptFileFromUrl(String str) {
        injectDeferredObject(str, "(function(d) { var c = d.createElement('script'); c.src = %s; d.body.appendChild(c); })(document);", null);
    }

    public boolean isLoading() {
        return this.isLoading;
    }

    public void loadData(String str, String str2, String str3, String str4, String str5, k.d dVar) {
        loadDataWithBaseURL(str4, str, str2, str3, str5);
        dVar.a(true);
    }

    public void loadFile(String str, k.d dVar) {
        try {
            String b2 = com.pichillilorenzo.flutter_inappwebview.r.b(str);
            if (!b2.isEmpty()) {
                loadUrl(b2);
                dVar.a(true);
            } else {
                dVar.a(LOG_TAG, "url is empty", null);
            }
        } catch (IOException e2) {
            dVar.a(LOG_TAG, str + " asset file cannot be found!", e2);
        }
    }

    public void loadUrl(String str, k.d dVar) {
        if (!str.isEmpty()) {
            loadUrl(str);
            dVar.a(true);
        } else {
            dVar.a(LOG_TAG, "url is empty", null);
        }
    }

    @Override // android.view.View
    public void onCreateContextMenu(ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        b();
    }

    @Override // android.webkit.WebView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        View view;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection == null && (view = this.containerView) != null) {
            view.getHandler().postDelayed(new a(), 128L);
        }
        return onCreateInputConnection;
    }

    public void onFloatingActionGlobalLayout(int i2, int i3) {
        int width = getWidth();
        getHeight();
        int width2 = this.floatingContextMenu.getWidth();
        int height = this.floatingContextMenu.getHeight();
        int i4 = i2 - (width2 / 2);
        if (i4 < 0) {
            i4 = 0;
        } else if (i4 + width2 > width) {
            i4 = width - width2;
        }
        float f2 = i3 - (height * 1.5f);
        if (f2 < 0.0f) {
            f2 = i3 + height;
        }
        updateViewLayout(this.floatingContextMenu, new AbsoluteLayout.LayoutParams(-2, -2, i4, ((int) f2) + getScrollY()));
        this.headlessHandler.post(new e());
    }

    public void onHideContextMenu() {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        this.channel.a("onHideContextMenu", hashMap);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        float f2 = this.scale;
        int i6 = (int) (i2 / f2);
        int i7 = (int) (i3 / f2);
        LinearLayout linearLayout = this.floatingContextMenu;
        if (linearLayout != null) {
            linearLayout.setAlpha(0.0f);
            this.floatingContextMenu.setVisibility(8);
        }
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put("x", Integer.valueOf(i6));
        hashMap.put("y", Integer.valueOf(i7));
        this.channel.a("onScrollChanged", hashMap);
    }

    public void onScrollStopped() {
        if (this.floatingContextMenu == null || Build.VERSION.SDK_INT < 19) {
            return;
        }
        adjustFloatingContextMenuPosition();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f16414h = new Point((int) motionEvent.getX(), (int) motionEvent.getY());
        return super.onTouchEvent(motionEvent);
    }

    public void postUrl(String str, byte[] bArr, k.d dVar) {
        if (!str.isEmpty()) {
            postUrl(str, bArr);
            dVar.a(true);
        } else {
            dVar.a(LOG_TAG, "url is empty", null);
        }
    }

    public void prepare() {
        Integer num;
        Integer num2;
        Integer num3;
        boolean z = this.inAppBrowserActivity != null;
        this.httpClient = new w().D().a();
        this.javaScriptBridgeInterface = new com.pichillilorenzo.flutter_inappwebview.i(z ? this.inAppBrowserActivity : this.flutterWebView);
        addJavascriptInterface(this.javaScriptBridgeInterface, "flutter_inappwebview");
        this.inAppWebViewChromeClient = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.e(z ? this.inAppBrowserActivity : this.flutterWebView);
        setWebChromeClient(this.inAppWebViewChromeClient);
        this.inAppWebViewClient = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.f(z ? this.inAppBrowserActivity : this.flutterWebView);
        setWebViewClient(this.inAppWebViewClient);
        if (Build.VERSION.SDK_INT >= 29 && WebViewFeature.a("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE")) {
            this.inAppWebViewRenderProcessClient = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.h(z ? this.inAppBrowserActivity : this.flutterWebView);
            androidx.webkit.b.a(this, this.inAppWebViewRenderProcessClient);
        }
        if (this.options.f16540c.booleanValue()) {
            setDownloadListener(new s());
        }
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(this.options.f16544g.booleanValue());
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(this.options.f16545h.booleanValue());
        }
        settings.setJavaScriptCanOpenWindowsAutomatically(this.options.f16546i.booleanValue());
        settings.setBuiltInZoomControls(this.options.B.booleanValue());
        settings.setDisplayZoomControls(this.options.C.booleanValue());
        settings.setSupportMultipleWindows(this.options.m0.booleanValue());
        if (Build.VERSION.SDK_INT >= 26) {
            settings.setSafeBrowsingEnabled(this.options.G.booleanValue());
        }
        settings.setMediaPlaybackRequiresUserGesture(this.options.f16547j.booleanValue());
        settings.setDatabaseEnabled(this.options.D.booleanValue());
        settings.setDomStorageEnabled(this.options.E.booleanValue());
        String str = this.options.f16542e;
        if (str != null && !str.isEmpty()) {
            settings.setUserAgentString(this.options.f16542e);
        } else if (Build.VERSION.SDK_INT >= 17) {
            settings.setUserAgentString(WebSettings.getDefaultUserAgent(getContext()));
        }
        String str2 = this.options.f16543f;
        if (str2 != null && !str2.isEmpty() && Build.VERSION.SDK_INT >= 17) {
            String str3 = this.options.f16542e;
            settings.setUserAgentString(((str3 == null || str3.isEmpty()) ? WebSettings.getDefaultUserAgent(getContext()) : this.options.f16542e) + HanziToPinyin.Token.SEPARATOR + this.options.f16543f);
        }
        if (this.options.f16541d.booleanValue()) {
            clearAllCache();
        } else if (this.options.A.booleanValue()) {
            CookieManager.getInstance().removeSessionCookie();
        }
        if (Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, this.options.k0.booleanValue());
        }
        settings.setLoadWithOverviewMode(this.options.a0.booleanValue());
        settings.setUseWideViewPort(this.options.F.booleanValue());
        settings.setSupportZoom(this.options.y.booleanValue());
        settings.setTextZoom(this.options.z.intValue());
        setVerticalScrollBarEnabled(!this.options.v.booleanValue() && this.options.f16549l.booleanValue());
        setHorizontalScrollBarEnabled(!this.options.w.booleanValue() && this.options.m.booleanValue());
        if (this.options.u.booleanValue()) {
            setBackgroundColor(0);
        }
        if (Build.VERSION.SDK_INT >= 21 && (num3 = this.options.H) != null) {
            settings.setMixedContentMode(num3.intValue());
        }
        settings.setAllowContentAccess(this.options.I.booleanValue());
        settings.setAllowFileAccess(this.options.J.booleanValue());
        settings.setAllowFileAccessFromFileURLs(this.options.K.booleanValue());
        settings.setAllowUniversalAccessFromFileURLs(this.options.L.booleanValue());
        setCacheEnabled(this.options.t.booleanValue());
        String str4 = this.options.M;
        if (str4 != null && !str4.isEmpty() && this.options.t.booleanValue()) {
            settings.setAppCachePath(this.options.M);
        }
        settings.setBlockNetworkImage(this.options.N.booleanValue());
        settings.setBlockNetworkLoads(this.options.O.booleanValue());
        Integer num4 = this.options.P;
        if (num4 != null) {
            settings.setCacheMode(num4.intValue());
        }
        settings.setCursiveFontFamily(this.options.Q);
        settings.setDefaultFixedFontSize(this.options.R.intValue());
        settings.setDefaultFontSize(this.options.S.intValue());
        settings.setDefaultTextEncodingName(this.options.T);
        if (Build.VERSION.SDK_INT >= 24 && (num2 = this.options.U) != null) {
            settings.setDisabledActionModeMenuItems(num2.intValue());
        }
        settings.setFantasyFontFamily(this.options.V);
        settings.setFixedFontFamily(this.options.W);
        if (Build.VERSION.SDK_INT >= 29 && (num = this.options.X) != null) {
            settings.setForceDark(num.intValue());
        }
        settings.setGeolocationEnabled(this.options.Y.booleanValue());
        WebSettings.LayoutAlgorithm layoutAlgorithm = this.options.Z;
        if (layoutAlgorithm != null) {
            if (Build.VERSION.SDK_INT >= 19 && layoutAlgorithm.equals(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING)) {
                settings.setLayoutAlgorithm(this.options.Z);
            } else {
                settings.setLayoutAlgorithm(this.options.Z);
            }
        }
        settings.setLoadsImagesAutomatically(this.options.b0.booleanValue());
        settings.setMinimumFontSize(this.options.f16548k.intValue());
        settings.setMinimumLogicalFontSize(this.options.c0.intValue());
        setInitialScale(this.options.d0.intValue());
        settings.setNeedInitialFocus(this.options.e0.booleanValue());
        if (Build.VERSION.SDK_INT >= 23) {
            settings.setOffscreenPreRaster(this.options.f0.booleanValue());
        }
        settings.setSansSerifFontFamily(this.options.g0);
        settings.setSerifFontFamily(this.options.h0);
        settings.setStandardFontFamily(this.options.i0);
        Integer num5 = this.options.p;
        if (num5 != null && num5.intValue() == com.pichillilorenzo.flutter_inappwebview.InAppWebView.i.DESKTOP.toValue()) {
            setDesktopMode(true);
        }
        settings.setSaveFormData(this.options.j0.booleanValue());
        if (this.options.s.booleanValue()) {
            setIncognito(true);
        }
        if (this.options.l0.booleanValue()) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
        String str5 = this.options.n0;
        if (str5 != null) {
            this.regexToCancelSubFramesLoadingCompiled = Pattern.compile(str5);
        }
        setScrollBarStyle(this.options.q0.intValue());
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar = this.options;
        Integer num6 = gVar.s0;
        if (num6 != null) {
            setScrollBarDefaultDelayBeforeFade(num6.intValue());
        } else {
            gVar.s0 = Integer.valueOf(getScrollBarDefaultDelayBeforeFade());
        }
        setScrollbarFadingEnabled(this.options.t0.booleanValue());
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar2 = this.options;
        Integer num7 = gVar2.u0;
        if (num7 != null) {
            setScrollBarFadeDuration(num7.intValue());
        } else {
            gVar2.u0 = Integer.valueOf(getScrollBarFadeDuration());
        }
        setVerticalScrollbarPosition(this.options.r0.intValue());
        setOverScrollMode(this.options.o0.intValue());
        Boolean bool = this.options.p0;
        if (bool != null) {
            setNetworkAvailable(bool.booleanValue());
        }
        Map<String, Object> map = this.options.v0;
        if (map != null && !map.isEmpty() && Build.VERSION.SDK_INT >= 26) {
            setRendererPriorityPolicy(((Integer) this.options.v0.get("rendererRequestedPriority")).intValue(), ((Boolean) this.options.v0.get("waivedWhenNotVisible")).booleanValue());
        } else {
            Map<String, Object> map2 = this.options.v0;
            if ((map2 == null || (map2 != null && map2.isEmpty())) && Build.VERSION.SDK_INT >= 26) {
                this.options.v0.put("rendererRequestedPriority", Integer.valueOf(getRendererRequestedPriority()));
                this.options.v0.put("waivedWhenNotVisible", Boolean.valueOf(getRendererPriorityWaivedWhenNotVisible()));
            }
        }
        this.contentBlockerHandler.a().clear();
        for (Map<String, Map<String, Object>> map3 : this.options.o) {
            this.contentBlockerHandler.a().add(new com.pichillilorenzo.flutter_inappwebview.b.a(com.pichillilorenzo.flutter_inappwebview.b.e.a(map3.get("trigger")), com.pichillilorenzo.flutter_inappwebview.b.b.a(map3.get("action"))));
        }
        setFindListener(new j());
        this.gestureDetector = new GestureDetector(getContext(), new k());
        this.checkScrollStoppedTask = new l();
        if (Build.VERSION.SDK_INT >= 19) {
            this.checkContextMenuShouldBeClosedTask = new m();
        }
        setOnTouchListener(new n());
        setOnLongClickListener(new o());
    }

    @RequiresApi(api = 21)
    public void printCurrentPage() {
        PrintManager printManager = (PrintManager) com.pichillilorenzo.flutter_inappwebview.q.f16643f.getSystemService("print");
        if (printManager != null) {
            String str = getTitle() + " Document";
            printManager.print(str, createPrintDocumentAdapter(str), new PrintAttributes.Builder().build());
        }
    }

    public ActionMode rebuildActionMode(ActionMode actionMode, ActionMode.Callback callback) {
        boolean z;
        if (this.floatingContextMenu != null) {
            hideContextMenu();
            z = true;
        } else {
            z = false;
        }
        if (actionMode == null) {
            return null;
        }
        Menu menu = actionMode.getMenu();
        if (this.options.x.booleanValue()) {
            menu.clear();
            return actionMode;
        }
        this.floatingContextMenu = (LinearLayout) LayoutInflater.from(getContext()).inflate(com.pichillilorenzo.flutter_inappwebview.n.floating_action_mode, (ViewGroup) this, false);
        LinearLayout linearLayout = (LinearLayout) ((HorizontalScrollView) this.floatingContextMenu.getChildAt(0)).getChildAt(0);
        List arrayList = new ArrayList();
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.a aVar = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.a();
        Map<String, Object> map = this.contextMenu;
        if (map != null) {
            arrayList = (List) map.get("menuItems");
            Map<String, Object> map2 = (Map) this.contextMenu.get("options");
            if (map2 != null) {
                aVar.a(map2);
            }
        }
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        List<Map> list = arrayList;
        Boolean bool = aVar.f16453a;
        if (bool == null || !bool.booleanValue()) {
            for (int i2 = 0; i2 < menu.size(); i2++) {
                MenuItem item = menu.getItem(i2);
                int itemId = item.getItemId();
                String charSequence = item.getTitle().toString();
                TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(com.pichillilorenzo.flutter_inappwebview.n.floating_action_mode_item, (ViewGroup) this, false);
                textView.setText(charSequence);
                textView.setOnClickListener(new b(callback, actionMode, item, itemId, charSequence));
                if (this.floatingContextMenu != null) {
                    linearLayout.addView(textView);
                }
            }
        }
        for (Map map3 : list) {
            int intValue = ((Integer) map3.get("androidId")).intValue();
            String str = (String) map3.get("title");
            TextView textView2 = (TextView) LayoutInflater.from(getContext()).inflate(com.pichillilorenzo.flutter_inappwebview.n.floating_action_mode_item, (ViewGroup) this, false);
            textView2.setText(str);
            textView2.setOnClickListener(new c(intValue, str));
            if (this.floatingContextMenu != null) {
                linearLayout.addView(textView2);
            }
        }
        Point point = this.f16414h;
        int i3 = point != null ? point.x : 0;
        Point point2 = this.f16414h;
        int i4 = point2 != null ? point2.y : 0;
        this.f16413g = new Point(i3, i4);
        LinearLayout linearLayout2 = this.floatingContextMenu;
        if (linearLayout2 != null) {
            linearLayout2.getViewTreeObserver().addOnGlobalLayoutListener(new d(i3, i4));
            addView(this.floatingContextMenu, new AbsoluteLayout.LayoutParams(-2, -2, i3, i4));
            if (z) {
                b();
            }
            Runnable runnable = this.checkContextMenuShouldBeClosedTask;
            if (runnable != null) {
                runnable.run();
            }
        }
        menu.clear();
        return actionMode;
    }

    @Override // android.webkit.WebView
    public void reload() {
        super.reload();
    }

    public Map<String, Object> requestFocusNodeHref() {
        Message obtainMessage = mHandler.obtainMessage();
        requestFocusNodeHref(obtainMessage);
        Bundle peekData = obtainMessage.peekData();
        HashMap hashMap = new HashMap();
        hashMap.put("src", peekData.getString("src"));
        hashMap.put(HummerConstants.URL, peekData.getString(HummerConstants.URL));
        hashMap.put("title", peekData.getString("title"));
        return hashMap;
    }

    public Map<String, Object> requestImageRef() {
        Message obtainMessage = mHandler.obtainMessage();
        requestImageRef(obtainMessage);
        Bundle peekData = obtainMessage.peekData();
        HashMap hashMap = new HashMap();
        hashMap.put(HummerConstants.URL, peekData.getString(HummerConstants.URL));
        return hashMap;
    }

    public void scrollBy(Integer num, Integer num2, Boolean bool) {
        if (bool.booleanValue()) {
            ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofInt("scrollX", getScrollX() + num.intValue()), PropertyValuesHolder.ofInt("scrollY", getScrollY() + num2.intValue())).setDuration(300L).start();
        } else {
            scrollBy(num.intValue(), num2.intValue());
        }
    }

    public void scrollTo(Integer num, Integer num2, Boolean bool) {
        if (bool.booleanValue()) {
            ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofInt("scrollX", num.intValue()), PropertyValuesHolder.ofInt("scrollY", num2.intValue())).setDuration(300L).start();
        } else {
            scrollTo(num.intValue(), num2.intValue());
        }
    }

    public void setCacheEnabled(boolean z) {
        WebSettings settings = getSettings();
        if (z) {
            Context context = getContext();
            if (context != null) {
                settings.setAppCachePath(context.getCacheDir().getAbsolutePath());
                settings.setCacheMode(-1);
                settings.setAppCacheEnabled(true);
                return;
            }
            return;
        }
        settings.setCacheMode(2);
        settings.setAppCacheEnabled(false);
    }

    public void setDesktopMode(boolean z) {
        String replace;
        WebSettings settings = getSettings();
        if (z) {
            replace = settings.getUserAgentString().replace("Mobile", "eliboM").replace("Android", "diordnA");
        } else {
            replace = settings.getUserAgentString().replace("eliboM", "Mobile").replace("diordnA", "Android");
        }
        settings.setUserAgentString(replace);
        settings.setUseWideViewPort(z);
        settings.setLoadWithOverviewMode(z);
        settings.setSupportZoom(z);
        settings.setBuiltInZoomControls(z);
    }

    public void setIncognito(boolean z) {
        WebSettings settings = getSettings();
        if (z) {
            if (Build.VERSION.SDK_INT >= 21) {
                CookieManager.getInstance().removeAllCookies(null);
            } else {
                CookieManager.getInstance().removeAllCookie();
            }
            settings.setCacheMode(2);
            settings.setAppCacheEnabled(false);
            clearHistory();
            clearCache(true);
            clearFormData();
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            return;
        }
        settings.setCacheMode(-1);
        settings.setAppCacheEnabled(true);
        settings.setSavePassword(true);
        settings.setSaveFormData(true);
    }

    public void setOptions(com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar, HashMap<String, Object> hashMap) {
        Integer num;
        Integer num2;
        String str;
        Integer num3;
        String str2;
        Integer num4;
        WebSettings settings = getSettings();
        if (hashMap.get("javaScriptEnabled") != null) {
            Boolean bool = this.options.f16544g;
            Boolean bool2 = gVar.f16544g;
            if (bool != bool2) {
                settings.setJavaScriptEnabled(bool2.booleanValue());
            }
        }
        if (hashMap.get("debuggingEnabled") != null) {
            Boolean bool3 = this.options.f16545h;
            Boolean bool4 = gVar.f16545h;
            if (bool3 != bool4 && Build.VERSION.SDK_INT >= 19) {
                WebView.setWebContentsDebuggingEnabled(bool4.booleanValue());
            }
        }
        if (hashMap.get("useShouldInterceptAjaxRequest") != null) {
            Boolean bool5 = this.options.q;
            Boolean bool6 = gVar.q;
            if (bool5 != bool6) {
                String replace = enableVariableForShouldInterceptAjaxRequestJS.replace("$PLACEHOLDER_VALUE", bool6.booleanValue() ? "true" : "false");
                if (Build.VERSION.SDK_INT >= 19) {
                    evaluateJavascript(replace, (ValueCallback<String>) null);
                } else {
                    loadUrl("javascript:" + replace);
                }
            }
        }
        if (hashMap.get("useShouldInterceptFetchRequest") != null) {
            Boolean bool7 = this.options.r;
            Boolean bool8 = gVar.r;
            if (bool7 != bool8) {
                String replace2 = enableVariableForShouldInterceptFetchRequestsJS.replace("$PLACEHOLDER_VALUE", bool8.booleanValue() ? "true" : "false");
                if (Build.VERSION.SDK_INT >= 19) {
                    evaluateJavascript(replace2, (ValueCallback<String>) null);
                } else {
                    loadUrl("javascript:" + replace2);
                }
            }
        }
        if (hashMap.get("useOnLoadResource") != null) {
            Boolean bool9 = this.options.f16539b;
            Boolean bool10 = gVar.f16539b;
            if (bool9 != bool10) {
                String replace3 = enableVariableForOnLoadResourceJS.replace("$PLACEHOLDER_VALUE", bool10.booleanValue() ? "true" : "false");
                if (Build.VERSION.SDK_INT >= 19) {
                    evaluateJavascript(replace3, (ValueCallback<String>) null);
                } else {
                    loadUrl("javascript:" + replace3);
                }
            }
        }
        if (hashMap.get("javaScriptCanOpenWindowsAutomatically") != null) {
            Boolean bool11 = this.options.f16546i;
            Boolean bool12 = gVar.f16546i;
            if (bool11 != bool12) {
                settings.setJavaScriptCanOpenWindowsAutomatically(bool12.booleanValue());
            }
        }
        if (hashMap.get("builtInZoomControls") != null) {
            Boolean bool13 = this.options.B;
            Boolean bool14 = gVar.B;
            if (bool13 != bool14) {
                settings.setBuiltInZoomControls(bool14.booleanValue());
            }
        }
        if (hashMap.get("displayZoomControls") != null) {
            Boolean bool15 = this.options.C;
            Boolean bool16 = gVar.C;
            if (bool15 != bool16) {
                settings.setDisplayZoomControls(bool16.booleanValue());
            }
        }
        if (hashMap.get("safeBrowsingEnabled") != null) {
            Boolean bool17 = this.options.G;
            Boolean bool18 = gVar.G;
            if (bool17 != bool18 && Build.VERSION.SDK_INT >= 26) {
                settings.setSafeBrowsingEnabled(bool18.booleanValue());
            }
        }
        if (hashMap.get("mediaPlaybackRequiresUserGesture") != null) {
            Boolean bool19 = this.options.f16547j;
            Boolean bool20 = gVar.f16547j;
            if (bool19 != bool20) {
                settings.setMediaPlaybackRequiresUserGesture(bool20.booleanValue());
            }
        }
        if (hashMap.get("databaseEnabled") != null) {
            Boolean bool21 = this.options.D;
            Boolean bool22 = gVar.D;
            if (bool21 != bool22) {
                settings.setDatabaseEnabled(bool22.booleanValue());
            }
        }
        if (hashMap.get("domStorageEnabled") != null) {
            Boolean bool23 = this.options.E;
            Boolean bool24 = gVar.E;
            if (bool23 != bool24) {
                settings.setDomStorageEnabled(bool24.booleanValue());
            }
        }
        if (hashMap.get("userAgent") != null && !this.options.f16542e.equals(gVar.f16542e) && !gVar.f16542e.isEmpty()) {
            settings.setUserAgentString(gVar.f16542e);
        }
        if (hashMap.get("applicationNameForUserAgent") != null && !this.options.f16543f.equals(gVar.f16543f) && !gVar.f16543f.isEmpty() && Build.VERSION.SDK_INT >= 17) {
            String str3 = gVar.f16542e;
            settings.setUserAgentString(((str3 == null || str3.isEmpty()) ? WebSettings.getDefaultUserAgent(getContext()) : gVar.f16542e) + HanziToPinyin.Token.SEPARATOR + this.options.f16543f);
        }
        if (hashMap.get("clearCache") != null && gVar.f16541d.booleanValue()) {
            clearAllCache();
        } else if (hashMap.get("clearSessionCache") != null && gVar.A.booleanValue()) {
            CookieManager.getInstance().removeSessionCookie();
        }
        if (hashMap.get("thirdPartyCookiesEnabled") != null && this.options.k0 != gVar.k0 && Build.VERSION.SDK_INT >= 21) {
            CookieManager.getInstance().setAcceptThirdPartyCookies(this, gVar.k0.booleanValue());
        }
        if (hashMap.get("useWideViewPort") != null) {
            Boolean bool25 = this.options.F;
            Boolean bool26 = gVar.F;
            if (bool25 != bool26) {
                settings.setUseWideViewPort(bool26.booleanValue());
            }
        }
        if (hashMap.get("supportZoom") != null) {
            Boolean bool27 = this.options.y;
            Boolean bool28 = gVar.y;
            if (bool27 != bool28) {
                settings.setSupportZoom(bool28.booleanValue());
            }
        }
        if (hashMap.get("textZoom") != null && !this.options.z.equals(gVar.z)) {
            settings.setTextZoom(gVar.z.intValue());
        }
        if (hashMap.get("verticalScrollBarEnabled") != null) {
            Boolean bool29 = this.options.f16549l;
            Boolean bool30 = gVar.f16549l;
            if (bool29 != bool30) {
                setVerticalScrollBarEnabled(bool30.booleanValue());
            }
        }
        if (hashMap.get("horizontalScrollBarEnabled") != null) {
            Boolean bool31 = this.options.m;
            Boolean bool32 = gVar.m;
            if (bool31 != bool32) {
                setHorizontalScrollBarEnabled(bool32.booleanValue());
            }
        }
        if (hashMap.get("transparentBackground") != null) {
            Boolean bool33 = this.options.u;
            Boolean bool34 = gVar.u;
            if (bool33 != bool34) {
                if (bool34.booleanValue()) {
                    setBackgroundColor(0);
                } else {
                    setBackgroundColor(Color.parseColor("#FFFFFF"));
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 21 && hashMap.get("mixedContentMode") != null && ((num4 = this.options.H) == null || !num4.equals(gVar.H))) {
            settings.setMixedContentMode(gVar.H.intValue());
        }
        if (hashMap.get("supportMultipleWindows") != null) {
            Boolean bool35 = this.options.m0;
            Boolean bool36 = gVar.m0;
            if (bool35 != bool36) {
                settings.setSupportMultipleWindows(bool36.booleanValue());
            }
        }
        if (hashMap.get("useOnDownloadStart") != null) {
            Boolean bool37 = this.options.f16540c;
            Boolean bool38 = gVar.f16540c;
            if (bool37 != bool38) {
                if (bool38.booleanValue()) {
                    setDownloadListener(new s());
                } else {
                    setDownloadListener(null);
                }
            }
        }
        if (hashMap.get("allowContentAccess") != null) {
            Boolean bool39 = this.options.I;
            Boolean bool40 = gVar.I;
            if (bool39 != bool40) {
                settings.setAllowContentAccess(bool40.booleanValue());
            }
        }
        if (hashMap.get("allowFileAccess") != null) {
            Boolean bool41 = this.options.J;
            Boolean bool42 = gVar.J;
            if (bool41 != bool42) {
                settings.setAllowFileAccess(bool42.booleanValue());
            }
        }
        if (hashMap.get("allowFileAccessFromFileURLs") != null) {
            Boolean bool43 = this.options.K;
            Boolean bool44 = gVar.K;
            if (bool43 != bool44) {
                settings.setAllowFileAccessFromFileURLs(bool44.booleanValue());
            }
        }
        if (hashMap.get("allowUniversalAccessFromFileURLs") != null) {
            Boolean bool45 = this.options.L;
            Boolean bool46 = gVar.L;
            if (bool45 != bool46) {
                settings.setAllowUniversalAccessFromFileURLs(bool46.booleanValue());
            }
        }
        if (hashMap.get("cacheEnabled") != null) {
            Boolean bool47 = this.options.t;
            Boolean bool48 = gVar.t;
            if (bool47 != bool48) {
                setCacheEnabled(bool48.booleanValue());
            }
        }
        if (hashMap.get("appCachePath") != null && ((str2 = this.options.M) == null || !str2.equals(gVar.M))) {
            settings.setAppCachePath(gVar.M);
        }
        if (hashMap.get("blockNetworkImage") != null) {
            Boolean bool49 = this.options.N;
            Boolean bool50 = gVar.N;
            if (bool49 != bool50) {
                settings.setBlockNetworkImage(bool50.booleanValue());
            }
        }
        if (hashMap.get("blockNetworkLoads") != null) {
            Boolean bool51 = this.options.O;
            Boolean bool52 = gVar.O;
            if (bool51 != bool52) {
                settings.setBlockNetworkLoads(bool52.booleanValue());
            }
        }
        if (hashMap.get("cacheMode") != null && !this.options.P.equals(gVar.P)) {
            settings.setCacheMode(gVar.P.intValue());
        }
        if (hashMap.get("cursiveFontFamily") != null && !this.options.Q.equals(gVar.Q)) {
            settings.setCursiveFontFamily(gVar.Q);
        }
        if (hashMap.get("defaultFixedFontSize") != null && !this.options.R.equals(gVar.R)) {
            settings.setDefaultFixedFontSize(gVar.R.intValue());
        }
        if (hashMap.get("defaultFontSize") != null && !this.options.S.equals(gVar.S)) {
            settings.setDefaultFontSize(gVar.S.intValue());
        }
        if (hashMap.get("defaultTextEncodingName") != null && !this.options.T.equals(gVar.T)) {
            settings.setDefaultTextEncodingName(gVar.T);
        }
        if (Build.VERSION.SDK_INT >= 24 && hashMap.get("disabledActionModeMenuItems") != null && ((num3 = this.options.U) == null || !num3.equals(gVar.U))) {
            settings.setDisabledActionModeMenuItems(gVar.U.intValue());
        }
        if (hashMap.get("fantasyFontFamily") != null && !this.options.V.equals(gVar.V)) {
            settings.setFantasyFontFamily(gVar.V);
        }
        if (hashMap.get("fixedFontFamily") != null && !this.options.W.equals(gVar.W)) {
            settings.setFixedFontFamily(gVar.W);
        }
        if (hashMap.get("forceDark") != null && !this.options.X.equals(gVar.X) && Build.VERSION.SDK_INT >= 29) {
            settings.setForceDark(gVar.X.intValue());
        }
        if (hashMap.get("geolocationEnabled") != null) {
            Boolean bool53 = this.options.Y;
            Boolean bool54 = gVar.Y;
            if (bool53 != bool54) {
                settings.setGeolocationEnabled(bool54.booleanValue());
            }
        }
        if (hashMap.get("layoutAlgorithm") != null) {
            WebSettings.LayoutAlgorithm layoutAlgorithm = this.options.Z;
            WebSettings.LayoutAlgorithm layoutAlgorithm2 = gVar.Z;
            if (layoutAlgorithm != layoutAlgorithm2) {
                if (Build.VERSION.SDK_INT >= 19 && layoutAlgorithm2.equals(WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING)) {
                    settings.setLayoutAlgorithm(gVar.Z);
                } else {
                    settings.setLayoutAlgorithm(gVar.Z);
                }
            }
        }
        if (hashMap.get("loadWithOverviewMode") != null) {
            Boolean bool55 = this.options.a0;
            Boolean bool56 = gVar.a0;
            if (bool55 != bool56) {
                settings.setLoadWithOverviewMode(bool56.booleanValue());
            }
        }
        if (hashMap.get("loadsImagesAutomatically") != null) {
            Boolean bool57 = this.options.b0;
            Boolean bool58 = gVar.b0;
            if (bool57 != bool58) {
                settings.setLoadsImagesAutomatically(bool58.booleanValue());
            }
        }
        if (hashMap.get("minimumFontSize") != null && !this.options.f16548k.equals(gVar.f16548k)) {
            settings.setMinimumFontSize(gVar.f16548k.intValue());
        }
        if (hashMap.get("minimumLogicalFontSize") != null && !this.options.c0.equals(gVar.c0)) {
            settings.setMinimumLogicalFontSize(gVar.c0.intValue());
        }
        if (hashMap.get("initialScale") != null && !this.options.d0.equals(gVar.d0)) {
            setInitialScale(gVar.d0.intValue());
        }
        if (hashMap.get("needInitialFocus") != null) {
            Boolean bool59 = this.options.e0;
            Boolean bool60 = gVar.e0;
            if (bool59 != bool60) {
                settings.setNeedInitialFocus(bool60.booleanValue());
            }
        }
        if (hashMap.get("offscreenPreRaster") != null) {
            Boolean bool61 = this.options.f0;
            Boolean bool62 = gVar.f0;
            if (bool61 != bool62 && Build.VERSION.SDK_INT >= 23) {
                settings.setOffscreenPreRaster(bool62.booleanValue());
            }
        }
        if (hashMap.get("sansSerifFontFamily") != null && !this.options.g0.equals(gVar.g0)) {
            settings.setSansSerifFontFamily(gVar.g0);
        }
        if (hashMap.get("serifFontFamily") != null && !this.options.h0.equals(gVar.h0)) {
            settings.setSerifFontFamily(gVar.h0);
        }
        if (hashMap.get("standardFontFamily") != null && !this.options.i0.equals(gVar.i0)) {
            settings.setStandardFontFamily(gVar.i0);
        }
        if (hashMap.get("preferredContentMode") != null && !this.options.p.equals(gVar.p)) {
            int i2 = i.f16432a[com.pichillilorenzo.flutter_inappwebview.InAppWebView.i.fromValue(gVar.p.intValue()).ordinal()];
            if (i2 == 1) {
                setDesktopMode(true);
            } else if (i2 == 2 || i2 == 3) {
                setDesktopMode(false);
            }
        }
        if (hashMap.get("saveFormData") != null) {
            Boolean bool63 = this.options.j0;
            Boolean bool64 = gVar.j0;
            if (bool63 != bool64) {
                settings.setSaveFormData(bool64.booleanValue());
            }
        }
        if (hashMap.get("incognito") != null) {
            Boolean bool65 = this.options.s;
            Boolean bool66 = gVar.s;
            if (bool65 != bool66) {
                setIncognito(bool66.booleanValue());
            }
        }
        if (hashMap.get("hardwareAcceleration") != null) {
            Boolean bool67 = this.options.l0;
            Boolean bool68 = gVar.l0;
            if (bool67 != bool68) {
                if (bool68.booleanValue()) {
                    setLayerType(2, null);
                } else {
                    setLayerType(1, null);
                }
            }
        }
        if (hashMap.get("regexToCancelSubFramesLoading") != null && ((str = this.options.n0) == null || !str.equals(gVar.n0))) {
            if (gVar.n0 == null) {
                this.regexToCancelSubFramesLoadingCompiled = null;
            } else {
                this.regexToCancelSubFramesLoadingCompiled = Pattern.compile(this.options.n0);
            }
        }
        if (gVar.o != null) {
            this.contentBlockerHandler.a().clear();
            for (Map<String, Map<String, Object>> map : gVar.o) {
                this.contentBlockerHandler.a().add(new com.pichillilorenzo.flutter_inappwebview.b.a(com.pichillilorenzo.flutter_inappwebview.b.e.a(map.get("trigger")), com.pichillilorenzo.flutter_inappwebview.b.b.a(map.get("action"))));
            }
        }
        if (hashMap.get("scrollBarStyle") != null && !this.options.q0.equals(gVar.q0)) {
            setScrollBarStyle(gVar.q0.intValue());
        }
        if (hashMap.get("scrollBarDefaultDelayBeforeFade") != null && ((num2 = this.options.s0) == null || !num2.equals(gVar.s0))) {
            setScrollBarDefaultDelayBeforeFade(gVar.s0.intValue());
        }
        if (hashMap.get("scrollbarFadingEnabled") != null && !this.options.t0.equals(gVar.t0)) {
            setScrollbarFadingEnabled(gVar.t0.booleanValue());
        }
        if (hashMap.get("scrollBarFadeDuration") != null && ((num = this.options.u0) == null || !num.equals(gVar.u0))) {
            setScrollBarFadeDuration(gVar.u0.intValue());
        }
        if (hashMap.get("verticalScrollbarPosition") != null && !this.options.r0.equals(gVar.r0)) {
            setVerticalScrollbarPosition(gVar.r0.intValue());
        }
        if (hashMap.get("disableVerticalScroll") != null) {
            Boolean bool69 = this.options.v;
            Boolean bool70 = gVar.v;
            if (bool69 != bool70) {
                setVerticalScrollBarEnabled(!bool70.booleanValue() && gVar.f16549l.booleanValue());
            }
        }
        if (hashMap.get("disableHorizontalScroll") != null) {
            Boolean bool71 = this.options.w;
            Boolean bool72 = gVar.w;
            if (bool71 != bool72) {
                setHorizontalScrollBarEnabled(!bool72.booleanValue() && gVar.m.booleanValue());
            }
        }
        if (hashMap.get("overScrollMode") != null && !this.options.o0.equals(gVar.o0)) {
            setOverScrollMode(gVar.o0.intValue());
        }
        if (hashMap.get("networkAvailable") != null) {
            Boolean bool73 = this.options.p0;
            Boolean bool74 = gVar.p0;
            if (bool73 != bool74) {
                setNetworkAvailable(bool74.booleanValue());
            }
        }
        if (hashMap.get("rendererPriorityPolicy") != null && ((this.options.v0.get("rendererRequestedPriority") != gVar.v0.get("rendererRequestedPriority") || this.options.v0.get("waivedWhenNotVisible") != gVar.v0.get("waivedWhenNotVisible")) && Build.VERSION.SDK_INT >= 26)) {
            setRendererPriorityPolicy(((Integer) gVar.v0.get("rendererRequestedPriority")).intValue(), ((Boolean) gVar.v0.get("waivedWhenNotVisible")).booleanValue());
        }
        this.options = gVar;
    }

    @Override // android.view.View
    public ActionMode startActionMode(ActionMode.Callback callback) {
        return rebuildActionMode(super.startActionMode(callback), callback);
    }

    public void takeScreenshot(k.d dVar) {
        this.headlessHandler.post(new q(dVar));
    }

    public static Map<String, Object> getCertificateMap(SslCertificate sslCertificate) {
        byte[] bArr = null;
        if (sslCertificate == null) {
            return null;
        }
        SslCertificate.DName issuedBy = sslCertificate.getIssuedBy();
        HashMap hashMap = new HashMap();
        hashMap.put("CName", issuedBy.getCName());
        hashMap.put("DName", issuedBy.getDName());
        hashMap.put("OName", issuedBy.getOName());
        hashMap.put("UName", issuedBy.getUName());
        SslCertificate.DName issuedTo = sslCertificate.getIssuedTo();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("CName", issuedTo.getCName());
        hashMap2.put("DName", issuedTo.getDName());
        hashMap2.put("OName", issuedTo.getOName());
        hashMap2.put("UName", issuedTo.getUName());
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                X509Certificate x509Certificate = sslCertificate.getX509Certificate();
                if (x509Certificate != null) {
                    bArr = x509Certificate.getEncoded();
                }
            } catch (CertificateEncodingException e2) {
                e2.printStackTrace();
            }
        } else {
            try {
                bArr = com.pichillilorenzo.flutter_inappwebview.r.a(sslCertificate).getEncoded();
            } catch (CertificateEncodingException e3) {
                e3.printStackTrace();
            }
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("issuedBy", hashMap);
        hashMap3.put("issuedTo", hashMap2);
        hashMap3.put("validNotAfterDate", Long.valueOf(sslCertificate.getValidNotAfterDate().getTime()));
        hashMap3.put("validNotBeforeDate", Long.valueOf(sslCertificate.getValidNotBeforeDate().getTime()));
        hashMap3.put("x509Certificate", bArr);
        return hashMap3;
    }

    @RequiresApi(api = 19)
    public void getSelectedText(k.d dVar) {
        getSelectedText(new h(this, dVar));
    }

    @Override // android.view.View
    @RequiresApi(api = 23)
    public ActionMode startActionMode(ActionMode.Callback callback, int i2) {
        return rebuildActionMode(super.startActionMode(callback, i2), callback);
    }

    public void loadUrl(String str, Map<String, String> map, k.d dVar) {
        if (!str.isEmpty()) {
            loadUrl(str, map);
            dVar.a(true);
        } else {
            dVar.a(LOG_TAG, "url is empty", null);
        }
    }

    public void loadFile(String str, Map<String, String> map, k.d dVar) {
        try {
            String b2 = com.pichillilorenzo.flutter_inappwebview.r.b(str);
            if (!b2.isEmpty()) {
                loadUrl(b2, map);
                dVar.a(true);
            } else {
                dVar.a(LOG_TAG, "url is empty", null);
            }
        } catch (IOException e2) {
            dVar.a(LOG_TAG, str + " asset file cannot be found!", e2);
        }
    }

    public InAppWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new com.pichillilorenzo.flutter_inappwebview.b.d();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.f16413g = new Point(0, 0);
        this.f16414h = new Point(0, 0);
    }

    public InAppWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new com.pichillilorenzo.flutter_inappwebview.b.d();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.f16413g = new Point(0, 0);
        this.f16414h = new Point(0, 0);
    }

    public InAppWebView(Context context, Object obj, Object obj2, Integer num, com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar, Map<String, Object> map, View view) {
        super(context, view);
        this.isLoading = false;
        this.scale = getResources().getDisplayMetrics().density;
        this.okHttpClientCacheSize = 10485760;
        this.contentBlockerHandler = new com.pichillilorenzo.flutter_inappwebview.b.d();
        this.gestureDetector = null;
        this.floatingContextMenu = null;
        this.contextMenu = null;
        this.headlessHandler = new Handler(Looper.getMainLooper());
        this.newCheckScrollStoppedTask = 100;
        this.newCheckContextMenuShouldBeClosedTaskTask = 100;
        this.f16413g = new Point(0, 0);
        this.f16414h = new Point(0, 0);
        if (obj instanceof InAppBrowserActivity) {
            this.inAppBrowserActivity = (InAppBrowserActivity) obj;
        } else if (obj instanceof com.pichillilorenzo.flutter_inappwebview.InAppWebView.c) {
            this.flutterWebView = (com.pichillilorenzo.flutter_inappwebview.InAppWebView.c) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        this.channel = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.flutterWebView.f16458f;
        this.id = obj2;
        this.windowId = num;
        this.options = gVar;
        this.contextMenu = map;
        com.pichillilorenzo.flutter_inappwebview.q.f16643f.registerForContextMenu(this);
    }
}
