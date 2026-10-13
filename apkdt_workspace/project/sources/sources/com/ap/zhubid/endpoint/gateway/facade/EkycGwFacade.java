package com.ap.zhubid.endpoint.gateway.facade;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.ap.zhubid.endpoint.gateway.model.ForwardRequest;
import com.ap.zhubid.endpoint.gateway.model.ForwardResponse;

/* loaded from: classes.dex */
public interface EkycGwFacade {
    @OperationType("com.zoloz.zhub.forward")
    ForwardResponse forward(ForwardRequest forwardRequest);
}
