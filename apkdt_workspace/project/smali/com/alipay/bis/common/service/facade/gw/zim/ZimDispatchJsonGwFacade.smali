.class public interface abstract Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;
.super Ljava/lang/Object;
.source "ZimDispatchJsonGwFacade.java"


# virtual methods
.method public abstract initStandard(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhub.zim.init.json"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract validateStandard(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhub.zim.verify.json"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
