package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
@SafeParcelable.Class(creator = "CloudMessageCreator")
/* loaded from: classes.dex */
public final class CloudMessage extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<CloudMessage> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    @SafeParcelable.Field(id = 1)
    private Intent f4913e;

    /* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
    @Target({ElementType.TYPE_PARAMETER, ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface MessagePriority {
    }

    @SafeParcelable.Constructor
    public CloudMessage(@NonNull @SafeParcelable.Param(id = 1) Intent intent) {
        this.f4913e = intent;
    }

    @NonNull
    public final Intent j() {
        return this.f4913e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) this.f4913e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
