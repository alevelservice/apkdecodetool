.class public Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;
.super Ljava/lang/Object;
.source "ZimMessageChannelCallbackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/security/zim/msgchannel/ZimMessageChannelCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "ZimMessageChannel"


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public getBioUploadResult()Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x41

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    return-object v0
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const-class v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/service/BioUploadResult;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    const-string v1, "responseCode"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3e9

    const/16 v3, 0x3e8

    const-string v4, "responseData"

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    const/16 v3, 0x7d6

    if-eq v1, v3, :cond_2

    const/16 v6, 0xbb8

    if-eq v1, v6, :cond_0

    .line 3
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iput v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    const/16 v0, 0x7d2

    .line 4
    iput v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 5
    sget-object v0, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto/16 :goto_3

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iput v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    const/16 v0, 0xbba

    .line 10
    iput v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 11
    sget-object v0, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->SERVER_PARAM_ERROR:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto/16 :goto_3

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iget v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->productRetCode:I

    iput v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 14
    iget v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    iput v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 15
    iget-boolean v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->hasNext:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    .line 16
    iget-object v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->nextProtocol:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->nextProtocol:Ljava/lang/String;

    .line 17
    iget-object v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retCodeSub:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 18
    iget-object v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retMessageSub:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    new-instance v1, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    goto :goto_3

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iput v3, v1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    const/16 v2, 0x7d1

    .line 23
    iput v2, v1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 24
    :try_start_1
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object p1, v5

    :goto_1
    if-eqz p1, :cond_7

    .line 26
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 27
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iget-object v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retCodeSub:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 30
    iget-object p1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retMessageSub:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    goto :goto_3

    .line 31
    :cond_4
    :try_start_2
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-object p1, v5

    :goto_2
    if-eqz p1, :cond_6

    .line 33
    iget-object v0, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 34
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    new-instance v1, Ljava/util/HashMap;

    iget-object v4, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->extParams:Ljava/util/Map;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iget-object v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retCodeSub:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    .line 37
    iget-object p1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->retMessageSub:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    .line 38
    :cond_6
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iput v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    .line 39
    iput v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 40
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mCountDownLatch.countDown(), mUploadResult="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/service/msgchannel/json/ZimMessageChannelCallbackImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
