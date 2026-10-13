package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class pq1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f8750a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8751b;

    /* renamed from: c, reason: collision with root package name */
    private final int f8752c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f8753d;

    /* renamed from: e, reason: collision with root package name */
    private final br1 f8754e;

    /* renamed from: f, reason: collision with root package name */
    private final mr1 f8755f;
    private int n;

    /* renamed from: g, reason: collision with root package name */
    private final Object f8756g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private ArrayList<String> f8757h = new ArrayList<>();

    /* renamed from: i, reason: collision with root package name */
    private ArrayList<String> f8758i = new ArrayList<>();

    /* renamed from: j, reason: collision with root package name */
    private ArrayList<zq1> f8759j = new ArrayList<>();

    /* renamed from: k, reason: collision with root package name */
    private int f8760k = 0;

    /* renamed from: l, reason: collision with root package name */
    private int f8761l = 0;
    private int m = 0;
    private String o = "";
    private String p = "";
    private String q = "";

    public pq1(int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        this.f8750a = i2;
        this.f8751b = i3;
        this.f8752c = i4;
        this.f8753d = z;
        this.f8754e = new br1(i5);
        this.f8755f = new mr1(i6, i7, i8);
    }

    public final void a(String str, boolean z, float f2, float f3, float f4, float f5) {
        c(str, z, f2, f3, f4, f5);
        synchronized (this.f8756g) {
            if (this.m < 0) {
                qd.a("ActivityContent: negative number of WebViews.");
            }
            j();
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f8756g) {
            z = this.m == 0;
        }
        return z;
    }

    public final String c() {
        return this.o;
    }

    public final String d() {
        return this.p;
    }

    public final String e() {
        return this.q;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof pq1)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((pq1) obj).o;
        return str != null && str.equals(this.o);
    }

    public final void f() {
        synchronized (this.f8756g) {
            this.n -= 100;
        }
    }

    public final void g() {
        synchronized (this.f8756g) {
            this.m--;
        }
    }

    public final void h() {
        synchronized (this.f8756g) {
            this.m++;
        }
    }

    public final int hashCode() {
        return this.o.hashCode();
    }

    public final void i() {
        synchronized (this.f8756g) {
            int a2 = a(this.f8760k, this.f8761l);
            if (a2 > this.n) {
                this.n = a2;
            }
        }
    }

    public final void j() {
        synchronized (this.f8756g) {
            int a2 = a(this.f8760k, this.f8761l);
            if (a2 > this.n) {
                this.n = a2;
                if (!com.google.android.gms.ads.internal.n.g().i().b()) {
                    this.o = this.f8754e.a(this.f8757h);
                    this.p = this.f8754e.a(this.f8758i);
                }
                if (!com.google.android.gms.ads.internal.n.g().i().m()) {
                    this.q = this.f8755f.a(this.f8758i, this.f8759j);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final int k() {
        return this.f8760k;
    }

    public final String toString() {
        int i2 = this.f8761l;
        int i3 = this.n;
        int i4 = this.f8760k;
        String a2 = a(this.f8757h, 100);
        String a3 = a(this.f8758i, 100);
        String str = this.o;
        String str2 = this.p;
        String str3 = this.q;
        StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 165 + String.valueOf(a3).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append("ActivityContent fetchId: ");
        sb.append(i2);
        sb.append(" score:");
        sb.append(i3);
        sb.append(" total_length:");
        sb.append(i4);
        sb.append("\n text: ");
        sb.append(a2);
        sb.append("\n viewableText");
        sb.append(a3);
        sb.append("\n signture: ");
        sb.append(str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }

    private final void c(@Nullable String str, boolean z, float f2, float f3, float f4, float f5) {
        if (str == null || str.length() < this.f8752c) {
            return;
        }
        synchronized (this.f8756g) {
            this.f8757h.add(str);
            this.f8760k += str.length();
            if (z) {
                this.f8758i.add(str);
                this.f8759j.add(new zq1(f2, f3, f4, f5, this.f8758i.size() - 1));
            }
        }
    }

    public final void b(String str, boolean z, float f2, float f3, float f4, float f5) {
        c(str, z, f2, f3, f4, f5);
    }

    @VisibleForTesting
    private final int a(int i2, int i3) {
        if (this.f8753d) {
            return this.f8751b;
        }
        return (i2 * this.f8750a) + (i3 * this.f8751b);
    }

    public final int a() {
        return this.n;
    }

    public final void a(int i2) {
        this.f8761l = i2;
    }

    private static String a(ArrayList<String> arrayList, int i2) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            String str = arrayList.get(i3);
            i3++;
            sb.append(str);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        return sb2.length() < 100 ? sb2 : sb2.substring(0, 100);
    }
}
