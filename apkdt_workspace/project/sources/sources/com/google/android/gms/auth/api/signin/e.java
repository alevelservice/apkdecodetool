package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Comparator {

    /* renamed from: e, reason: collision with root package name */
    static final Comparator f4851e = new e();

    private e() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((Scope) obj).j().compareTo(((Scope) obj2).j());
        return compareTo;
    }
}
