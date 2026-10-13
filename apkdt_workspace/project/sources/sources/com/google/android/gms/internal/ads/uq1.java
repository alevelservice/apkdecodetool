package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.google.android.gms.internal.ads.w1;
import java.util.Collections;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class uq1<T> implements Comparable<uq1<T>> {

    /* renamed from: e, reason: collision with root package name */
    private final w1.a f9797e;

    /* renamed from: f, reason: collision with root package name */
    private final int f9798f;

    /* renamed from: g, reason: collision with root package name */
    private final String f9799g;

    /* renamed from: h, reason: collision with root package name */
    private final int f9800h;

    /* renamed from: i, reason: collision with root package name */
    private final Object f9801i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @GuardedBy("mLock")
    private iv1 f9802j;

    /* renamed from: k, reason: collision with root package name */
    private Integer f9803k;

    /* renamed from: l, reason: collision with root package name */
    private bu1 f9804l;
    private boolean m;

    @GuardedBy("mLock")
    private boolean n;
    private t o;
    private zw0 p;

    @GuardedBy("mLock")
    private ls1 q;

    public uq1(int i2, String str, @Nullable iv1 iv1Var) {
        Uri parse;
        String host;
        this.f9797e = w1.a.f10016c ? new w1.a() : null;
        this.f9801i = new Object();
        this.m = true;
        int i3 = 0;
        this.n = false;
        this.p = null;
        this.f9798f = i2;
        this.f9799g = str;
        this.f9802j = iv1Var;
        this.o = new ug1();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i3 = host.hashCode();
        }
        this.f9800h = i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract hw1<T> a(uo1 uo1Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(T t);

    public final void a(String str) {
        if (w1.a.f10016c) {
            this.f9797e.a(str, Thread.currentThread().getId());
        }
    }

    public final int b() {
        return this.f9798f;
    }

    public final String c() {
        return this.f9799g;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        uq1 uq1Var = (uq1) obj;
        nu1 nu1Var = nu1.NORMAL;
        return nu1Var == nu1Var ? this.f9803k.intValue() - uq1Var.f9803k.intValue() : nu1Var.ordinal() - nu1Var.ordinal();
    }

    public final boolean d() {
        synchronized (this.f9801i) {
        }
        return false;
    }

    public final String e() {
        String str = this.f9799g;
        int i2 = this.f9798f;
        if (i2 == 0 || i2 == -1) {
            return str;
        }
        String num = Integer.toString(i2);
        StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
        sb.append(num);
        sb.append('-');
        sb.append(str);
        return sb.toString();
    }

    public final zw0 f() {
        return this.p;
    }

    public byte[] g() {
        return null;
    }

    public final boolean h() {
        return this.m;
    }

    public final int i() {
        return this.o.a();
    }

    public final t j() {
        return this.o;
    }

    public final void k() {
        synchronized (this.f9801i) {
            this.n = true;
        }
    }

    public final boolean l() {
        boolean z;
        synchronized (this.f9801i) {
            z = this.n;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m() {
        ls1 ls1Var;
        synchronized (this.f9801i) {
            ls1Var = this.q;
        }
        if (ls1Var != null) {
            ls1Var.a(this);
        }
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f9800h));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        d();
        String str = this.f9799g;
        String valueOf2 = String.valueOf(nu1.NORMAL);
        String valueOf3 = String.valueOf(this.f9803k);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(concat);
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(valueOf2);
        sb.append(HanziToPinyin.Token.SEPARATOR);
        sb.append(valueOf3);
        return sb.toString();
    }

    public final int zzc() {
        return this.f9800h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str) {
        bu1 bu1Var = this.f9804l;
        if (bu1Var != null) {
            bu1Var.b(this);
        }
        if (w1.a.f10016c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new lt1(this, str, id));
            } else {
                this.f9797e.a(str, id);
                this.f9797e.a(toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i2) {
        bu1 bu1Var = this.f9804l;
        if (bu1Var != null) {
            bu1Var.a(this, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final uq1<?> a(bu1 bu1Var) {
        this.f9804l = bu1Var;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final uq1<?> a(zw0 zw0Var) {
        this.p = zw0Var;
        return this;
    }

    public Map<String, String> a() {
        return Collections.emptyMap();
    }

    public final void a(r0 r0Var) {
        iv1 iv1Var;
        synchronized (this.f9801i) {
            iv1Var = this.f9802j;
        }
        if (iv1Var != null) {
            iv1Var.a(r0Var);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final uq1<?> b(int i2) {
        this.f9803k = Integer.valueOf(i2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ls1 ls1Var) {
        synchronized (this.f9801i) {
            this.q = ls1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(hw1<?> hw1Var) {
        ls1 ls1Var;
        synchronized (this.f9801i) {
            ls1Var = this.q;
        }
        if (ls1Var != null) {
            ls1Var.a(this, hw1Var);
        }
    }
}
