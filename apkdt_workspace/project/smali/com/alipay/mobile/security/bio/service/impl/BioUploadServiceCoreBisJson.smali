.class public Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreBisJson;
.super Lcom/alipay/mobile/security/bio/service/BioUploadServiceCore;
.source "BioUploadServiceCoreBisJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/security/bio/service/BioUploadServiceCore<",
        "Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioUploadServiceCore;-><init>()V

    return-void
.end method


# virtual methods
.method public upload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 3

    .line 2
    new-instance p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {p2}, Lcom/alipay/mobile/security/bio/service/BioUploadResult;-><init>()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioService;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v1, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    .line 4
    const-class v1, Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload(): request= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    invoke-interface {v0, p1}, Lcom/alipay/bis/common/service/facade/gw/upload/BisJsonUploadGwFacade;->upload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload(): response= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwResult;->retCode:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    goto :goto_0

    :cond_0
    const/16 p1, 0xbba

    .line 9
    iput p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0xbb9

    .line 10
    iput p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    :goto_0
    return-object p2
.end method

.method public bridge synthetic upload(Ljava/lang/Object;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 0

    .line 1
    check-cast p1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreBisJson;->upload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1
.end method
