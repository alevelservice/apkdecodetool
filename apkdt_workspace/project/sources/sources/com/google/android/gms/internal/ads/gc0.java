package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class gc0 implements hz0<SQLiteDatabase> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ fu0 f6839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gc0(ec0 ec0Var, fu0 fu0Var) {
        this.f6839a = fu0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        qd.b(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f6839a.apply(sQLiteDatabase);
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            qd.b(valueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(valueOf) : new String("Error executing function on offline signal database: "));
        }
    }
}
