package com.google.firebase.crashlytics.d.m.d;

import com.google.firebase.crashlytics.d.m.c.c;

/* compiled from: CompositeCreateReportSpiCall.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private final c f14672a;

    /* renamed from: b, reason: collision with root package name */
    private final d f14673b;

    /* compiled from: CompositeCreateReportSpiCall.java */
    /* renamed from: com.google.firebase.crashlytics.d.m.d.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class C0119a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14674a = new int[c.a.values().length];

        static {
            try {
                f14674a[c.a.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14674a[c.a.NATIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public a(c cVar, d dVar) {
        this.f14672a = cVar;
        this.f14673b = dVar;
    }

    @Override // com.google.firebase.crashlytics.d.m.d.b
    public boolean a(com.google.firebase.crashlytics.d.m.c.a aVar, boolean z) {
        int i2 = C0119a.f14674a[aVar.f14666c.getType().ordinal()];
        if (i2 == 1) {
            this.f14672a.a(aVar, z);
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        this.f14673b.a(aVar, z);
        return true;
    }
}
