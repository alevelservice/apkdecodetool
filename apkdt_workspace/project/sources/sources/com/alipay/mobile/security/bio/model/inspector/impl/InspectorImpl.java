package com.alipay.mobile.security.bio.model.inspector.impl;

import android.content.Context;
import com.alipay.mobile.security.bio.exception.BioObjectNotInitialException;
import com.alipay.mobile.security.bio.model.inspector.Inspector;

/* loaded from: classes.dex */
public class InspectorImpl implements Inspector {
    Context mContext;

    public InspectorImpl(Context context) {
        if (context == null) {
            this.mContext = context;
            return;
        }
        throw new BioObjectNotInitialException("Context");
    }

    @Override // com.alipay.mobile.security.bio.model.inspector.Inspector
    public int checkEnvironment() {
        return 0;
    }
}
