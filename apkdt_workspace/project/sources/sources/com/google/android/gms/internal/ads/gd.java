package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class gd {

    /* renamed from: b, reason: collision with root package name */
    public static final Handler f6840b = new jw0(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    private static final String f6841c = AdView.class.getName();

    /* renamed from: d, reason: collision with root package name */
    private static final String f6842d = com.google.android.gms.ads.f.class.getName();

    /* renamed from: e, reason: collision with root package name */
    private static final String f6843e = PublisherAdView.class.getName();

    /* renamed from: f, reason: collision with root package name */
    private static final String f6844f = com.google.android.gms.ads.doubleclick.d.class.getName();

    /* renamed from: g, reason: collision with root package name */
    private static final String f6845g = SearchAdView.class.getName();

    /* renamed from: h, reason: collision with root package name */
    private static final String f6846h = com.google.android.gms.ads.c.class.getName();

    /* renamed from: a, reason: collision with root package name */
    private float f6847a = -1.0f;

    public static void a(boolean z, HttpURLConnection httpURLConnection, @Nullable String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    public static int b(Context context, int i2) {
        return a(context.getResources().getDisplayMetrics(), i2);
    }

    public static boolean c(Context context, int i2) {
        return com.google.android.gms.common.d.a().a(context, i2) == 0;
    }

    public static boolean d(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    @TargetApi(17)
    public static boolean e(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (com.google.android.gms.common.util.o.d()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            intValue = displayMetrics.heightPixels;
            intValue2 = displayMetrics.widthPixels;
        } else {
            try {
                intValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                intValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception unused) {
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == intValue && displayMetrics.widthPixels == intValue2;
    }

    public static int f(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int b(DisplayMetrics displayMetrics, int i2) {
        return Math.round(i2 / displayMetrics.density);
    }

    @Nullable
    public static String b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    public static boolean c(Context context) {
        int a2 = com.google.android.gms.common.d.a().a(context, com.google.android.gms.common.h.f5182a);
        return a2 == 0 || a2 == 2;
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static String c() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return bigInteger;
    }

    public static int a(DisplayMetrics displayMetrics, int i2) {
        return (int) TypedValue.applyDimension(1, i2, displayMetrics);
    }

    @VisibleForTesting
    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) mu1.e().a(aw1.f5672h));
    }

    public final int a(Context context, int i2) {
        if (this.f6847a < 0.0f) {
            synchronized (this) {
                if (this.f6847a < 0.0f) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f6847a = displayMetrics.density;
                }
            }
        }
        return Math.round(i2 / this.f6847a);
    }

    public final void a(ViewGroup viewGroup, zztw zztwVar, String str, String str2) {
        qd.d(str2);
        a(viewGroup, zztwVar, str, -65536, -16777216);
    }

    public final void a(ViewGroup viewGroup, zztw zztwVar, String str) {
        a(viewGroup, zztwVar, str, -16777216, -1);
    }

    private final void a(ViewGroup viewGroup, zztw zztwVar, String str, int i2, int i3) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i2);
        textView.setBackgroundColor(i3);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i2);
        int b2 = b(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zztwVar.f11251j - b2, zztwVar.f11248g - b2, 17));
        viewGroup.addView(frameLayout, zztwVar.f11251j, zztwVar.f11248g);
    }

    public static String a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || a()) {
            string = "emulator";
        }
        return a(string);
    }

    public static boolean a() {
        return Build.DEVICE.startsWith("generic");
    }

    public static String a(String str) {
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    @Nullable
    @VisibleForTesting
    public static String a(StackTraceElement[] stackTraceElementArr, String str) {
        int i2;
        int i3;
        String str2;
        while (true) {
            i3 = i2 + 1;
            if (i3 >= stackTraceElementArr.length) {
                str2 = null;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i2];
            String className = stackTraceElement.getClassName();
            i2 = ("loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) && (f6841c.equalsIgnoreCase(className) || f6842d.equalsIgnoreCase(className) || f6843e.equalsIgnoreCase(className) || f6844f.equalsIgnoreCase(className) || f6845g.equalsIgnoreCase(className) || f6846h.equalsIgnoreCase(className))) ? 0 : i3;
        }
        str2 = stackTraceElementArr[i3].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb = new StringBuilder();
            int i4 = 2;
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                while (true) {
                    int i5 = i4 - 1;
                    if (i4 <= 0 || !stringTokenizer.hasMoreElements()) {
                        break;
                    }
                    sb.append(".");
                    sb.append(stringTokenizer.nextToken());
                    i4 = i5;
                }
                str = sb.toString();
            }
            if (str2 != null && !str2.contains(str)) {
                return str2;
            }
        }
        return null;
    }

    public final void a(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        a(context, str, str2, bundle, true, new jd(this));
    }

    public static void a(Context context, @Nullable String str, String str2, Bundle bundle, boolean z, ld ldVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            int a2 = com.google.android.gms.common.d.a().a(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(a2);
            sb.append(".15300000");
            str = sb.toString();
        }
        bundle.putString("js", str);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        ldVar.a(appendQueryParameter.toString());
    }

    public static Throwable a(Throwable th) {
        if (((Boolean) mu1.e().a(aw1.f5671g)).booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th2 = null;
        while (!linkedList.isEmpty()) {
            Throwable th3 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th3.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (b(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else {
                    String className = stackTraceElement.getClassName();
                    if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                        arrayList.add(stackTraceElement);
                    } else {
                        arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                    }
                }
            }
            if (z) {
                if (th2 == null) {
                    th2 = new Throwable(th3.getMessage());
                } else {
                    th2 = new Throwable(th3.getMessage(), th2);
                }
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            }
        }
        return th2;
    }
}
