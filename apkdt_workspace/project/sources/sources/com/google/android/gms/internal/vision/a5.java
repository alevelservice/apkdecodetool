package com.google.android.gms.internal.vision;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.vision.barcode.Barcode;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class a5 extends i8<zzg> {

    /* renamed from: k, reason: collision with root package name */
    private final zzf f12293k;

    public a5(Context context, zzf zzfVar) {
        super(context, "BarcodeNativeHandle", "barcode");
        this.f12293k = zzfVar;
        b();
    }

    public final Barcode[] a(ByteBuffer byteBuffer, zzp zzpVar) {
        if (!a()) {
            return new Barcode[0];
        }
        try {
            return b().zza(ObjectWrapper.wrap(byteBuffer), zzpVar);
        } catch (RemoteException unused) {
            return new Barcode[0];
        }
    }

    public final Barcode[] a(Bitmap bitmap, zzp zzpVar) {
        if (!a()) {
            return new Barcode[0];
        }
        try {
            return b().zzb(ObjectWrapper.wrap(bitmap), zzpVar);
        } catch (RemoteException unused) {
            return new Barcode[0];
        }
    }

    @Override // com.google.android.gms.internal.vision.i8
    protected final /* synthetic */ zzg a(DynamiteModule dynamiteModule, Context context) {
        zzi zzkVar;
        IBinder a2 = dynamiteModule.a("com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator");
        if (a2 == null) {
            zzkVar = null;
        } else {
            IInterface queryLocalInterface = a2.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
            if (queryLocalInterface instanceof zzi) {
                zzkVar = (zzi) queryLocalInterface;
            } else {
                zzkVar = new zzk(a2);
            }
        }
        if (zzkVar == null) {
            return null;
        }
        return zzkVar.zza(ObjectWrapper.wrap(context), this.f12293k);
    }
}
