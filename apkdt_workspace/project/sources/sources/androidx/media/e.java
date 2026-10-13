package androidx.media;

import android.media.session.MediaSessionManager;

/* compiled from: MediaSessionManagerImplApi28.java */
/* loaded from: classes.dex */
final class e extends f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, int i2, int i3) {
        super(str, i2, i3);
        new MediaSessionManager.RemoteUserInfo(str, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
    }
}
