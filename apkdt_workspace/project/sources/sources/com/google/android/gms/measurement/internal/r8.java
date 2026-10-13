package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzp;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
public final class r8 extends e5 {

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f13200g = {"firebase_", "google_", "ga_"};

    /* renamed from: c, reason: collision with root package name */
    private SecureRandom f13201c;

    /* renamed from: d, reason: collision with root package name */
    private final AtomicLong f13202d;

    /* renamed from: e, reason: collision with root package name */
    private int f13203e;

    /* renamed from: f, reason: collision with root package name */
    private Integer f13204f;

    static {
        Collections.unmodifiableList(Arrays.asList("source", "medium", "campaign", "term", "content"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r8(j4 j4Var) {
        super(j4Var);
        this.f13204f = null;
        this.f13202d = new AtomicLong(0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(String str) {
        com.google.android.gms.common.internal.m.b(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    @VisibleForTesting
    private static boolean f(String str) {
        com.google.android.gms.common.internal.m.a(str);
        return str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$");
    }

    private static int g(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        return "_id".equals(str) ? 256 : 36;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean h(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MessageDigest u() {
        MessageDigest messageDigest;
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle a(@NonNull Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str = uri.getQueryParameter("utm_campaign");
                str2 = uri.getQueryParameter("utm_source");
                str3 = uri.getQueryParameter("utm_medium");
                str4 = uri.getQueryParameter("gclid");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                bundle.putString("campaign", str);
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("source", str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("medium", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString("gclid", str4);
            }
            String queryParameter = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("term", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("content", queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("aclid", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("cp1", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("anid", queryParameter5);
            }
            return bundle;
        } catch (UnsupportedOperationException e2) {
            zzab().t().a("Install referrer url isn't a hierarchical URI", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str, String str2) {
        if (str2 == null) {
            zzab().s().a("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzab().s().a("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            zzab().s().a("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                zzab().s().a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(String str, String str2) {
        if (str2 == null) {
            zzab().s().a("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzab().s().a("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt) && codePointAt != 95) {
            zzab().s().a("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                zzab().s().a("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (f(str)) {
                return true;
            }
            if (this.f12908a.j()) {
                zzab().s().a("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", f3.a(str));
            }
            return false;
        }
        if (!TextUtils.isEmpty(str2)) {
            if (f(str2)) {
                return true;
            }
            zzab().s().a("Invalid admob_app_id. Analytics disabled.", f3.a(str2));
            return false;
        }
        if (this.f12908a.j()) {
            zzab().s().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean o() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.e5
    @WorkerThread
    protected final void p() {
        g();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                zzab().t().a("Utils falling back to Random for random id");
            }
        }
        this.f13202d.set(nextLong);
    }

    public final long q() {
        long andIncrement;
        long j2;
        if (this.f13202d.get() == 0) {
            synchronized (this.f13202d) {
                long nextLong = new Random(System.nanoTime() ^ a().a()).nextLong();
                int i2 = this.f13203e + 1;
                this.f13203e = i2;
                j2 = nextLong + i2;
            }
            return j2;
        }
        synchronized (this.f13202d) {
            this.f13202d.compareAndSet(-1L, 1L);
            andIncrement = this.f13202d.getAndIncrement();
        }
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final SecureRandom r() {
        g();
        if (this.f13201c == null) {
            this.f13201c = new SecureRandom();
        }
        return this.f13201c;
    }

    public final int s() {
        if (this.f13204f == null) {
            this.f13204f = Integer.valueOf(com.google.android.gms.common.d.a().a(getContext()) / 1000);
        }
        return this.f13204f.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String t() {
        byte[] bArr = new byte[16];
        r().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null) {
            return false;
        }
        return str.equals(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str) {
        if (!c("user property", str)) {
            return 6;
        }
        if (a("user property", l5.f13058a, str)) {
            return !a("user property", 24, str) ? 6 : 0;
        }
        return 15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object c(String str, Object obj) {
        if ("_ldl".equals(str)) {
            return a(g(str), obj, true);
        }
        return a(g(str), obj, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String p = d().p();
        zzae();
        return p.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b(String str, Object obj) {
        boolean a2;
        if ("_ldl".equals(str)) {
            a2 = a("user property referrer", str, g(str), obj, false);
        } else {
            a2 = a("user property", str, g(str), obj, false);
        }
        return a2 ? 0 : 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean c(String str) {
        g();
        if (com.google.android.gms.common.o.c.a(getContext()).a(str) == 0) {
            return true;
        }
        zzab().x().a("Permission not granted", str);
        return false;
    }

    private static boolean b(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    @VisibleForTesting
    private final boolean c(Context context, String str) {
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b(str, 64);
            if (b2 == null || b2.signatures == null || b2.signatures.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(b2.signatures[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e2) {
            zzab().q().a("Package name not found", e2);
            return true;
        } catch (CertificateException e3) {
            zzab().q().a("Error obtaining certificate", e3);
            return true;
        }
    }

    public static Bundle b(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                int i2 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i2 < parcelableArr.length) {
                        if (parcelableArr[i2] instanceof Bundle) {
                            parcelableArr[i2] = new Bundle((Bundle) parcelableArr[i2]);
                        }
                        i2++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i2 < list.size()) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                        i2++;
                    }
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, String[] strArr, String str2) {
        boolean z;
        boolean z2;
        if (str2 == null) {
            zzab().s().a("Name is required and can't be null. Type", str);
            return false;
        }
        com.google.android.gms.common.internal.m.a(str2);
        String[] strArr2 = f13200g;
        int length = strArr2.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            }
            if (str2.startsWith(strArr2[i2])) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            zzab().s().a("Name starts with reserved prefix. Type, name", str, str2);
            return false;
        }
        if (strArr != null) {
            com.google.android.gms.common.internal.m.a(strArr);
            int length2 = strArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length2) {
                    z2 = false;
                    break;
                }
                if (e(str2, strArr[i3])) {
                    z2 = true;
                    break;
                }
                i3++;
            }
            if (z2) {
                zzab().s().a("Name is reserved. Type, name", str, str2);
                return false;
            }
        }
        return true;
    }

    public static ArrayList<Bundle> b(List<zzq> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzq zzqVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzqVar.f13399e);
            bundle.putString("origin", zzqVar.f13400f);
            bundle.putLong("creation_timestamp", zzqVar.f13402h);
            bundle.putString("name", zzqVar.f13401g.f13385f);
            g5.a(bundle, zzqVar.f13401g.j());
            bundle.putBoolean("active", zzqVar.f13403i);
            String str = zzqVar.f13404j;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzai zzaiVar = zzqVar.f13405k;
            if (zzaiVar != null) {
                bundle.putString("timed_out_event_name", zzaiVar.f13377e);
                zzah zzahVar = zzqVar.f13405k.f13378f;
                if (zzahVar != null) {
                    bundle.putBundle("timed_out_event_params", zzahVar.j());
                }
            }
            bundle.putLong("trigger_timeout", zzqVar.f13406l);
            zzai zzaiVar2 = zzqVar.m;
            if (zzaiVar2 != null) {
                bundle.putString("triggered_event_name", zzaiVar2.f13377e);
                zzah zzahVar2 = zzqVar.m.f13378f;
                if (zzahVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzahVar2.j());
                }
            }
            bundle.putLong("triggered_timestamp", zzqVar.f13401g.f13386g);
            bundle.putLong("time_to_live", zzqVar.n);
            zzai zzaiVar3 = zzqVar.o;
            if (zzaiVar3 != null) {
                bundle.putString("expired_event_name", zzaiVar3.f13377e);
                zzah zzahVar3 = zzqVar.o.f13378f;
                if (zzahVar3 != null) {
                    bundle.putBundle("expired_event_params", zzahVar3.j());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str, int i2, String str2) {
        if (str2 == null) {
            zzab().s().a("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i2) {
            return true;
        }
        zzab().s().a("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i2), str2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(String str) {
        if (!c("event", str)) {
            return 2;
        }
        if (a("event", j5.f13020a, str)) {
            return !a("event", 40, str) ? 2 : 0;
        }
        return 13;
    }

    private final boolean a(String str, String str2, int i2, Object obj, boolean z) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                if ((obj instanceof Bundle) && z) {
                    return true;
                }
                if ((obj instanceof Parcelable[]) && z) {
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (!(parcelable instanceof Bundle)) {
                            zzab().v().a("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str2);
                            return false;
                        }
                    }
                    return true;
                }
                if (!(obj instanceof ArrayList) || !z) {
                    return false;
                }
                ArrayList arrayList = (ArrayList) obj;
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    if (!(obj2 instanceof Bundle)) {
                        zzab().v().a("All ArrayList elements must be of type Bundle. Value type, name", obj2.getClass(), str2);
                        return false;
                    }
                }
                return true;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) > i2) {
                zzab().v().a("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    private static Object a(int i2, Object obj, boolean z) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return a(String.valueOf(obj), i2, z);
        }
        return null;
    }

    public static String a(String str, int i2, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i2) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i2))).concat("...");
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object a(String str, Object obj) {
        if ("_ev".equals(str)) {
            return a(256, obj, true);
        }
        return a(h(str) ? 256 : 100, obj, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle[] a(Object obj) {
        if (obj instanceof Bundle) {
            return new Bundle[]{(Bundle) obj};
        }
        if (obj instanceof Parcelable[]) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            return (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
        }
        if (!(obj instanceof ArrayList)) {
            return null;
        }
        ArrayList arrayList = (ArrayList) obj;
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x007e, code lost:
    
        if (a("event param", 40, r15) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0065, code lost:
    
        if (a("event param", 40, r15) == false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle a(java.lang.String r17, java.lang.String r18, android.os.Bundle r19, @androidx.annotation.Nullable java.util.List<java.lang.String> r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.r8.a(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean, boolean):android.os.Bundle");
    }

    private static boolean a(Bundle bundle, int i2) {
        if (bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i2);
        return true;
    }

    private static void a(Bundle bundle, Object obj) {
        com.google.android.gms.common.internal.m.a(bundle);
        if (obj != null) {
            if ((obj instanceof String) || (obj instanceof CharSequence)) {
                bundle.putLong("_el", String.valueOf(obj).length());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (str != null) {
            zzab().v().a("Not putting event parameter. Invalid value type. name, type", i().b(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void a(int i2, String str, String str2, int i3) {
        a((String) null, i2, str, str2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, int i2, String str2, String str3, int i3) {
        Bundle bundle = new Bundle();
        a(bundle, i2);
        if (d().e(str, j.p0)) {
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                bundle.putString(str2, str3);
            }
        } else if (!TextUtils.isEmpty(str2)) {
            bundle.putString(str2, str3);
        }
        if (i2 == 6 || i2 == 7 || i2 == 2) {
            bundle.putLong("_el", i3);
        }
        this.f12908a.zzae();
        this.f12908a.v().b("auto", "_err", bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public static long a(byte[] bArr) {
        com.google.android.gms.common.internal.m.a(bArr);
        int i2 = 0;
        com.google.android.gms.common.internal.m.b(bArr.length > 0);
        long j2 = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j2 += (bArr[length] & 255) << i2;
            i2 += 8;
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context, boolean z) {
        com.google.android.gms.common.internal.m.a(context);
        if (Build.VERSION.SDK_INT >= 24) {
            return b(context, "com.google.android.gms.measurement.AppMeasurementJobService");
        }
        return b(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Boolean bool, Boolean bool2) {
        if (bool == null && bool2 == null) {
            return true;
        }
        if (bool == null) {
            return false;
        }
        return bool.equals(bool2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@Nullable List<String> list, @Nullable List<String> list2) {
        if (list == null && list2 == null) {
            return true;
        }
        if (list == null) {
            return false;
        }
        return list.equals(list2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object a2 = a(str, bundle.get(str));
                if (a2 == null) {
                    zzab().v().a("Param value can't be null", i().b(str));
                } else {
                    a(bundle2, str, a2);
                }
            }
        }
        return bundle2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzai a(String str, String str2, Bundle bundle, String str3, long j2, boolean z, boolean z2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (a(str2) == 0) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            bundle2.putString("_o", str3);
            return new zzai(str2, new zzah(a(a(str, str2, bundle2, com.google.android.gms.common.util.f.a("_o"), false, false))), str3, j2);
        }
        zzab().q().a("Invalid conditional property event name", i().c(str2));
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0069 -> B:7:0x0076). Please report as a decompilation issue!!! */
    @WorkerThread
    public final long a(Context context, String str) {
        g();
        com.google.android.gms.common.internal.m.a(context);
        com.google.android.gms.common.internal.m.b(str);
        PackageManager packageManager = context.getPackageManager();
        MessageDigest u = u();
        long j2 = -1;
        if (u == null) {
            zzab().q().a("Could not get MD5 instance");
        } else {
            if (packageManager != null) {
                try {
                } catch (PackageManager.NameNotFoundException e2) {
                    zzab().q().a("Package name not found", e2);
                }
                if (!c(context, str)) {
                    PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b(getContext().getPackageName(), 64);
                    if (b2.signatures != null && b2.signatures.length > 0) {
                        j2 = a(u.digest(b2.signatures[0].toByteArray()));
                    } else {
                        zzab().t().a("Could not get signatures");
                    }
                }
            }
            j2 = 0;
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public final int a(int i2) {
        return com.google.android.gms.common.d.a().a(getContext(), com.google.android.gms.common.h.f5182a);
    }

    public static long a(long j2, long j3) {
        return (j2 + (j3 * 60000)) / 86400000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(Bundle bundle, long j2) {
        long j3 = bundle.getLong("_et");
        if (j3 != 0) {
            zzab().t().a("Params already contained engagement", Long.valueOf(j3));
        }
        bundle.putLong("_et", j2 + j3);
    }

    public final void a(zzp zzpVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning string value to wrapper", e2);
        }
    }

    public final void a(zzp zzpVar, long j2) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j2);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning long value to wrapper", e2);
        }
    }

    public final void a(zzp zzpVar, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i2);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning int value to wrapper", e2);
        }
    }

    public final void a(zzp zzpVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning byte array to wrapper", e2);
        }
    }

    public final void a(zzp zzpVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning boolean value to wrapper", e2);
        }
    }

    public final void a(zzp zzpVar, Bundle bundle) {
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning bundle value to wrapper", e2);
        }
    }

    public static Bundle a(List<zzjn> list) {
        Bundle bundle = new Bundle();
        if (list == null) {
            return bundle;
        }
        for (zzjn zzjnVar : list) {
            String str = zzjnVar.f13388i;
            if (str != null) {
                bundle.putString(zzjnVar.f13385f, str);
            } else {
                Long l2 = zzjnVar.f13387h;
                if (l2 != null) {
                    bundle.putLong(zzjnVar.f13385f, l2.longValue());
                } else {
                    Double d2 = zzjnVar.f13390k;
                    if (d2 != null) {
                        bundle.putDouble(zzjnVar.f13385f, d2.doubleValue());
                    }
                }
            }
        }
        return bundle;
    }

    public final void a(zzp zzpVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzpVar.zzb(bundle);
        } catch (RemoteException e2) {
            this.f12908a.zzab().t().a("Error returning bundle list to wrapper", e2);
        }
    }

    public final URL a(long j2, @NonNull String str, @NonNull String str2) {
        try {
            com.google.android.gms.common.internal.m.b(str2);
            com.google.android.gms.common.internal.m.b(str);
            return new URL(String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s", String.format("v%s.%s", Long.valueOf(j2), Integer.valueOf(s())), str2, str));
        } catch (IllegalArgumentException | MalformedURLException e2) {
            zzab().q().a("Failed to create BOW URL for Deferred Deep Link. exception", e2.getMessage());
            return null;
        }
    }
}
