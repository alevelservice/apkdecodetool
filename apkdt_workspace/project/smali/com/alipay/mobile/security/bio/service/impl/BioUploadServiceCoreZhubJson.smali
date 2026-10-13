.class public Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreZhubJson;
.super Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;
.source "BioUploadServiceCoreZhubJson.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub<",
        "Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mBioUploadServiceCoreMessageChannel:Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 8

    const-string v0, "certNo"

    const-string v1, "certName"

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreZhubJson;->mBioUploadServiceCoreMessageChannel:Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreZhubJson;->mBioUploadServiceCoreMessageChannel:Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;->doUpload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {p2}, Lcom/alipay/mobile/security/bio/service/BioUploadResult;-><init>()V

    const/16 v2, 0x3e9

    const/16 v3, 0xbba

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/BioService;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v5, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    .line 6
    const-class v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    .line 7
    new-instance v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    invoke-direct {v5}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;-><init>()V

    .line 8
    iget-object v6, p0, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;->mZimId:Ljava/lang/String;

    iput-object v6, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->zimId:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->zimData:Ljava/lang/String;

    .line 10
    iget-object v6, p0, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;->mParams:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;->mParams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->bizData:Ljava/util/Map;

    .line 12
    iget-object v6, p0, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;->mParams:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 13
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 14
    iget-object v7, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->bizData:Ljava/util/Map;

    check-cast v6, Ljava/lang/String;

    invoke-interface {v7, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;->mParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 17
    iget-object v6, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->bizData:Ljava/util/Map;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload(): request= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    invoke-interface {v4, v5}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;->validateStandard(Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload(): response= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_3

    .line 21
    iput v2, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 22
    iput v3, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 23
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 24
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto/16 :goto_1

    .line 25
    :cond_3
    iget v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->productRetCode:I

    iput v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 26
    iget v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    iput v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 27
    iget-boolean v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->hasNext:Z

    iput-boolean v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    .line 28
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->nextProtocol:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->nextProtocol:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    iput-object v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    .line 30
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retCodeSub:Ljava/lang/String;

    iput-object v0, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 31
    iget-object p1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retMessageSub:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 32
    instance-of v0, p1, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;

    if-eqz v0, :cond_6

    .line 33
    check-cast p1, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;

    .line 34
    invoke-interface {p1}, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;->getCode()I

    move-result v0

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {p1}, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rpcResultCode"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-interface {p1}, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string v4, "rpcResultMsg"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "action"

    const-string v4, "validate"

    .line 38
    invoke-virtual {v1, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->getInstance()Lcom/alipay/mobile/security/zim/biz/RecordProcessor;

    move-result-object p1

    sget-object v4, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->KEY_ZTECH_RPC_ERROR:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->record(Ljava/lang/String;Ljava/util/Map;)Z

    const/16 p1, 0xfa1

    if-eq v0, p1, :cond_5

    const/4 p1, 0x5

    if-eq v0, p1, :cond_5

    const/16 p1, 0x10

    if-eq v0, p1, :cond_5

    const/4 p1, 0x2

    if-ne v0, p1, :cond_4

    goto :goto_0

    .line 40
    :cond_4
    iput v2, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 41
    iput v3, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 42
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    const/16 p1, 0xbb9

    .line 44
    iput p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 45
    iput v3, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 46
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->NETWORK_ERROR:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto :goto_1

    .line 48
    :cond_6
    iput v2, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 49
    iput v3, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 50
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    :goto_1
    return-object p2
.end method

.method public bridge synthetic doUpload(Ljava/lang/Object;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 0

    .line 1
    check-cast p1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreZhubJson;->doUpload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public setExtParams(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/zim/gw/BioUploadServiceCoreZhub;->setExtParams(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "zimMessageChannel"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;

    if-eqz p2, :cond_0

    .line 3
    new-instance v0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;-><init>(Ljava/lang/String;Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadServiceCoreZhubJson;->mBioUploadServiceCoreMessageChannel:Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;

    :cond_0
    return-void
.end method
