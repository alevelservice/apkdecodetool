package e.b.b.a.a.d.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LogLifecycleCallback.java */
/* loaded from: classes.dex */
public class b extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f17020a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f17020a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.f17020a.a(false);
        }
    }
}
