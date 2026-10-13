.class public interface abstract Lcom/zoloz/builder/ZimDispatchJsonGwFacadeV2;
.super Ljava/lang/Object;
.source "ZimDispatchJsonGwFacadeV2.java"

# interfaces
.implements Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;


# virtual methods
.method public abstract init(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "zoloz.zim.dispatch.init.json"
    .end annotation
.end method

.method public abstract initStandard(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhub.zim.init.json.v2"
    .end annotation
.end method

.method public abstract validate(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "zoloz.zim.dispatch.validate.json"
    .end annotation
.end method

.method public abstract validateStandard(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhub.zim.verify.json.v2"
    .end annotation
.end method
