package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.internal.ads.us1;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sc0 implements hz0<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f9308a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ oc0 f9309b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sc0(oc0 oc0Var, boolean z) {
        this.f9309b = oc0Var;
        this.f9308a = z;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        qd.b("Failed to get signals bundle");
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(Bundle bundle) {
        final ArrayList c2;
        final us1.b b2;
        final ts1 a2;
        ec0 ec0Var;
        Bundle bundle2 = bundle;
        oc0 oc0Var = this.f9309b;
        c2 = oc0.c(bundle2);
        oc0 oc0Var2 = this.f9309b;
        b2 = oc0.b(bundle2);
        a2 = this.f9309b.a(bundle2);
        ec0Var = this.f9309b.f8515e;
        final boolean z = this.f9308a;
        ec0Var.a(new fu0(this, z, c2, a2, b2) { // from class: com.google.android.gms.internal.ads.rc0

            /* renamed from: a, reason: collision with root package name */
            private final sc0 f9089a;

            /* renamed from: b, reason: collision with root package name */
            private final boolean f9090b;

            /* renamed from: c, reason: collision with root package name */
            private final ArrayList f9091c;

            /* renamed from: d, reason: collision with root package name */
            private final ts1 f9092d;

            /* renamed from: e, reason: collision with root package name */
            private final us1.b f9093e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9089a = this;
                this.f9090b = z;
                this.f9091c = c2;
                this.f9092d = a2;
                this.f9093e = b2;
            }

            @Override // com.google.android.gms.internal.ads.fu0
            public final Object apply(Object obj) {
                byte[] a3;
                sc0 sc0Var = this.f9089a;
                boolean z2 = this.f9090b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                a3 = sc0Var.f9309b.a(z2, this.f9091c, this.f9092d, this.f9093e);
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(com.google.android.gms.ads.internal.n.j().a()));
                contentValues.put("serialized_proto_data", a3);
                sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                if (!z2) {
                    sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                }
                return null;
            }
        });
    }
}
