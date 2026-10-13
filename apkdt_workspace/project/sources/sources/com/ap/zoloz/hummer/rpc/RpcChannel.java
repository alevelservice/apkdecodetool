package com.ap.zoloz.hummer.rpc;

import com.zoloz.zhub.common.factor.facade.HummerGWFacade;
import com.zoloz.zhub.common.factor.model.FactorNextRequest;
import com.zoloz.zhub.common.factor.model.FactorNextResponse;

/* loaded from: classes.dex */
public class RpcChannel {
    public FactorNextResponse next(FactorNextRequest factorNextRequest, HummerGWFacade hummerGWFacade) {
        return hummerGWFacade.forward(factorNextRequest);
    }
}
