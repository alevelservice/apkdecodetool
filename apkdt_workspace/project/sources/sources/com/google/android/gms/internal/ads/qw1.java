package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class qw1 {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, nw1> f9015a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final pw1 f9016b;

    public qw1(@Nullable pw1 pw1Var) {
        this.f9016b = pw1Var;
    }

    public final void a(String str, nw1 nw1Var) {
        this.f9015a.put(str, nw1Var);
    }

    public final void a(String str, String str2, long j2) {
        pw1 pw1Var = this.f9016b;
        nw1 nw1Var = this.f9015a.get(str2);
        String[] strArr = {str};
        if (pw1Var != null && nw1Var != null) {
            pw1Var.a(nw1Var, j2, strArr);
        }
        Map<String, nw1> map = this.f9015a;
        pw1 pw1Var2 = this.f9016b;
        map.put(str, pw1Var2 == null ? null : pw1Var2.a(j2));
    }

    @Nullable
    public final pw1 a() {
        return this.f9016b;
    }
}
