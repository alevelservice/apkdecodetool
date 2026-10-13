package androidx.core.app;

import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class RemoteInput {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Source {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(20)
    public static android.app.RemoteInput[] a(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        if (remoteInputArr.length <= 0) {
            return remoteInputArr2;
        }
        a(remoteInputArr[0]);
        throw null;
    }

    public String a() {
        throw null;
    }

    @RequiresApi(20)
    static android.app.RemoteInput a(RemoteInput remoteInput) {
        remoteInput.a();
        throw null;
    }
}
