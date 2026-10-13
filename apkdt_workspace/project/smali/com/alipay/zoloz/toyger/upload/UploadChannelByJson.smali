.class public Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;
.super Lcom/alipay/zoloz/zface/manager/UploadChannel;
.source "UploadChannelByJson.java"


# instance fields
.field private mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/manager/UploadChannel;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    iput-object p1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string v0, "BioServiceManager is null..."

    invoke-direct {p1, v0}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public uploadBehaviourLog(Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V

    .line 2
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B

    .line 4
    iput-object p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    .line 6
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I

    :cond_0
    return-void
.end method

.method public uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V

    .line 2
    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    .line 3
    iget-object p4, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B

    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:[B

    .line 4
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B

    .line 5
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->contentSig:[B

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->contentSig:[B

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    .line 8
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I

    :cond_0
    return-void
.end method

.method public uploadNineShoot(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadItem;-><init>()V

    .line 3
    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->publicKey:Ljava/lang/String;

    .line 4
    iget-object p4, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B

    iput-object p4, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->content:[B

    .line 5
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->log:[B

    .line 6
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->bisToken:Ljava/lang/String;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    .line 8
    iget-object p1, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->contentSig:[B

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->contentSig:[B

    .line 9
    iget-object p1, p0, Lcom/alipay/zoloz/toyger/upload/UploadChannelByJson;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->upload(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)I

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "content is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
