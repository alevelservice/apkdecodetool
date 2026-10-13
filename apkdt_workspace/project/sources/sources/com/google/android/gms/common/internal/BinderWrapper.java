package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
@KeepName
/* loaded from: classes.dex */
public final class BinderWrapper implements Parcelable {
    public static final Parcelable.Creator<BinderWrapper> CREATOR = new d0();

    /* renamed from: e, reason: collision with root package name */
    private IBinder f5251e;

    public BinderWrapper() {
        this.f5251e = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.f5251e);
    }

    private BinderWrapper(Parcel parcel) {
        this.f5251e = null;
        this.f5251e = parcel.readStrongBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ BinderWrapper(Parcel parcel, d0 d0Var) {
        this(parcel);
    }
}
