package com.google.android.gms.vision.barcode;

import android.content.Context;
import android.util.SparseArray;
import com.google.android.gms.internal.vision.a5;
import com.google.android.gms.internal.vision.zzf;
import com.google.android.gms.internal.vision.zzp;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class a extends com.google.android.gms.vision.b<Barcode> {

    /* renamed from: c, reason: collision with root package name */
    private final a5 f13541c;

    /* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
    /* renamed from: com.google.android.gms.vision.barcode.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0098a {

        /* renamed from: a, reason: collision with root package name */
        private Context f13542a;

        /* renamed from: b, reason: collision with root package name */
        private zzf f13543b = new zzf();

        public C0098a(Context context) {
            this.f13542a = context;
        }

        public C0098a a(int i2) {
            this.f13543b.f12634e = i2;
            return this;
        }

        public a a() {
            return new a(new a5(this.f13542a, this.f13543b));
        }
    }

    private a(a5 a5Var) {
        this.f13541c = a5Var;
    }

    @Override // com.google.android.gms.vision.b
    public final SparseArray<Barcode> a(com.google.android.gms.vision.c cVar) {
        Barcode[] a2;
        if (cVar != null) {
            zzp a3 = zzp.a(cVar);
            if (cVar.a() != null) {
                a2 = this.f13541c.a(cVar.a(), a3);
                if (a2 == null) {
                    throw new IllegalArgumentException("Internal barcode detector error; check logcat output.");
                }
            } else {
                a2 = this.f13541c.a(cVar.b(), a3);
            }
            SparseArray<Barcode> sparseArray = new SparseArray<>(a2.length);
            for (Barcode barcode : a2) {
                sparseArray.append(barcode.f13480f.hashCode(), barcode);
            }
            return sparseArray;
        }
        throw new IllegalArgumentException("No frame supplied.");
    }

    @Override // com.google.android.gms.vision.b
    public final boolean a() {
        return this.f13541c.a();
    }
}
