package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wa {

    /* renamed from: h */
    public static final Handler f10063h = new qa(Looper.getMainLooper());

    /* renamed from: e */
    @GuardedBy("userAgentLock")
    private String f10068e;

    /* renamed from: a */
    private AtomicReference<Pattern> f10064a = new AtomicReference<>(null);

    /* renamed from: b */
    private AtomicReference<Pattern> f10065b = new AtomicReference<>(null);

    /* renamed from: c */
    private boolean f10066c = true;

    /* renamed from: d */
    private final Object f10067d = new Object();

    /* renamed from: f */
    private boolean f10069f = false;

    /* renamed from: g */
    private boolean f10070g = false;

    public static boolean b(Context context, String str) {
        Context c2 = z7.c(context);
        return com.google.android.gms.common.o.c.a(c2).a(str, c2.getPackageName()) == 0;
    }

    @VisibleForTesting
    public static String c(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable unused) {
            return a();
        }
    }

    private static int[] d() {
        return new int[]{0, 0};
    }

    public static lv1 e(Context context) {
        return new lv1(context);
    }

    @SuppressLint({"NewApi"})
    public static String f(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                return runningTaskInfo.topActivity.getClassName();
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static boolean g(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                        return true;
                    }
                    PowerManager powerManager = (PowerManager) context.getSystemService("power");
                    return !(powerManager == null ? false : powerManager.isScreenOn());
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int h(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    @Nullable
    private static KeyguardManager i(Context context) {
        Object systemService = context.getSystemService("keyguard");
        if (systemService == null || !(systemService instanceof KeyguardManager)) {
            return null;
        }
        return (KeyguardManager) systemService;
    }

    @TargetApi(16)
    public static boolean j(Context context) {
        KeyguardManager i2;
        return context != null && com.google.android.gms.common.util.o.c() && (i2 = i(context)) != null && i2.isKeyguardLocked();
    }

    public static boolean k(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            qd.b("Error loading class.", th);
            com.google.android.gms.ads.internal.n.g().a(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String l(Context context) {
        return !((Boolean) mu1.e().a(aw1.v3)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static Bundle m(Context context) {
        if (!((Boolean) mu1.e().a(aw1.w3)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
        for (int i2 = 0; i2 < 4; i2++) {
            String str = strArr[i2];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    public static boolean n(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public final void a(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", a(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(android.view.View r2) {
        /*
            android.view.View r2 = r2.getRootView()
            r0 = 0
            if (r2 == 0) goto L12
            android.content.Context r2 = r2.getContext()
            boolean r1 = r2 instanceof android.app.Activity
            if (r1 == 0) goto L12
            android.app.Activity r2 = (android.app.Activity) r2
            goto L13
        L12:
            r2 = r0
        L13:
            r1 = 0
            if (r2 != 0) goto L17
            return r1
        L17:
            android.view.Window r2 = r2.getWindow()
            if (r2 != 0) goto L1e
            goto L22
        L1e:
            android.view.WindowManager$LayoutParams r0 = r2.getAttributes()
        L22:
            if (r0 == 0) goto L2d
            int r2 = r0.flags
            r0 = 524288(0x80000, float:7.34684E-40)
            r2 = r2 & r0
            if (r2 == 0) goto L2d
            r2 = 1
            return r2
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.wa.e(android.view.View):boolean");
    }

    public static int c(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            qd.d(sb.toString());
            return 0;
        }
    }

    public static AlertDialog.Builder d(Context context) {
        return new AlertDialog.Builder(context);
    }

    public final boolean b(Context context) {
        if (this.f10070g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new ab(this, null), intentFilter);
        this.f10070g = true;
        return true;
    }

    public static String c() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(str2);
        return sb.toString();
    }

    private static Bitmap d(@NonNull View view) {
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            r0 = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        } catch (RuntimeException e2) {
            qd.b("Fail to capture the web view", e2);
        }
        return r0;
    }

    public static void a(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            new wc(context, str, (String) obj).b();
        }
    }

    public static int f(@Nullable View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public static int[] c(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? d() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static String e() {
        Resources b2 = com.google.android.gms.ads.internal.n.g().b();
        return b2 != null ? b2.getString(com.google.android.gms.ads.m.a.s7) : "Test Ad";
    }

    public static String a(InputStreamReader inputStreamReader) {
        StringBuilder sb = new StringBuilder(FileUtil.STREAM_BUFFER_SIZE);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read != -1) {
                sb.append(cArr, 0, read);
            } else {
                return sb.toString();
            }
        }
    }

    public static String b() {
        return UUID.randomUUID().toString();
    }

    public static boolean e(String str) {
        if (!kd.a()) {
            return false;
        }
        if (!((Boolean) mu1.e().a(aw1.K2)).booleanValue()) {
            return false;
        }
        String str2 = (String) mu1.e().a(aw1.M2);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) mu1.e().a(aw1.L2);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final int[] b(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] d2 = (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? d() : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{mu1.a().a(activity, d2[0]), mu1.a().a(activity, d2[1])};
    }

    private static Bitmap c(@NonNull View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width != 0 && height != 0) {
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(createBitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
                return createBitmap;
            }
            qd.d("Width or height of view is zero");
            return null;
        } catch (RuntimeException e2) {
            qd.b("Fail to capture the webview", e2);
            return null;
        }
    }

    public final boolean a(Context context) {
        if (this.f10069f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new za(this, null), intentFilter);
        this.f10069f = true;
        return true;
    }

    public static Bitmap b(View view) {
        if (view == null) {
            return null;
        }
        Bitmap d2 = d(view);
        return d2 == null ? c(view) : d2;
    }

    @TargetApi(18)
    public static void b(Context context, Intent intent) {
        if (intent != null && com.google.android.gms.common.util.o.e()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static String c(Context context, String str) {
        try {
            return new String(com.google.android.gms.common.util.k.a((InputStream) context.openFileInput(str), true), "UTF-8");
        } catch (IOException unused) {
            qd.a("Error reading from internal storage.");
            return "";
        }
    }

    public final void a(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(a(context, str));
    }

    private static String a() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(HanziToPinyin.Token.SEPARATOR);
            sb.append(Build.VERSION.RELEASE);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ");
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/");
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    @Nullable
    public static WebResourceResponse c(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", com.google.android.gms.ads.internal.n.c().a(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new gc(context).a(str2, hashMap).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e2) {
            qd.c("Could not fetch MRAID JS.", e2);
            return null;
        }
    }

    public static void b(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes("UTF-8"));
            openFileOutput.close();
        } catch (Exception e2) {
            qd.b("Error writing to file in internal storage.", e2);
        }
    }

    public final boolean b(String str) {
        return a(str, this.f10065b, (String) mu1.e().a(aw1.k0));
    }

    public final String a(Context context, String str) {
        synchronized (this.f10067d) {
            if (this.f10068e != null) {
                return this.f10068e;
            }
            if (str == null) {
                return a();
            }
            try {
                this.f10068e = com.google.android.gms.ads.internal.n.e().a(context);
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.f10068e)) {
                mu1.a();
                if (!gd.b()) {
                    this.f10068e = null;
                    f10063h.post(new ya(this, context));
                    while (this.f10068e == null) {
                        try {
                            this.f10067d.wait();
                        } catch (InterruptedException unused2) {
                            this.f10068e = a();
                            String valueOf = String.valueOf(this.f10068e);
                            qd.d(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                        }
                    }
                } else {
                    this.f10068e = c(context);
                }
            }
            String valueOf2 = String.valueOf(this.f10068e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 10 + String.valueOf(str).length());
            sb.append(valueOf2);
            sb.append(" (Mobile; ");
            sb.append(str);
            this.f10068e = sb.toString();
            try {
                if (com.google.android.gms.common.o.c.a(context).a()) {
                    this.f10068e = String.valueOf(this.f10068e).concat(";aia");
                }
            } catch (Exception e2) {
                com.google.android.gms.ads.internal.n.g().a(e2, "AdUtil.getUserAgent");
            }
            this.f10068e = String.valueOf(this.f10068e).concat(")");
            return this.f10068e;
        }
    }

    public final JSONObject a(Map<String, ?> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                a(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final JSONObject a(@Nullable Bundle bundle, JSONObject jSONObject) {
        if (bundle != null) {
            try {
                return a(bundle);
            } catch (JSONException e2) {
                qd.b("Error converting Bundle to JSON", e2);
            }
        }
        return null;
    }

    public final JSONObject a(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    private final JSONArray a(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            a(jSONArray, it.next());
        }
        return jSONArray;
    }

    private final void a(JSONArray jSONArray, Object obj) {
        if (obj instanceof Bundle) {
            jSONArray.put(a((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(a((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(a((Collection<?>) obj));
            return;
        }
        if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                a(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
            return;
        }
        jSONArray.put(obj);
    }

    private final void a(JSONObject jSONObject, String str, Object obj) {
        if (obj instanceof Bundle) {
            jSONObject.put(str, a((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, a((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, a((Collection<?>) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, a(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'A';
        if (c2 < 'A' || c2 > 'F') {
            c3 = 'a';
            if (c2 < 'a' || c2 > 'f') {
                throw new IllegalArgumentException("Invalid Hex.");
            }
        }
        return (c2 - c3) + 10;
    }

    public static Map<String, String> a(Uri uri) {
        if (!((Boolean) mu1.e().a(aw1.F3)).booleanValue()) {
            if (uri == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            com.google.android.gms.ads.internal.n.e();
            for (String str : uri.getQueryParameterNames()) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
            return hashMap;
        }
        if (uri == null) {
            return null;
        }
        HashMap hashMap2 = new HashMap(20);
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return hashMap2;
        }
        int length = encodedQuery.length();
        StringBuilder sb = new StringBuilder(100);
        StringBuilder sb2 = new StringBuilder(length);
        StringBuilder sb3 = sb;
        int i2 = 0;
        while (i2 < length) {
            char charAt = encodedQuery.charAt(i2);
            if (charAt == '%') {
                byte[] bArr = new byte[(length - i2) / 3];
                int i3 = 0;
                while (i2 < length - 2 && charAt == '%') {
                    try {
                        bArr[i3] = (byte) ((a(encodedQuery.charAt(i2 + 1)) << 4) + a(encodedQuery.charAt(i2 + 2)));
                        i3++;
                    } catch (IllegalArgumentException unused) {
                    }
                    i2 += 3;
                    if (i2 < length) {
                        charAt = encodedQuery.charAt(i2);
                    }
                }
                try {
                    sb3.append(new String(bArr, 0, i3, "UTF-8"));
                } catch (UnsupportedEncodingException unused2) {
                }
                if (charAt != '%') {
                }
            } else if (charAt == '&') {
                if (sb.length() > 0 && sb3 != sb) {
                    hashMap2.put(sb.toString(), sb2.toString());
                    sb.setLength(0);
                    sb2.setLength(0);
                }
                sb3 = sb;
            } else if (charAt == '+') {
                sb3.append(' ');
            } else if (charAt != '=') {
                sb3.append(charAt);
            } else if (sb3 != sb2) {
                sb3 = sb2;
            } else {
                sb3.append(charAt);
            }
            i2++;
        }
        if (sb.length() > 0 && sb3 != sb) {
            hashMap2.put(sb.toString(), sb2.toString());
        }
        return hashMap2;
    }

    public final int[] a(Activity activity) {
        int[] c2 = c(activity);
        return new int[]{mu1.a().a(activity, c2[0]), mu1.a().a(activity, c2[1])};
    }

    public static DisplayMetrics a(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static Bitmap a(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public static PopupWindow a(View view, int i2, int i3, boolean z) {
        return new PopupWindow(view, i2, i3, false);
    }

    public final void a(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.n.c();
        bundle.putString("device", c());
        bundle.putString("eids", TextUtils.join(",", aw1.a()));
        mu1.a();
        gd.a(context, str, str2, bundle, true, new xa(this, context, str));
    }

    public static void a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            yd.f10540a.execute(runnable);
        }
    }

    public static void a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public final boolean a(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return a(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, i(context));
    }

    public final boolean a(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!com.google.android.gms.ads.internal.n.c().f10066c) {
            if ((keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode()) && !e(view)) {
                z = false;
                if (view.getVisibility() == 0 && view.isShown()) {
                    if ((powerManager != null || powerManager.isScreenOn()) && z) {
                        if (((Boolean) mu1.e().a(aw1.Z0)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }
        z = true;
        if (view.getVisibility() == 0) {
            if (powerManager != null || powerManager.isScreenOn()) {
                if (((Boolean) mu1.e().a(aw1.Z0)).booleanValue()) {
                }
                return true;
            }
        }
        return false;
    }

    @TargetApi(18)
    public static void a(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            b(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            qd.a(sb.toString());
        } catch (ActivityNotFoundException e2) {
            qd.b("No browser is found.", e2);
        }
    }

    public final boolean a(String str) {
        return a(str, this.f10064a, (String) mu1.e().a(aw1.j0));
    }

    private static boolean a(String str, AtomicReference<Pattern> atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static WebResourceResponse a(HttpURLConnection httpURLConnection) {
        com.google.android.gms.ads.internal.n.c();
        String contentType = httpURLConnection.getContentType();
        String str = "";
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        com.google.android.gms.ads.internal.n.c();
        String contentType2 = httpURLConnection.getContentType();
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(";");
            if (split.length != 1) {
                int i2 = 1;
                while (true) {
                    if (i2 >= split.length) {
                        break;
                    }
                    if (split[i2].trim().startsWith("charset")) {
                        String[] split2 = split[i2].trim().split("=");
                        if (split2.length > 1) {
                            str = split2[1].trim();
                            break;
                        }
                    }
                    i2++;
                }
            }
        }
        String str2 = str;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap hashMap = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null && entry.getValue().size() > 0) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return com.google.android.gms.ads.internal.n.e().a(trim, str2, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    public static void a(Context context, Throwable th) {
        if (context == null) {
            return;
        }
        boolean z = false;
        try {
            z = ((Boolean) mu1.e().a(aw1.f5670f)).booleanValue();
        } catch (IllegalStateException unused) {
        }
        if (z) {
            com.google.android.gms.common.util.g.a(context, th);
        }
    }
}
