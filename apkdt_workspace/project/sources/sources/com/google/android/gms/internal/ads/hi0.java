package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.CheckForNull;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hi0 {

    /* renamed from: a, reason: collision with root package name */
    private final ConcurrentHashMap<String, zzalj> f7085a = new ConcurrentHashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private final ke0 f7086b;

    public hi0(ke0 ke0Var) {
        this.f7086b = ke0Var;
    }

    public final void a(String str) {
        try {
            this.f7085a.put(str, this.f7086b.a(str));
        } catch (RemoteException e2) {
            qd.b("Couldn't create RTB adapter : ", e2);
        }
    }

    @CheckForNull
    public final zzalj b(String str) {
        if (this.f7085a.containsKey(str)) {
            return this.f7085a.get(str);
        }
        return null;
    }
}
