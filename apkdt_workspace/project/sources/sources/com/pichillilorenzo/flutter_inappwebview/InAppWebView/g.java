package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.os.Build;
import android.webkit.WebSettings;
import com.pichillilorenzo.flutter_inappwebview.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: InAppWebViewOptions.java */
/* loaded from: classes2.dex */
public class g implements l<InAppWebView> {
    public Integer H;
    public String M;
    public Integer U;
    public WebSettings.LayoutAlgorithm Z;
    public String n0;

    /* renamed from: a, reason: collision with root package name */
    public Boolean f16538a = false;

    /* renamed from: b, reason: collision with root package name */
    public Boolean f16539b = false;

    /* renamed from: c, reason: collision with root package name */
    public Boolean f16540c = false;

    /* renamed from: d, reason: collision with root package name */
    public Boolean f16541d = false;

    /* renamed from: e, reason: collision with root package name */
    public String f16542e = "";

    /* renamed from: f, reason: collision with root package name */
    public String f16543f = "";

    /* renamed from: g, reason: collision with root package name */
    public Boolean f16544g = true;

    /* renamed from: h, reason: collision with root package name */
    public Boolean f16545h = false;

    /* renamed from: i, reason: collision with root package name */
    public Boolean f16546i = false;

    /* renamed from: j, reason: collision with root package name */
    public Boolean f16547j = true;

    /* renamed from: k, reason: collision with root package name */
    public Integer f16548k = 8;

    /* renamed from: l, reason: collision with root package name */
    public Boolean f16549l = true;
    public Boolean m = true;
    public List<String> n = new ArrayList();
    public List<Map<String, Map<String, Object>>> o = new ArrayList();
    public Integer p = Integer.valueOf(i.RECOMMENDED.toValue());
    public Boolean q = false;
    public Boolean r = false;
    public Boolean s = false;
    public Boolean t = true;
    public Boolean u = false;
    public Boolean v = false;
    public Boolean w = false;
    public Boolean x = false;
    public Boolean y = true;
    public Integer z = 100;
    public Boolean A = false;
    public Boolean B = true;
    public Boolean C = false;
    public Boolean D = false;
    public Boolean E = true;
    public Boolean F = true;
    public Boolean G = true;
    public Boolean I = true;
    public Boolean J = true;
    public Boolean K = true;
    public Boolean L = true;
    public Boolean N = false;
    public Boolean O = false;
    public Integer P = -1;
    public String Q = "cursive";
    public Integer R = 16;
    public Integer S = 16;
    public String T = "UTF-8";
    public String V = "fantasy";
    public String W = "monospace";
    public Integer X = 0;
    public Boolean Y = true;
    public Boolean a0 = true;
    public Boolean b0 = true;
    public Integer c0 = 8;
    public Integer d0 = 0;
    public Boolean e0 = true;
    public Boolean f0 = false;
    public String g0 = "sans-serif";
    public String h0 = "sans-serif";
    public String i0 = "sans-serif";
    public Boolean j0 = true;
    public Boolean k0 = true;
    public Boolean l0 = true;
    public Boolean m0 = false;
    public Integer o0 = 1;
    public Boolean p0 = null;
    public Integer q0 = 0;
    public Integer r0 = 0;
    public Integer s0 = null;
    public Boolean t0 = true;
    public Integer u0 = null;
    public Map<String, Object> v0 = new HashMap();
    public Boolean w0 = false;
    public Boolean x0 = false;
    public Boolean y0 = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InAppWebViewOptions.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f16550a = new int[WebSettings.LayoutAlgorithm.values().length];

        static {
            try {
                f16550a[WebSettings.LayoutAlgorithm.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16550a[WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16550a[WebSettings.LayoutAlgorithm.NARROW_COLUMNS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private String b() {
        WebSettings.LayoutAlgorithm layoutAlgorithm = this.Z;
        if (layoutAlgorithm == null) {
            return null;
        }
        int i2 = a.f16550a[layoutAlgorithm.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return null;
                }
                return "NARROW_COLUMNS";
            }
            if (Build.VERSION.SDK_INT >= 19) {
                return "TEXT_AUTOSIZING";
            }
        }
        return "NORMAL";
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0026. Please report as an issue. */
    public g a(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value != null) {
                char c2 = 65535;
                switch (key.hashCode()) {
                    case -2116596967:
                        if (key.equals("disableHorizontalScroll")) {
                            c2 = 22;
                            break;
                        }
                        break;
                    case -2095822429:
                        if (key.equals("scrollBarDefaultDelayBeforeFade")) {
                            c2 = 'F';
                            break;
                        }
                        break;
                    case -2020146208:
                        if (key.equals("useWideViewPort")) {
                            c2 = 31;
                            break;
                        }
                        break;
                    case -2014672109:
                        if (key.equals("allowFileAccessFromFileURLs")) {
                            c2 = '$';
                            break;
                        }
                        break;
                    case -1931277743:
                        if (key.equals("defaultFontSize")) {
                            c2 = ',';
                            break;
                        }
                        break;
                    case -1851090878:
                        if (key.equals("supportZoom")) {
                            c2 = 28;
                            break;
                        }
                        break;
                    case -1845480382:
                        if (key.equals("scrollbarFadingEnabled")) {
                            c2 = 'G';
                            break;
                        }
                        break;
                    case -1834028884:
                        if (key.equals("defaultTextEncodingName")) {
                            c2 = '-';
                            break;
                        }
                        break;
                    case -1746033750:
                        if (key.equals("needInitialFocus")) {
                            c2 = '8';
                            break;
                        }
                        break;
                    case -1712086669:
                        if (key.equals("useShouldOverrideUrlLoading")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1673892229:
                        if (key.equals("preferredContentMode")) {
                            c2 = 15;
                            break;
                        }
                        break;
                    case -1657552268:
                        if (key.equals("allowContentAccess")) {
                            c2 = '\"';
                            break;
                        }
                        break;
                    case -1626497241:
                        if (key.equals("fixedFontFamily")) {
                            c2 = '0';
                            break;
                        }
                        break;
                    case -1615103092:
                        if (key.equals("builtInZoomControls")) {
                            c2 = 26;
                            break;
                        }
                        break;
                    case -1607633676:
                        if (key.equals("javaScriptEnabled")) {
                            c2 = 6;
                            break;
                        }
                        break;
                    case -1578962296:
                        if (key.equals("hardwareAcceleration")) {
                            c2 = '?';
                            break;
                        }
                        break;
                    case -1578507205:
                        if (key.equals("networkAvailable")) {
                            c2 = 'C';
                            break;
                        }
                        break;
                    case -1574470051:
                        if (key.equals("useShouldInterceptFetchRequest")) {
                            c2 = 17;
                            break;
                        }
                        break;
                    case -1480607106:
                        if (key.equals("loadsImagesAutomatically")) {
                            c2 = '5';
                            break;
                        }
                        break;
                    case -1455624881:
                        if (key.equals("resourceCustomSchemes")) {
                            c2 = '\r';
                            break;
                        }
                        break;
                    case -1443655540:
                        if (key.equals("disabledActionModeMenuItems")) {
                            c2 = '.';
                            break;
                        }
                        break;
                    case -1423657812:
                        if (key.equals("incognito")) {
                            c2 = 18;
                            break;
                        }
                        break;
                    case -1321236988:
                        if (key.equals("overScrollMode")) {
                            c2 = 'B';
                            break;
                        }
                        break;
                    case -1146673624:
                        if (key.equals("domStorageEnabled")) {
                            c2 = 30;
                            break;
                        }
                        break;
                    case -1143245914:
                        if (key.equals("disableContextMenu")) {
                            c2 = 23;
                            break;
                        }
                        break;
                    case -1069908877:
                        if (key.equals("debuggingEnabled")) {
                            c2 = 7;
                            break;
                        }
                        break;
                    case -1038715033:
                        if (key.equals("useShouldInterceptAjaxRequest")) {
                            c2 = 16;
                            break;
                        }
                        break;
                    case -1003454816:
                        if (key.equals("textZoom")) {
                            c2 = 24;
                            break;
                        }
                        break;
                    case -800676066:
                        if (key.equals("minimumFontSize")) {
                            c2 = '\n';
                            break;
                        }
                        break;
                    case -767637403:
                        if (key.equals("layoutAlgorithm")) {
                            c2 = '3';
                            break;
                        }
                        break;
                    case -759238347:
                        if (key.equals("clearCache")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case -742944736:
                        if (key.equals("transparentBackground")) {
                            c2 = 20;
                            break;
                        }
                        break;
                    case -728016272:
                        if (key.equals("allowUniversalAccessFromFileURLs")) {
                            c2 = '%';
                            break;
                        }
                        break;
                    case -710246074:
                        if (key.equals("databaseEnabled")) {
                            c2 = 29;
                            break;
                        }
                        break;
                    case -706772569:
                        if (key.equals("useShouldInterceptRequest")) {
                            c2 = 'J';
                            break;
                        }
                        break;
                    case -553792443:
                        if (key.equals("cacheMode")) {
                            c2 = ')';
                            break;
                        }
                        break;
                    case -443422049:
                        if (key.equals("horizontalScrollBarEnabled")) {
                            c2 = '\f';
                            break;
                        }
                        break;
                    case -435719349:
                        if (key.equals("scrollBarStyle")) {
                            c2 = 'D';
                            break;
                        }
                        break;
                    case -421090202:
                        if (key.equals("initialScale")) {
                            c2 = '7';
                            break;
                        }
                        break;
                    case -321425255:
                        if (key.equals("verticalScrollbarPosition")) {
                            c2 = 'E';
                            break;
                        }
                        break;
                    case -229178645:
                        if (key.equals("disableVerticalScroll")) {
                            c2 = 21;
                            break;
                        }
                        break;
                    case -227577491:
                        if (key.equals("javaScriptCanOpenWindowsAutomatically")) {
                            c2 = '\b';
                            break;
                        }
                        break;
                    case -225165915:
                        if (key.equals("offscreenPreRaster")) {
                            c2 = '9';
                            break;
                        }
                        break;
                    case -216514471:
                        if (key.equals("fantasyFontFamily")) {
                            c2 = '/';
                            break;
                        }
                        break;
                    case -158057575:
                        if (key.equals("rendererPriorityPolicy")) {
                            c2 = 'I';
                            break;
                        }
                        break;
                    case -98561827:
                        if (key.equals("sansSerifFontFamily")) {
                            c2 = ':';
                            break;
                        }
                        break;
                    case 57717170:
                        if (key.equals("regexToCancelSubFramesLoading")) {
                            c2 = 'A';
                            break;
                        }
                        break;
                    case 174479508:
                        if (key.equals("useOnDownloadStart")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 257886264:
                        if (key.equals("cursiveFontFamily")) {
                            c2 = '*';
                            break;
                        }
                        break;
                    case 273267153:
                        if (key.equals("mediaPlaybackRequiresUserGesture")) {
                            c2 = '\t';
                            break;
                        }
                        break;
                    case 296040698:
                        if (key.equals("blockNetworkImage")) {
                            c2 = '\'';
                            break;
                        }
                        break;
                    case 298870764:
                        if (key.equals("blockNetworkLoads")) {
                            c2 = '(';
                            break;
                        }
                        break;
                    case 311430650:
                        if (key.equals("userAgent")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 387230482:
                        if (key.equals("useOnRenderProcessGone")) {
                            c2 = 'K';
                            break;
                        }
                        break;
                    case 393481210:
                        if (key.equals("useOnLoadResource")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 397237599:
                        if (key.equals("cacheEnabled")) {
                            c2 = 19;
                            break;
                        }
                        break;
                    case 408799019:
                        if (key.equals("saveFormData")) {
                            c2 = '=';
                            break;
                        }
                        break;
                    case 590869196:
                        if (key.equals("applicationNameForUserAgent")) {
                            c2 = 5;
                            break;
                        }
                        break;
                    case 760962753:
                        if (key.equals("mixedContentMode")) {
                            c2 = '!';
                            break;
                        }
                        break;
                    case 849171798:
                        if (key.equals("scrollBarFadeDuration")) {
                            c2 = 'H';
                            break;
                        }
                        break;
                    case 1138246185:
                        if (key.equals("allowFileAccess")) {
                            c2 = '#';
                            break;
                        }
                        break;
                    case 1156608422:
                        if (key.equals("appCachePath")) {
                            c2 = '&';
                            break;
                        }
                        break;
                    case 1301942064:
                        if (key.equals("standardFontFamily")) {
                            c2 = '<';
                            break;
                        }
                        break;
                    case 1320461707:
                        if (key.equals("displayZoomControls")) {
                            c2 = 27;
                            break;
                        }
                        break;
                    case 1344414299:
                        if (key.equals("geolocationEnabled")) {
                            c2 = '2';
                            break;
                        }
                        break;
                    case 1409728424:
                        if (key.equals("loadWithOverviewMode")) {
                            c2 = '4';
                            break;
                        }
                        break;
                    case 1474890029:
                        if (key.equals("safeBrowsingEnabled")) {
                            c2 = ' ';
                            break;
                        }
                        break;
                    case 1496887792:
                        if (key.equals("serifFontFamily")) {
                            c2 = ';';
                            break;
                        }
                        break;
                    case 1527546113:
                        if (key.equals("forceDark")) {
                            c2 = '1';
                            break;
                        }
                        break;
                    case 1583791742:
                        if (key.equals("disableDefaultErrorPage")) {
                            c2 = 'L';
                            break;
                        }
                        break;
                    case 1759079762:
                        if (key.equals("contentBlockers")) {
                            c2 = 14;
                            break;
                        }
                        break;
                    case 1774215812:
                        if (key.equals("supportMultipleWindows")) {
                            c2 = '@';
                            break;
                        }
                        break;
                    case 1793491907:
                        if (key.equals("defaultFixedFontSize")) {
                            c2 = '+';
                            break;
                        }
                        break;
                    case 1812525393:
                        if (key.equals("thirdPartyCookiesEnabled")) {
                            c2 = '>';
                            break;
                        }
                        break;
                    case 1956631083:
                        if (key.equals("minimumLogicalFontSize")) {
                            c2 = '6';
                            break;
                        }
                        break;
                    case 2011947505:
                        if (key.equals("verticalScrollBarEnabled")) {
                            c2 = 11;
                            break;
                        }
                        break;
                    case 2038327673:
                        if (key.equals("clearSessionCache")) {
                            c2 = 25;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        this.f16538a = (Boolean) value;
                        break;
                    case 1:
                        this.f16539b = (Boolean) value;
                        break;
                    case 2:
                        this.f16540c = (Boolean) value;
                        break;
                    case 3:
                        this.f16541d = (Boolean) value;
                        break;
                    case 4:
                        this.f16542e = (String) value;
                        break;
                    case 5:
                        this.f16543f = (String) value;
                        break;
                    case 6:
                        this.f16544g = (Boolean) value;
                        break;
                    case 7:
                        this.f16545h = (Boolean) value;
                        break;
                    case '\b':
                        this.f16546i = (Boolean) value;
                        break;
                    case '\t':
                        this.f16547j = (Boolean) value;
                        break;
                    case '\n':
                        this.f16548k = (Integer) value;
                        break;
                    case 11:
                        this.f16549l = (Boolean) value;
                        break;
                    case '\f':
                        this.m = (Boolean) value;
                        break;
                    case '\r':
                        this.n = (List) value;
                        break;
                    case 14:
                        this.o = (List) value;
                        break;
                    case 15:
                        this.p = (Integer) value;
                        break;
                    case 16:
                        this.q = (Boolean) value;
                        break;
                    case 17:
                        this.r = (Boolean) value;
                        break;
                    case 18:
                        this.s = (Boolean) value;
                        break;
                    case 19:
                        this.t = (Boolean) value;
                        break;
                    case 20:
                        this.u = (Boolean) value;
                        break;
                    case 21:
                        this.v = (Boolean) value;
                        break;
                    case 22:
                        this.w = (Boolean) value;
                        break;
                    case 23:
                        this.x = (Boolean) value;
                        break;
                    case 24:
                        this.z = (Integer) value;
                        break;
                    case 25:
                        this.A = (Boolean) value;
                        break;
                    case 26:
                        this.B = (Boolean) value;
                        break;
                    case 27:
                        this.C = (Boolean) value;
                        break;
                    case 28:
                        this.y = (Boolean) value;
                        break;
                    case 29:
                        this.D = (Boolean) value;
                        break;
                    case 30:
                        this.E = (Boolean) value;
                        break;
                    case 31:
                        this.F = (Boolean) value;
                        break;
                    case ' ':
                        this.G = (Boolean) value;
                        break;
                    case '!':
                        this.H = (Integer) value;
                        break;
                    case '\"':
                        this.I = (Boolean) value;
                        break;
                    case '#':
                        this.J = (Boolean) value;
                        break;
                    case '$':
                        this.K = (Boolean) value;
                        break;
                    case '%':
                        this.L = (Boolean) value;
                        break;
                    case '&':
                        this.M = (String) value;
                        break;
                    case '\'':
                        this.N = (Boolean) value;
                        break;
                    case '(':
                        this.O = (Boolean) value;
                        break;
                    case ')':
                        this.P = (Integer) value;
                        break;
                    case '*':
                        this.Q = (String) value;
                        break;
                    case '+':
                        this.R = (Integer) value;
                        break;
                    case ',':
                        this.S = (Integer) value;
                        break;
                    case '-':
                        this.T = (String) value;
                        break;
                    case '.':
                        this.U = (Integer) value;
                        break;
                    case '/':
                        this.V = (String) value;
                        break;
                    case '0':
                        this.W = (String) value;
                        break;
                    case '1':
                        this.X = (Integer) value;
                        break;
                    case '2':
                        this.Y = (Boolean) value;
                        break;
                    case '3':
                        a((String) value);
                        break;
                    case '4':
                        this.a0 = (Boolean) value;
                        break;
                    case '5':
                        this.b0 = (Boolean) value;
                        break;
                    case '6':
                        this.c0 = (Integer) value;
                        break;
                    case '7':
                        this.d0 = (Integer) value;
                        break;
                    case '8':
                        this.e0 = (Boolean) value;
                        break;
                    case '9':
                        this.f0 = (Boolean) value;
                        break;
                    case ':':
                        this.g0 = (String) value;
                        break;
                    case ';':
                        this.h0 = (String) value;
                        break;
                    case '<':
                        this.i0 = (String) value;
                        break;
                    case '=':
                        this.j0 = (Boolean) value;
                        break;
                    case '>':
                        this.k0 = (Boolean) value;
                        break;
                    case '?':
                        this.l0 = (Boolean) value;
                        break;
                    case '@':
                        this.m0 = (Boolean) value;
                        break;
                    case 'A':
                        this.n0 = (String) value;
                        break;
                    case 'B':
                        this.o0 = (Integer) value;
                        break;
                    case 'C':
                        this.p0 = (Boolean) value;
                        break;
                    case 'D':
                        this.q0 = (Integer) value;
                        break;
                    case 'E':
                        this.r0 = (Integer) value;
                        break;
                    case 'F':
                        this.s0 = (Integer) value;
                        break;
                    case 'G':
                        this.t0 = (Boolean) value;
                        break;
                    case 'H':
                        this.u0 = (Integer) value;
                        break;
                    case 'I':
                        this.v0 = (Map) value;
                        break;
                    case 'J':
                        this.w0 = (Boolean) value;
                        break;
                    case 'K':
                        this.x0 = (Boolean) value;
                        break;
                    case 'L':
                        this.y0 = (Boolean) value;
                        break;
                }
            }
        }
        return this;
    }

    public Map<String, Object> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("useShouldOverrideUrlLoading", this.f16538a);
        hashMap.put("useOnLoadResource", this.f16539b);
        hashMap.put("useOnDownloadStart", this.f16540c);
        hashMap.put("clearCache", this.f16541d);
        hashMap.put("userAgent", this.f16542e);
        hashMap.put("applicationNameForUserAgent", this.f16543f);
        hashMap.put("javaScriptEnabled", this.f16544g);
        hashMap.put("debuggingEnabled", this.f16545h);
        hashMap.put("javaScriptCanOpenWindowsAutomatically", this.f16546i);
        hashMap.put("mediaPlaybackRequiresUserGesture", this.f16547j);
        hashMap.put("minimumFontSize", this.f16548k);
        hashMap.put("verticalScrollBarEnabled", this.f16549l);
        hashMap.put("horizontalScrollBarEnabled", this.m);
        hashMap.put("resourceCustomSchemes", this.n);
        hashMap.put("contentBlockers", this.o);
        hashMap.put("preferredContentMode", this.p);
        hashMap.put("useShouldInterceptAjaxRequest", this.q);
        hashMap.put("useShouldInterceptFetchRequest", this.r);
        hashMap.put("incognito", this.s);
        hashMap.put("cacheEnabled", this.t);
        hashMap.put("transparentBackground", this.u);
        hashMap.put("disableVerticalScroll", this.v);
        hashMap.put("disableHorizontalScroll", this.w);
        hashMap.put("disableContextMenu", this.x);
        hashMap.put("textZoom", this.z);
        hashMap.put("clearSessionCache", this.A);
        hashMap.put("builtInZoomControls", this.B);
        hashMap.put("displayZoomControls", this.C);
        hashMap.put("supportZoom", this.y);
        hashMap.put("databaseEnabled", this.D);
        hashMap.put("domStorageEnabled", this.E);
        hashMap.put("useWideViewPort", this.F);
        hashMap.put("safeBrowsingEnabled", this.G);
        hashMap.put("mixedContentMode", this.H);
        hashMap.put("allowContentAccess", this.I);
        hashMap.put("allowFileAccess", this.J);
        hashMap.put("allowFileAccessFromFileURLs", this.K);
        hashMap.put("allowUniversalAccessFromFileURLs", this.L);
        hashMap.put("appCachePath", this.M);
        hashMap.put("blockNetworkImage", this.N);
        hashMap.put("blockNetworkLoads", this.O);
        hashMap.put("cacheMode", this.P);
        hashMap.put("cursiveFontFamily", this.Q);
        hashMap.put("defaultFixedFontSize", this.R);
        hashMap.put("defaultFontSize", this.S);
        hashMap.put("defaultTextEncodingName", this.T);
        hashMap.put("disabledActionModeMenuItems", this.U);
        hashMap.put("fantasyFontFamily", this.V);
        hashMap.put("fixedFontFamily", this.W);
        hashMap.put("forceDark", this.X);
        hashMap.put("geolocationEnabled", this.Y);
        hashMap.put("layoutAlgorithm", b());
        hashMap.put("loadWithOverviewMode", this.a0);
        hashMap.put("loadsImagesAutomatically", this.b0);
        hashMap.put("minimumLogicalFontSize", this.c0);
        hashMap.put("initialScale", this.d0);
        hashMap.put("needInitialFocus", this.e0);
        hashMap.put("offscreenPreRaster", this.f0);
        hashMap.put("sansSerifFontFamily", this.g0);
        hashMap.put("serifFontFamily", this.h0);
        hashMap.put("standardFontFamily", this.i0);
        hashMap.put("saveFormData", this.j0);
        hashMap.put("thirdPartyCookiesEnabled", this.k0);
        hashMap.put("hardwareAcceleration", this.l0);
        hashMap.put("supportMultipleWindows", this.m0);
        hashMap.put("regexToCancelSubFramesLoading", this.n0);
        hashMap.put("overScrollMode", this.o0);
        hashMap.put("networkAvailable", this.p0);
        hashMap.put("scrollBarStyle", this.q0);
        hashMap.put("verticalScrollbarPosition", this.r0);
        hashMap.put("scrollBarDefaultDelayBeforeFade", this.s0);
        hashMap.put("scrollbarFadingEnabled", this.t0);
        hashMap.put("scrollBarFadeDuration", this.u0);
        hashMap.put("rendererPriorityPolicy", this.v0);
        hashMap.put("useShouldInterceptRequest", this.w0);
        hashMap.put("useOnRenderProcessGone", this.x0);
        hashMap.put("disableDefaultErrorPage", this.y0);
        return hashMap;
    }

    public Map<String, Object> a(InAppWebView inAppWebView) {
        Map<String, Object> a2 = a();
        if (inAppWebView != null) {
            WebSettings settings = inAppWebView.getSettings();
            a2.put("userAgent", settings.getUserAgentString());
            a2.put("javaScriptEnabled", Boolean.valueOf(settings.getJavaScriptEnabled()));
            a2.put("javaScriptCanOpenWindowsAutomatically", Boolean.valueOf(settings.getJavaScriptCanOpenWindowsAutomatically()));
            a2.put("mediaPlaybackRequiresUserGesture", Boolean.valueOf(settings.getMediaPlaybackRequiresUserGesture()));
            a2.put("minimumFontSize", Integer.valueOf(settings.getMinimumFontSize()));
            a2.put("verticalScrollBarEnabled", Boolean.valueOf(inAppWebView.isVerticalScrollBarEnabled()));
            a2.put("horizontalScrollBarEnabled", Boolean.valueOf(inAppWebView.isHorizontalScrollBarEnabled()));
            a2.put("textZoom", Integer.valueOf(settings.getTextZoom()));
            a2.put("builtInZoomControls", Boolean.valueOf(settings.getBuiltInZoomControls()));
            a2.put("supportZoom", Boolean.valueOf(settings.supportZoom()));
            a2.put("displayZoomControls", Boolean.valueOf(settings.getDisplayZoomControls()));
            a2.put("databaseEnabled", Boolean.valueOf(settings.getDatabaseEnabled()));
            a2.put("domStorageEnabled", Boolean.valueOf(settings.getDomStorageEnabled()));
            a2.put("useWideViewPort", Boolean.valueOf(settings.getUseWideViewPort()));
            if (Build.VERSION.SDK_INT >= 26) {
                a2.put("safeBrowsingEnabled", Boolean.valueOf(settings.getSafeBrowsingEnabled()));
            }
            if (Build.VERSION.SDK_INT >= 21) {
                a2.put("mixedContentMode", Integer.valueOf(settings.getMixedContentMode()));
            }
            a2.put("allowContentAccess", Boolean.valueOf(settings.getAllowContentAccess()));
            a2.put("allowFileAccess", Boolean.valueOf(settings.getAllowFileAccess()));
            a2.put("allowFileAccessFromFileURLs", Boolean.valueOf(settings.getAllowFileAccessFromFileURLs()));
            a2.put("allowUniversalAccessFromFileURLs", Boolean.valueOf(settings.getAllowUniversalAccessFromFileURLs()));
            a2.put("blockNetworkImage", Boolean.valueOf(settings.getBlockNetworkImage()));
            a2.put("blockNetworkLoads", Boolean.valueOf(settings.getBlockNetworkLoads()));
            a2.put("cacheMode", Integer.valueOf(settings.getCacheMode()));
            a2.put("cursiveFontFamily", settings.getCursiveFontFamily());
            a2.put("defaultFixedFontSize", Integer.valueOf(settings.getDefaultFixedFontSize()));
            a2.put("defaultFontSize", Integer.valueOf(settings.getDefaultFontSize()));
            a2.put("defaultTextEncodingName", settings.getDefaultTextEncodingName());
            if (Build.VERSION.SDK_INT >= 24) {
                a2.put("disabledActionModeMenuItems", Integer.valueOf(settings.getDisabledActionModeMenuItems()));
            }
            a2.put("fantasyFontFamily", settings.getFantasyFontFamily());
            a2.put("fixedFontFamily", settings.getFixedFontFamily());
            if (Build.VERSION.SDK_INT >= 29) {
                a2.put("forceDark", Integer.valueOf(settings.getForceDark()));
            }
            a2.put("layoutAlgorithm", settings.getLayoutAlgorithm().name());
            a2.put("loadWithOverviewMode", Boolean.valueOf(settings.getLoadWithOverviewMode()));
            a2.put("loadsImagesAutomatically", Boolean.valueOf(settings.getLoadsImagesAutomatically()));
            a2.put("minimumLogicalFontSize", Integer.valueOf(settings.getMinimumLogicalFontSize()));
            if (Build.VERSION.SDK_INT >= 23) {
                a2.put("offscreenPreRaster", Boolean.valueOf(settings.getOffscreenPreRaster()));
            }
            a2.put("sansSerifFontFamily", settings.getSansSerifFontFamily());
            a2.put("serifFontFamily", settings.getSerifFontFamily());
            a2.put("standardFontFamily", settings.getStandardFontFamily());
            a2.put("saveFormData", Boolean.valueOf(settings.getSaveFormData()));
            a2.put("supportMultipleWindows", Boolean.valueOf(settings.supportMultipleWindows()));
            a2.put("overScrollMode", Integer.valueOf(inAppWebView.getOverScrollMode()));
            a2.put("scrollBarStyle", Integer.valueOf(inAppWebView.getScrollBarStyle()));
            a2.put("verticalScrollbarPosition", Integer.valueOf(inAppWebView.getVerticalScrollbarPosition()));
            a2.put("scrollBarDefaultDelayBeforeFade", Integer.valueOf(inAppWebView.getScrollBarDefaultDelayBeforeFade()));
            a2.put("scrollbarFadingEnabled", Boolean.valueOf(inAppWebView.isScrollbarFadingEnabled()));
            a2.put("scrollBarFadeDuration", Integer.valueOf(inAppWebView.getScrollBarFadeDuration()));
            if (Build.VERSION.SDK_INT >= 26) {
                HashMap hashMap = new HashMap();
                hashMap.put("rendererRequestedPriority", Integer.valueOf(inAppWebView.getRendererRequestedPriority()));
                hashMap.put("waivedWhenNotVisible", Boolean.valueOf(inAppWebView.getRendererPriorityWaivedWhenNotVisible()));
                a2.put("rendererPriorityPolicy", hashMap);
            }
        }
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r6) {
        /*
            r5 = this;
            if (r6 == 0) goto L54
            r0 = -1
            int r1 = r6.hashCode()
            r2 = -1986416409(0xffffffff8999b0e7, float:-3.699977E-33)
            r3 = 2
            r4 = 1
            if (r1 == r2) goto L2d
            r2 = 1055046617(0x3ee2bbd9, float:0.4428394)
            if (r1 == r2) goto L23
            r2 = 1561826623(0x5d17953f, float:6.826691E17)
            if (r1 == r2) goto L19
            goto L36
        L19:
            java.lang.String r1 = "TEXT_AUTOSIZING"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L36
            r0 = 2
            goto L36
        L23:
            java.lang.String r1 = "NARROW_COLUMNS"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L36
            r0 = 0
            goto L36
        L2d:
            java.lang.String r1 = "NORMAL"
            boolean r6 = r6.equals(r1)
            if (r6 == 0) goto L36
            r0 = 1
        L36:
            if (r0 == 0) goto L3d
            if (r0 == r4) goto L41
            if (r0 == r3) goto L45
            goto L54
        L3d:
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.NARROW_COLUMNS
            r5.Z = r6
        L41:
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.NORMAL
            r5.Z = r6
        L45:
            int r6 = android.os.Build.VERSION.SDK_INT
            r0 = 19
            if (r6 < r0) goto L50
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.TEXT_AUTOSIZING
            r5.Z = r6
            goto L54
        L50:
            android.webkit.WebSettings$LayoutAlgorithm r6 = android.webkit.WebSettings.LayoutAlgorithm.NORMAL
            r5.Z = r6
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pichillilorenzo.flutter_inappwebview.InAppWebView.g.a(java.lang.String):void");
    }
}
