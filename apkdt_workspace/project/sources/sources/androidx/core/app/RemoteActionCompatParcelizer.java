package androidx.core.app;

import android.app.PendingIntent;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(androidx.versionedparcelable.b bVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1701a = (IconCompat) bVar.a((androidx.versionedparcelable.b) remoteActionCompat.f1701a, 1);
        remoteActionCompat.f1702b = bVar.a(remoteActionCompat.f1702b, 2);
        remoteActionCompat.f1703c = bVar.a(remoteActionCompat.f1703c, 3);
        remoteActionCompat.f1704d = (PendingIntent) bVar.a((androidx.versionedparcelable.b) remoteActionCompat.f1704d, 4);
        remoteActionCompat.f1705e = bVar.a(remoteActionCompat.f1705e, 5);
        remoteActionCompat.f1706f = bVar.a(remoteActionCompat.f1706f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, androidx.versionedparcelable.b bVar) {
        bVar.a(false, false);
        bVar.b(remoteActionCompat.f1701a, 1);
        bVar.b(remoteActionCompat.f1702b, 2);
        bVar.b(remoteActionCompat.f1703c, 3);
        bVar.b(remoteActionCompat.f1704d, 4);
        bVar.b(remoteActionCompat.f1705e, 5);
        bVar.b(remoteActionCompat.f1706f, 6);
    }
}
