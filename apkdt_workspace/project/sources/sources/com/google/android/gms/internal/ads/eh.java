package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eh extends ja {

    /* renamed from: c, reason: collision with root package name */
    final tf f6423c;

    /* renamed from: d, reason: collision with root package name */
    final jh f6424d;

    /* renamed from: e, reason: collision with root package name */
    private final String f6425e;

    /* renamed from: f, reason: collision with root package name */
    private final String[] f6426f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eh(tf tfVar, jh jhVar, String str, String[] strArr) {
        this.f6423c = tfVar;
        this.f6424d = jhVar;
        this.f6425e = str;
        this.f6426f = strArr;
        com.google.android.gms.ads.internal.n.y().a(this);
    }

    @Override // com.google.android.gms.internal.ads.ja
    public final void a() {
        try {
            this.f6424d.a(this.f6425e, this.f6426f);
        } finally {
            wa.f10063h.post(new hh(this));
        }
    }
}
