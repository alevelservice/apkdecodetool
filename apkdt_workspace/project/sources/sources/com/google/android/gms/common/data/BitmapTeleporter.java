package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.facebook.cache.disk.DefaultDiskStorage;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@ShowFirstParty
@KeepForSdk
@SafeParcelable.Class(creator = "BitmapTeleporterCreator")
/* loaded from: classes.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5169e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private ParcelFileDescriptor f5170f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final int f5171g;

    /* renamed from: h, reason: collision with root package name */
    private Bitmap f5172h = null;

    /* renamed from: i, reason: collision with root package name */
    private File f5173i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public BitmapTeleporter(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) int i3) {
        this.f5169e = i2;
        this.f5170f = parcelFileDescriptor;
        this.f5171g = i3;
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    private final FileOutputStream j() {
        File file = this.f5173i;
        if (file != null) {
            try {
                File createTempFile = File.createTempFile("teleporter", DefaultDiskStorage.FileType.TEMP, file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                    this.f5170f = ParcelFileDescriptor.open(createTempFile, 268435456);
                    createTempFile.delete();
                    return fileOutputStream;
                } catch (FileNotFoundException unused) {
                    throw new IllegalStateException("Temporary file is somehow already deleted");
                }
            } catch (IOException e2) {
                throw new IllegalStateException("Could not create temporary file", e2);
            }
        }
        throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.f5170f == null) {
            Bitmap bitmap = this.f5172h;
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(j()));
            try {
                try {
                    dataOutputStream.writeInt(array.length);
                    dataOutputStream.writeInt(bitmap.getWidth());
                    dataOutputStream.writeInt(bitmap.getHeight());
                    dataOutputStream.writeUTF(bitmap.getConfig().toString());
                    dataOutputStream.write(array);
                } catch (IOException e2) {
                    throw new IllegalStateException("Could not write into unlinked file", e2);
                }
            } finally {
                a(dataOutputStream);
            }
        }
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5169e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f5170f, i2 | 1, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5171g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        this.f5170f = null;
    }
}
