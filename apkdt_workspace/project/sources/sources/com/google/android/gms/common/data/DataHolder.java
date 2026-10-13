package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
@KeepName
@SafeParcelable.Class(creator = "DataHolderCreator", validate = true)
/* loaded from: classes.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {

    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1000)
    private final int f5174e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getColumns", id = 1)
    private final String[] f5175f;

    /* renamed from: g, reason: collision with root package name */
    private Bundle f5176g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getWindows", id = 2)
    private final CursorWindow[] f5177h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getStatusCode", id = 3)
    private final int f5178i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getMetadata", id = 4)
    private final Bundle f5179j;

    /* renamed from: k, reason: collision with root package name */
    private int[] f5180k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f5181l = false;
    private boolean m = true;

    static {
        new b(new String[0], null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) String[] strArr, @SafeParcelable.Param(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.f5174e = i2;
        this.f5175f = strArr;
        this.f5177h = cursorWindowArr;
        this.f5178i = i3;
        this.f5179j = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public final void close() {
        synchronized (this) {
            if (!this.f5181l) {
                this.f5181l = true;
                for (int i2 = 0; i2 < this.f5177h.length; i2++) {
                    this.f5177h[i2].close();
                }
            }
        }
    }

    protected final void finalize() {
        try {
            if (this.m && this.f5177h.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                sb.toString();
            }
        } finally {
            super.finalize();
        }
    }

    @KeepForSdk
    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f5181l;
        }
        return z;
    }

    @KeepForSdk
    public final Bundle j() {
        return this.f5179j;
    }

    @KeepForSdk
    public final int k() {
        return this.f5178i;
    }

    public final void l() {
        this.f5176g = new Bundle();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String[] strArr = this.f5175f;
            if (i3 >= strArr.length) {
                break;
            }
            this.f5176g.putInt(strArr[i3], i3);
            i3++;
        }
        this.f5180k = new int[this.f5177h.length];
        int i4 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f5177h;
            if (i2 >= cursorWindowArr.length) {
                return;
            }
            this.f5180k[i2] = i4;
            i4 += this.f5177h[i2].getNumRows() - (i4 - cursorWindowArr[i2].getStartPosition());
            i2++;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5175f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable[]) this.f5177h, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f5174e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
        if ((i2 & 1) != 0) {
            close();
        }
    }

    /* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class a {
        private a(String[] strArr, String str) {
            m.a(strArr);
            new ArrayList();
            new HashMap();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(String[] strArr, String str, b bVar) {
            this(strArr, null);
        }
    }
}
