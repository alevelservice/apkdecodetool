package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class f9 implements n9 {

    /* renamed from: a, reason: collision with root package name */
    static final n9 f6593a = new f9();

    private f9() {
    }

    @Override // com.google.android.gms.internal.ads.n9
    public final Object a(zzbdl zzbdlVar) {
        String currentScreenName = zzbdlVar.getCurrentScreenName();
        if (currentScreenName != null) {
            return currentScreenName;
        }
        String currentScreenClass = zzbdlVar.getCurrentScreenClass();
        return currentScreenClass != null ? currentScreenClass : "";
    }
}
