.class public Lcom/zoloz/android/phone/zdoc/upload/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# instance fields
.field private mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field private mBioType:I

.field private mBisToken:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPublicKey:Ljava/lang/String;

.field private mRetryTimes:I

.field private mUploadChannel:Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;

.field private mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

.field private mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioAppDescription;Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mPublicKey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    .line 4
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 5
    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mRetryTimes:I

    .line 7
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 9
    iput-object p3, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    return-void
.end method

.method private getBehavLogData(Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;
    .locals 7

    .line 1
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;-><init>()V

    .line 2
    new-instance v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

    invoke-direct {v1}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;-><init>()V

    const-string v2, "1.0"

    .line 3
    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->clientVer:Ljava/lang/String;

    .line 4
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->model:Ljava/lang/String;

    const-string v2, "android"

    .line 5
    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->os:Ljava/lang/String;

    .line 6
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;->osVer:Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

    invoke-direct {v2}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;-><init>()V

    .line 8
    iget-object v3, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBisToken:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->token:Ljava/lang/String;

    .line 9
    iget v3, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioType:I

    iput v3, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->type:I

    const/16 v3, 0x12c

    .line 10
    iput v3, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->sampleMode:I

    .line 11
    iget-object v3, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v4, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->apdid:Ljava/lang/String;

    const-string v4, ""

    .line 12
    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->bizid:Ljava/lang/String;

    .line 13
    iget-object v4, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->appid:Ljava/lang/String;

    .line 14
    iget-object v4, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->behid:Ljava/lang/String;

    .line 15
    iget-object v4, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->uid:Ljava/lang/String;

    .line 16
    iget-object v4, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->verifyid:Ljava/lang/String;

    .line 17
    iget-object v3, v3, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;->vtoken:Ljava/lang/String;

    .line 18
    new-instance v3, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    .line 19
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    invoke-direct {v5}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->invtp:Ljava/lang/String;

    .line 22
    iget p1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mRetryTimes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->retry:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;->tm:Ljava/lang/String;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    invoke-direct {v3}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;-><init>()V

    const/4 v4, 0x0

    .line 26
    iput v4, v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->dur:I

    const-string v6, "CommonCardActivity"

    .line 27
    iput-object v6, v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->idx:Ljava/lang/String;

    .line 28
    iput-object v6, v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->name:Ljava/lang/String;

    .line 29
    iput v4, v3, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;->quality:I

    .line 30
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iput-object v5, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavCommon:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavCommon;

    .line 32
    iput-object p1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavTask:Ljava/util/List;

    .line 33
    iput-object v2, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->behavToken:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavToken;

    .line 34
    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;->clientInfo:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisClientInfo;

    return-object v0
.end method

.method private initUserVerifyInfo()V
    .locals 4

    .line 1
    new-instance v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "APDID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 3
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->apdid:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "appid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 5
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->appid:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->behid:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "SCENE_ID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 8
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->sceid:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "userid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 11
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->userid:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "TOKEN_ID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 13
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    iput-object v1, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->vtoken:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "verifyid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 15
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :cond_5
    iput-object v3, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->verifyid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .locals 5

    const-string v0, "bid-log-key-public.key"

    const-string v1, "bid-log-key-public_t.key"

    .line 1
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mZdocRemoteConfig:Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-virtual {v2}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getEnv()I

    move-result v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "public key env"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_1

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "public_key_prod"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :cond_0
    move-object v2, v1

    goto :goto_2

    .line 6
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v0

    const-string v2, "public_key_test"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v0, :cond_2

    .line 7
    :try_start_3
    iget-object v2, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    :goto_2
    return-object v2
.end method

.method public getmPublicKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->initUserVerifyInfo()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUserVerfyInfo:Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;

    iget-object v0, v0, Lcom/alipay/mobile/security/faceauth/UserVerifyInfo;->bistoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBisToken:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBioType()I

    move-result v0

    iput v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBioType:I

    .line 4
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mPublicKey:Ljava/lang/String;

    const-string v1, "com.zoloz.android.phone.zdoc.upload.UploadChannelByJson"

    .line 6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    const-class v4, Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUploadChannel:Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mRetryTimes:I

    return-void
.end method

.method public upload([B[BZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUploadChannel:Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;

    new-instance v1, Lcom/alipay/zoloz/toyger/upload/UploadContent;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/zoloz/toyger/upload/UploadContent;-><init>([B[BZ)V

    sget-object p1, Lcom/alipay/mobile/security/faceauth/InvokeType;->NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    .line 2
    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->getBehavLogData(Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    move-result-object p1

    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBisToken:Ljava/lang/String;

    iget-object p3, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mPublicKey:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;->uploadPaperInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uploadNineShoot([B[BZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mUploadChannel:Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;

    new-instance v1, Lcom/alipay/zoloz/toyger/upload/UploadContent;

    invoke-direct {v1, p1, p2, p3}, Lcom/alipay/zoloz/toyger/upload/UploadContent;-><init>([B[BZ)V

    sget-object p1, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->getBehavLogData(Lcom/alipay/mobile/security/faceauth/InvokeType;)Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;

    move-result-object p1

    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mBisToken:Ljava/lang/String;

    iget-object p3, p0, Lcom/zoloz/android/phone/zdoc/upload/UploadManager;->mPublicKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/zoloz/android/phone/zdoc/upload/UploadChannel;->uploadNineShoot(Lcom/alipay/zoloz/toyger/upload/UploadContent;Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavLog;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
