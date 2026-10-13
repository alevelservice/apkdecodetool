.class public Lcom/alipay/zoloz/zface/manager/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# instance fields
.field private blob:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field private mContext:Landroid/content/Context;

.field private mNineShootManager:Lcom/alipay/zoloz/zface/manager/NineShootManager;

.field mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field private mUploadChannel:Lcom/alipay/zoloz/zface/manager/UploadChannel;

.field private publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    .line 4
    iput-object p4, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 5
    iget-object p2, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getEnv()I

    move-result v0

    invoke-static {p2, p4, v0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getPublicKey(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioAppDescription;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->publicKey:Ljava/lang/String;

    const-string p2, "com.alipay.zoloz.toyger.upload.UploadChannelByJson"

    .line 6
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 7
    const-class v2, Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/zoloz/zface/manager/UploadChannel;

    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/zface/manager/UploadChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    new-instance p1, Lcom/alipay/zoloz/zface/manager/NineShootManager;

    iget-object p2, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getEnv()I

    move-result v0

    invoke-static {p2, p4, v0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getPublicKey(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioAppDescription;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lcom/alipay/zoloz/zface/manager/NineShootManager;-><init>(Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    return-void
.end method

.method private getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .locals 2

    .line 1
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;-><init>()V

    .line 2
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->invtp:Ljava/lang/String;

    const-string p1, ""

    .line 4
    iput-object p1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->tm:Ljava/lang/String;

    const-string p1, "1"

    .line 5
    iput-object p1, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->retry:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavCommon:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    return-object v0
.end method

.method public static getPublicKey(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioAppDescription;I)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object p0

    const-string p1, "public_key_prod"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object p0

    const-string p1, "public_key_test"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    return-void
.end method

.method public getNineShoot()Lcom/alipay/zoloz/toyger/upload/UploadContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->getUploadContent()Lcom/alipay/zoloz/toyger/upload/UploadContent;

    move-result-object v0

    return-object v0
.end method

.method public getNineShootManager()Lcom/alipay/zoloz/zface/manager/NineShootManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    return-object v0
.end method

.method public setBlob(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set blob:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->blob:Ljava/util/Map;

    return-void
.end method

.method public uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/zface/manager/UploadChannel;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-direct {p0, v0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/zface/manager/UploadChannel;

    iget-object v3, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->publicKey:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/alipay/zoloz/zface/manager/UploadChannel;->uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object p1, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-virtual {p0, p1}, Lcom/alipay/zoloz/zface/manager/UploadManager;->uploadNineShoot(Lcom/alipay/mobile/security/faceauth/InvokeType;)V

    return-void
.end method

.method public uploadNineShoot(Lcom/alipay/mobile/security/faceauth/InvokeType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/zface/manager/UploadChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mNineShootManager:Lcom/alipay/zoloz/zface/manager/NineShootManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->isNeedUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getNineShoot()Lcom/alipay/zoloz/toyger/upload/UploadContent;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getBisBehavLogData(Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->mUploadChannel:Lcom/alipay/zoloz/zface/manager/UploadChannel;

    iget-object v3, p0, Lcom/alipay/zoloz/zface/manager/UploadManager;->publicKey:Ljava/lang/String;

    invoke-virtual {v2, v0, p1, v1, v3}, Lcom/alipay/zoloz/zface/manager/UploadChannel;->uploadNineShoot(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
