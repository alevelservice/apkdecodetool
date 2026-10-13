package com.zoloz.builder;

import com.alipay.bis.common.service.facade.gw.zim.ZimDispatchJsonGwFacade;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwRequest;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwResponse;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateGwResponse;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateJsonGwRequest;
import com.alipay.mobile.framework.service.annotation.OperationType;

/* loaded from: classes2.dex */
public interface ZimDispatchJsonGwFacadeV2 extends ZimDispatchJsonGwFacade {
    @OperationType("zoloz.zim.dispatch.init.json")
    ZimInitGwResponse init(ZimInitGwRequest zimInitGwRequest);

    @Override // com.alipay.bis.common.service.facade.gw.zim.ZimDispatchJsonGwFacade
    @OperationType("com.zoloz.zhub.zim.init.json.v2")
    ZimInitGwResponse initStandard(ZimInitGwRequest zimInitGwRequest);

    @OperationType("zoloz.zim.dispatch.validate.json")
    ZimValidateGwResponse validate(ZimValidateJsonGwRequest zimValidateJsonGwRequest);

    @Override // com.alipay.bis.common.service.facade.gw.zim.ZimDispatchJsonGwFacade
    @OperationType("com.zoloz.zhub.zim.verify.json.v2")
    ZimValidateGwResponse validateStandard(ZimValidateJsonGwRequest zimValidateJsonGwRequest);
}
