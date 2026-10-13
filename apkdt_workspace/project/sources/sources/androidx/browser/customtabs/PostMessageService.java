package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.IPostMessageService;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class PostMessageService extends Service {

    /* renamed from: e, reason: collision with root package name */
    private IPostMessageService.Stub f1514e = new IPostMessageService.Stub() { // from class: androidx.browser.customtabs.PostMessageService.1
        @Override // android.support.customtabs.IPostMessageService
        public void onMessageChannelReady(@NonNull ICustomTabsCallback iCustomTabsCallback, @Nullable Bundle bundle) {
            iCustomTabsCallback.onMessageChannelReady(bundle);
        }

        @Override // android.support.customtabs.IPostMessageService
        public void onPostMessage(@NonNull ICustomTabsCallback iCustomTabsCallback, @NonNull String str, @Nullable Bundle bundle) {
            iCustomTabsCallback.onPostMessage(str, bundle);
        }
    };

    @Override // android.app.Service
    @NonNull
    public IBinder onBind(@Nullable Intent intent) {
        return this.f1514e;
    }
}
