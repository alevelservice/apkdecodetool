package com.google.android.gms.common.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public interface ISignInButtonCreator extends IInterface {
    IObjectWrapper newSignInButton(IObjectWrapper iObjectWrapper, int i2, int i3);

    IObjectWrapper newSignInButtonFromConfig(IObjectWrapper iObjectWrapper, SignInButtonConfig signInButtonConfig);
}
