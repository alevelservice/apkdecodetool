.class public Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;
.super Ljava/lang/Object;
.source "BioUploadServiceCoreMessageChannel.java"


# instance fields
.field private final mZimId:Ljava/lang/String;

.field private final mZimMessageChannel:Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;->mZimId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;->mZimMessageChannel:Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;

    return-void
.end method


# virtual methods
.method public doUpload(Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 6

    .line 1
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadResult;-><init>()V

    .line 2
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;

    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;->mZimId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->zimId:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateJsonGwRequest;->zimData:Ljava/lang/String;

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "requestData"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload(): request= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v1, 0x3e9

    const/16 v3, 0xbba

    .line 8
    :try_start_0
    new-instance v4, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;-><init>(Ljava/lang/Object;)V

    .line 9
    iget-object v5, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/BioUploadServiceCoreMessageChannel;->mZimMessageChannel:Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;

    invoke-interface {v5, v2, v4}, Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannel;->onAction(Landroid/os/Bundle;Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannelCallback;)V

    .line 10
    invoke-virtual {v4}, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->getBioUploadResult()Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callBackImpl.getBioUploadResult() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v2, :cond_0

    .line 12
    iput v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 13
    iput v3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 14
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 15
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    instance-of v2, p1, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;

    if-eqz v2, :cond_3

    .line 17
    check-cast p1, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;

    .line 18
    invoke-interface {p1}, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;->getCode()I

    move-result p1

    const/16 v2, 0xfa1

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/16 v2, 0x10

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iput v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 20
    iput v3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 21
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0xbb9

    .line 23
    iput p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 24
    iput v3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 25
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->NETWORK_ERROR:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_3
    iput v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 28
    iput v3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 29
    sget-object p1, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    .line 31
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upload(): response= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method
