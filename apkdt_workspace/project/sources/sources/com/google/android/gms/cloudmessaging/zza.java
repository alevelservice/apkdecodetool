package com.google.android.gms.cloudmessaging;

import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.cloudmessaging.IMessengerCompat;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
public class zza implements Parcelable {
    public static final Parcelable.Creator<zza> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    private Messenger f4969e;

    /* renamed from: f, reason: collision with root package name */
    private IMessengerCompat f4970f;

    /* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    /* loaded from: classes.dex */
    public static final class a extends ClassLoader {
        @Override // java.lang.ClassLoader
        protected final Class<?> loadClass(String str, boolean z) {
            if ("com.google.android.gms.iid.MessengerCompat".equals(str)) {
                return (Log.isLoggable("CloudMessengerCompat", 3) || Build.VERSION.SDK_INT != 23 || Log.isLoggable("CloudMessengerCompat", 3)) ? zza.class : zza.class;
            }
            return super.loadClass(str, z);
        }
    }

    public zza(IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4969e = new Messenger(iBinder);
        } else {
            this.f4970f = new IMessengerCompat.Proxy(iBinder);
        }
    }

    public final void a(Message message) {
        Messenger messenger = this.f4969e;
        if (messenger != null) {
            messenger.send(message);
        } else {
            this.f4970f.send(message);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return a().equals(((zza) obj).a());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return a().hashCode();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        Messenger messenger = this.f4969e;
        if (messenger != null) {
            parcel.writeStrongBinder(messenger.getBinder());
        } else {
            parcel.writeStrongBinder(this.f4970f.asBinder());
        }
    }

    private final IBinder a() {
        Messenger messenger = this.f4969e;
        return messenger != null ? messenger.getBinder() : this.f4970f.asBinder();
    }
}
