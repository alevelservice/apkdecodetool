package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.internal.ads.us1;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wc0 {

    /* renamed from: a, reason: collision with root package name */
    private ks1 f10082a;

    /* renamed from: b, reason: collision with root package name */
    private Context f10083b;

    /* renamed from: c, reason: collision with root package name */
    private ec0 f10084c;

    /* renamed from: d, reason: collision with root package name */
    private zzawv f10085d;

    public wc0(Context context, zzawv zzawvVar, ks1 ks1Var, ec0 ec0Var) {
        this.f10083b = context;
        this.f10085d = zzawvVar;
        this.f10082a = ks1Var;
        this.f10084c = ec0Var;
    }

    public final void a() {
        try {
            this.f10084c.a(new fu0(this) { // from class: com.google.android.gms.internal.ads.vc0

                /* renamed from: a, reason: collision with root package name */
                private final wc0 f9895a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9895a = this;
                }

                @Override // com.google.android.gms.internal.ads.fu0
                public final Object apply(Object obj) {
                    return this.f9895a.a((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            qd.b(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Void a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<us1.a> a2 = tc0.a(sQLiteDatabase);
        us1.c k2 = us1.k();
        k2.a(this.f10083b.getPackageName());
        k2.b(Build.MODEL);
        k2.a(tc0.a(sQLiteDatabase, 0));
        k2.a(a2);
        k2.b(tc0.a(sQLiteDatabase, 1));
        k2.a(com.google.android.gms.ads.internal.n.j().a());
        k2.b(tc0.b(sQLiteDatabase, 2));
        final us1 us1Var = (us1) k2.s();
        int size = a2.size();
        long j2 = 0;
        int i2 = 0;
        while (i2 < size) {
            us1.a aVar = a2.get(i2);
            i2++;
            us1.a aVar2 = aVar;
            if (aVar2.m() == bt1.ENUM_TRUE && aVar2.k() > j2) {
                j2 = aVar2.k();
            }
        }
        if (j2 != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(HummerConstants.VALUE, Long.valueOf(j2));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
        this.f10082a.a(new js1(us1Var) { // from class: com.google.android.gms.internal.ads.yc0

            /* renamed from: a, reason: collision with root package name */
            private final us1 f10538a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10538a = us1Var;
            }

            @Override // com.google.android.gms.internal.ads.js1
            public final void a(pt1 pt1Var) {
                pt1Var.f8785g = this.f10538a;
            }
        });
        final rt1 rt1Var = new rt1();
        rt1Var.f9229c = Integer.valueOf(this.f10085d.f11001f);
        rt1Var.f9230d = Integer.valueOf(this.f10085d.f11002g);
        rt1Var.f9231e = Integer.valueOf(this.f10085d.f11003h ? 0 : 2);
        this.f10082a.a(new js1(rt1Var) { // from class: com.google.android.gms.internal.ads.xc0

            /* renamed from: a, reason: collision with root package name */
            private final rt1 f10311a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10311a = rt1Var;
            }

            @Override // com.google.android.gms.internal.ads.js1
            public final void a(pt1 pt1Var) {
                pt1Var.f8783e.f8433d = this.f10311a;
            }
        });
        this.f10082a.a(ms1.OFFLINE_UPLOAD);
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(HummerConstants.VALUE, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put(HummerConstants.VALUE, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues3, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }
}
