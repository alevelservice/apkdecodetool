.class public Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;
.super Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;
.source "BioUploadJsonGWImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW<",
        "Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    return-void
.end method

.method private encryptUploadInfo(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->mBioStoreService:Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioStoreService;->getRandom()[B

    move-result-object v0

    .line 2
    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B

    iput-object v2, v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->content:[B

    .line 4
    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->publicKey:Ljava/lang/String;

    .line 5
    iput-object v0, v1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->random:[B

    .line 6
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->mBioStoreService:Lcom/alipay/mobile/security/bio/service/BioStoreService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioStoreService;->encryptWithRandom(Lcom/alipay/mobile/security/bio/service/BioStoreParameter;)Lcom/alipay/mobile/security/bio/service/BioStoreResult;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;

    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;-><init>()V

    .line 8
    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->bisToken:Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    .line 9
    iget-object v3, v0, Lcom/alipay/mobile/security/bio/service/BioStoreResult;->encodeContent:[B

    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLog:Ljava/lang/String;

    .line 10
    iget-object v0, v0, Lcom/alipay/mobile/security/bio/service/BioStoreResult;->encodeSeed:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLogSig:Ljava/lang/String;

    .line 11
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:[B

    if-nez v0, :cond_1

    .line 12
    iget-boolean p1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->doUpload(Ljava/lang/Object;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->content:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->contentSig:[B

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->contentSig:Ljava/lang/String;

    .line 15
    iget-boolean p1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->doUpload(Ljava/lang/Object;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1
.end method

.method private unEncrytUploadInfo(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->bisToken:Ljava/lang/String;

    const-string v1, ""

    .line 3
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLogSig:Ljava/lang/String;

    .line 4
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->contentSig:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->content:Ljava/lang/String;

    .line 6
    iget-object v1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/upload/BisJsonUploadGwRequest;->behavLog:Ljava/lang/String;

    .line 7
    iget-boolean p1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->doUpload(Ljava/lang/Object;Z)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->unEncrytUploadInfo(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;->encryptUploadInfo(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object p1

    return-object p1
.end method
