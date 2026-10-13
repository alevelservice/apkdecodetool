package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.a;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class n extends com.google.android.gms.dynamic.a<ISignInButtonCreator> {

    /* renamed from: c, reason: collision with root package name */
    private static final n f5329c = new n();

    private n() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i2, int i3) {
        return f5329c.b(context, i2, i3);
    }

    private final View b(Context context, int i2, int i3) {
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i2, i3, null);
            return (View) ObjectWrapper.unwrap(a(context).newSignInButtonFromConfig(ObjectWrapper.wrap(context), signInButtonConfig));
        } catch (Exception e2) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i2);
            sb.append(" and color ");
            sb.append(i3);
            throw new a.C0090a(sb.toString(), e2);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.dynamic.a
    public final ISignInButtonCreator a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        if (queryLocalInterface instanceof ISignInButtonCreator) {
            return (ISignInButtonCreator) queryLocalInterface;
        }
        return new zah(iBinder);
    }
}
