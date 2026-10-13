package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* compiled from: MediaSessionManager.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    d f2488a;

    public c(@NonNull String str, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2488a = new e(str, i2, i3);
        } else {
            this.f2488a = new f(str, i2, i3);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.f2488a.equals(((c) obj).f2488a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2488a.hashCode();
    }

    @RequiresApi(28)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public c(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.f2488a = new e(remoteUserInfo);
    }
}
