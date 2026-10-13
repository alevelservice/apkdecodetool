package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class pw1 {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private pw1 f8804e;

    /* renamed from: b, reason: collision with root package name */
    private final List<nw1> f8801b = new LinkedList();

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, String> f8802c = new LinkedHashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Object f8803d = new Object();

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    boolean f8800a = true;

    public pw1(boolean z, String str, String str2) {
        this.f8802c.put("action", str);
        this.f8802c.put("ad_format", str2);
    }

    public final void a(@Nullable pw1 pw1Var) {
        synchronized (this.f8803d) {
            this.f8804e = pw1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final Map<String, String> b() {
        synchronized (this.f8803d) {
            ew1 c2 = com.google.android.gms.ads.internal.n.g().c();
            if (c2 != null && this.f8804e != null) {
                return c2.a(this.f8802c, this.f8804e.b());
            }
            return this.f8802c;
        }
    }

    @Nullable
    public final nw1 a(long j2) {
        if (this.f8800a) {
            return new nw1(j2, null, null);
        }
        return null;
    }

    public final boolean a(nw1 nw1Var, long j2, String... strArr) {
        synchronized (this.f8803d) {
            for (String str : strArr) {
                this.f8801b.add(new nw1(j2, str, nw1Var));
            }
        }
        return true;
    }

    public final String a() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.f8803d) {
            for (nw1 nw1Var : this.f8801b) {
                long a2 = nw1Var.a();
                String b2 = nw1Var.b();
                nw1 c2 = nw1Var.c();
                if (c2 != null && a2 > 0) {
                    long a3 = a2 - c2.a();
                    sb2.append(b2);
                    sb2.append('.');
                    sb2.append(a3);
                    sb2.append(',');
                }
            }
            this.f8801b.clear();
            if (!TextUtils.isEmpty(null)) {
                sb2.append((String) null);
            } else if (sb2.length() > 0) {
                sb2.setLength(sb2.length() - 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public final void a(String str, String str2) {
        ew1 c2;
        if (!this.f8800a || TextUtils.isEmpty(str2) || (c2 = com.google.android.gms.ads.internal.n.g().c()) == null) {
            return;
        }
        synchronized (this.f8803d) {
            jw1 a2 = c2.a(str);
            Map<String, String> map = this.f8802c;
            map.put(str, a2.a(map.get(str), str2));
        }
    }
}
