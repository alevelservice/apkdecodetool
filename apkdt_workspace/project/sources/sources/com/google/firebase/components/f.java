package com.google.firebase.components;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComponentDiscovery.java */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements com.google.firebase.p.b {

    /* renamed from: a, reason: collision with root package name */
    private final String f14320a;

    private f(String str) {
        this.f14320a = str;
    }

    public static com.google.firebase.p.b a(String str) {
        return new f(str);
    }

    @Override // com.google.firebase.p.b
    public Object get() {
        i a2;
        a2 = g.a(this.f14320a);
        return a2;
    }
}
