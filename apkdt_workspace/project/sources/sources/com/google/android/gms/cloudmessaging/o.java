package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
final class o {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Messenger f4950a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final zza f4951b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(IBinder iBinder) {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if ("android.os.IMessenger".equals(interfaceDescriptor)) {
            this.f4950a = new Messenger(iBinder);
            this.f4951b = null;
        } else if (IMessengerCompat.DESCRIPTOR.equals(interfaceDescriptor)) {
            this.f4951b = new zza(iBinder);
            this.f4950a = null;
        } else {
            String valueOf = String.valueOf(interfaceDescriptor);
            if (valueOf.length() != 0) {
                "Invalid interface descriptor: ".concat(valueOf);
            } else {
                new String("Invalid interface descriptor: ");
            }
            throw new RemoteException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Message message) {
        Messenger messenger = this.f4950a;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zza zzaVar = this.f4951b;
        if (zzaVar != null) {
            zzaVar.a(message);
            return;
        }
        throw new IllegalStateException("Both messengers are null");
    }
}
