package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.h;
import com.google.android.gms.internal.clearcut.j5;
import com.google.android.gms.internal.clearcut.l5;
import com.google.android.gms.internal.clearcut.n5;
import com.google.android.gms.internal.clearcut.t2;
import com.google.android.gms.internal.clearcut.z4;
import com.google.android.gms.internal.clearcut.zzr;
import java.util.ArrayList;
import java.util.TimeZone;
import javax.annotation.Nullable;

@KeepForSdk
/* loaded from: classes.dex */
public final class a {
    private static final a.g<l5> m = new a.g<>();
    private static final a.AbstractC0084a<l5, a.d.C0086d> n = new com.google.android.gms.clearcut.b();

    @Deprecated
    public static final com.google.android.gms.common.api.a<a.d.C0086d> o = new com.google.android.gms.common.api.a<>("ClearcutLogger.API", n, m);

    /* renamed from: a, reason: collision with root package name */
    private final Context f4881a;

    /* renamed from: b, reason: collision with root package name */
    private final String f4882b;

    /* renamed from: c, reason: collision with root package name */
    private final int f4883c;

    /* renamed from: d, reason: collision with root package name */
    private String f4884d;

    /* renamed from: e, reason: collision with root package name */
    private int f4885e;

    /* renamed from: f, reason: collision with root package name */
    private String f4886f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f4887g;

    /* renamed from: h, reason: collision with root package name */
    private z4 f4888h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.android.gms.clearcut.c f4889i;

    /* renamed from: j, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f4890j;

    /* renamed from: k, reason: collision with root package name */
    private d f4891k;

    /* renamed from: l, reason: collision with root package name */
    private final b f4892l;

    /* renamed from: com.google.android.gms.clearcut.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0083a {

        /* renamed from: a, reason: collision with root package name */
        private int f4893a;

        /* renamed from: b, reason: collision with root package name */
        private String f4894b;

        /* renamed from: c, reason: collision with root package name */
        private String f4895c;

        /* renamed from: d, reason: collision with root package name */
        private String f4896d;

        /* renamed from: e, reason: collision with root package name */
        private z4 f4897e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f4898f;

        /* renamed from: g, reason: collision with root package name */
        private final j5 f4899g;

        /* renamed from: h, reason: collision with root package name */
        private boolean f4900h;

        private C0083a(a aVar, byte[] bArr) {
            this(bArr, (c) null);
        }

        private C0083a(byte[] bArr, c cVar) {
            this.f4893a = a.this.f4885e;
            this.f4894b = a.this.f4884d;
            this.f4895c = a.this.f4886f;
            a aVar = a.this;
            this.f4896d = null;
            this.f4897e = aVar.f4888h;
            this.f4898f = true;
            this.f4899g = new j5();
            this.f4900h = false;
            this.f4895c = a.this.f4886f;
            this.f4896d = null;
            this.f4899g.z = com.google.android.gms.internal.clearcut.a.a(a.this.f4881a);
            this.f4899g.f11448g = a.this.f4890j.a();
            this.f4899g.f11449h = a.this.f4890j.c();
            j5 j5Var = this.f4899g;
            d unused = a.this.f4891k;
            j5Var.t = TimeZone.getDefault().getOffset(this.f4899g.f11448g) / 1000;
            if (bArr != null) {
                this.f4899g.o = bArr;
            }
        }

        /* synthetic */ C0083a(a aVar, byte[] bArr, com.google.android.gms.clearcut.b bVar) {
            this(aVar, bArr);
        }

        @KeepForSdk
        public C0083a a(int i2) {
            this.f4899g.f11451j = i2;
            return this;
        }

        @KeepForSdk
        public void a() {
            if (this.f4900h) {
                throw new IllegalStateException("do not reuse LogEventBuilder");
            }
            this.f4900h = true;
            zze zzeVar = new zze(new zzr(a.this.f4882b, a.this.f4883c, this.f4893a, this.f4894b, this.f4895c, this.f4896d, a.this.f4887g, this.f4897e), this.f4899g, null, null, a.b((ArrayList) null), null, a.b((ArrayList) null), null, null, this.f4898f);
            if (a.this.f4892l.a(zzeVar)) {
                a.this.f4889i.a(zzeVar);
            } else {
                i.a(Status.f4988i, (f) null);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        boolean a(zze zzeVar);
    }

    /* loaded from: classes.dex */
    public interface c {
        byte[] a();
    }

    /* loaded from: classes.dex */
    public static class d {
    }

    @VisibleForTesting
    private a(Context context, int i2, String str, String str2, String str3, boolean z, com.google.android.gms.clearcut.c cVar, com.google.android.gms.common.util.e eVar, d dVar, b bVar) {
        this.f4885e = -1;
        this.f4888h = z4.DEFAULT;
        this.f4881a = context;
        this.f4882b = context.getPackageName();
        this.f4883c = a(context);
        this.f4885e = -1;
        this.f4884d = str;
        this.f4886f = str2;
        this.f4887g = z;
        this.f4889i = cVar;
        this.f4890j = eVar;
        this.f4891k = new d();
        this.f4888h = z4.DEFAULT;
        this.f4892l = bVar;
        if (z) {
            m.a(str2 == null, "can't be anonymous with an upload account");
        }
    }

    @KeepForSdk
    public a(Context context, String str, @Nullable String str2) {
        this(context, -1, str, str2, null, false, t2.a(context), h.d(), null, new n5(context));
    }

    private static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    private static int[] a(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Integer num = arrayList.get(i2);
            i2++;
            iArr[i3] = num.intValue();
            i3++;
        }
        return iArr;
    }

    static /* synthetic */ int[] b(ArrayList arrayList) {
        return a((ArrayList<Integer>) null);
    }

    @KeepForSdk
    public final C0083a a(@Nullable byte[] bArr) {
        return new C0083a(this, bArr, (com.google.android.gms.clearcut.b) null);
    }
}
