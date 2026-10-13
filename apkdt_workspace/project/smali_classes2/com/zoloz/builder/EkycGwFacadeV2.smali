.class public interface abstract Lcom/zoloz/builder/EkycGwFacadeV2;
.super Ljava/lang/Object;
.source "EkycGwFacadeV2.java"

# interfaces
.implements Lcom/ap/zhubid/endpoint/gateway/facade/EkycGwFacade;


# virtual methods
.method public abstract forward(Lcom/ap/zhubid/endpoint/gateway/model/ForwardRequest;)Lcom/ap/zhubid/endpoint/gateway/model/ForwardResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "com.zoloz.zhub.forward.v2"
    .end annotation
.end method
