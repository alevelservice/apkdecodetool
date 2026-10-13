package com.zoloz.builder;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.ap.zhubid.endpoint.gateway.facade.EkycGwFacade;
import com.ap.zhubid.endpoint.gateway.model.ForwardRequest;
import com.ap.zhubid.endpoint.gateway.model.ForwardResponse;

/* loaded from: classes2.dex */
public interface EkycGwFacadeV2 extends EkycGwFacade {
    @Override // com.ap.zhubid.endpoint.gateway.facade.EkycGwFacade
    @OperationType("com.zoloz.zhub.forward.v2")
    ForwardResponse forward(ForwardRequest forwardRequest);
}
