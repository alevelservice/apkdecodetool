package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "LargeParcelTeleporterCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzaoj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaoj> CREATOR = new h7();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private ParcelFileDescriptor f10962e;

    /* renamed from: f, reason: collision with root package name */
    private Parcelable f10963f = null;

    /* renamed from: g, reason: collision with root package name */
    private boolean f10964g = true;

    @SafeParcelable.Constructor
    public zzaoj(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.f10962e = parcelFileDescriptor;
    }

    private final ParcelFileDescriptor j() {
        if (this.f10962e == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.f10963f.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.f10962e = a(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.f10962e;
    }

    public final <T extends SafeParcelable> T a(Parcelable.Creator<T> creator) {
        if (this.f10964g) {
            ParcelFileDescriptor parcelFileDescriptor = this.f10962e;
            if (parcelFileDescriptor == null) {
                qd.b("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr, 0, bArr.length);
                    com.google.android.gms.common.util.k.a(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, bArr.length);
                        obtain.setDataPosition(0);
                        this.f10963f = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.f10964g = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e2) {
                    qd.b("Could not read from parcel file descriptor", e2);
                    com.google.android.gms.common.util.k.a(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                com.google.android.gms.common.util.k.a(dataInputStream);
                throw th2;
            }
        }
        return (T) this.f10963f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        j();
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f10962e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    private static <T> ParcelFileDescriptor a(final byte[] bArr) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        try {
            createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
        } catch (IOException e2) {
            e = e2;
            autoCloseOutputStream = null;
        }
        try {
            yd.f10540a.execute(new Runnable(autoCloseOutputStream, bArr) { // from class: com.google.android.gms.internal.ads.g7

                /* renamed from: e, reason: collision with root package name */
                private final OutputStream f6818e;

                /* renamed from: f, reason: collision with root package name */
                private final byte[] f6819f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6818e = autoCloseOutputStream;
                    this.f6819f = bArr;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzaoj.a(this.f6818e, this.f6819f);
                }
            });
            return createPipe[0];
        } catch (IOException e3) {
            e = e3;
            qd.b("Error transporting the ad response", e);
            com.google.android.gms.ads.internal.n.g().a(e, "LargeParcelTeleporter.pipeData.2");
            com.google.android.gms.common.util.k.a(autoCloseOutputStream);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(OutputStream outputStream, byte[] bArr) {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2 = null;
        try {
            try {
                dataOutputStream = new DataOutputStream(outputStream);
            } catch (IOException e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
            com.google.android.gms.common.util.k.a(dataOutputStream);
        } catch (IOException e3) {
            e = e3;
            dataOutputStream2 = dataOutputStream;
            qd.b("Error transporting the ad response", e);
            com.google.android.gms.ads.internal.n.g().a(e, "LargeParcelTeleporter.pipeData.1");
            if (dataOutputStream2 == null) {
                com.google.android.gms.common.util.k.a(outputStream);
            } else {
                com.google.android.gms.common.util.k.a(dataOutputStream2);
            }
        } catch (Throwable th2) {
            th = th2;
            dataOutputStream2 = dataOutputStream;
            if (dataOutputStream2 == null) {
                com.google.android.gms.common.util.k.a(outputStream);
            } else {
                com.google.android.gms.common.util.k.a(dataOutputStream2);
            }
            throw th;
        }
    }
}
