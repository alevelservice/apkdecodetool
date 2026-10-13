.class public Lcom/zoloz/android/phone/zdoc/bean/ZdocMetaInfo;
.super Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
.source "ZdocMetaInfo.java"

# interfaces
.implements Lcom/alipay/biometrics/common/proguard/INotProguard;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;-><init>()V

    .line 2
    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;-><init>()V

    const/16 v2, 0x6e

    .line 3
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioType(I)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setBioAction(I)V

    .line 5
    const-class v3, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppName(Ljava/lang/String;)V

    .line 6
    const-class v3, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->setAppInterfaceName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->addApplication(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    .line 8
    new-instance v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Long;

    .line 12
    sget-object v1, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->SME_UDOC:Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/BisSdkModuleEnum;->getProductID()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->addProductID([Ljava/lang/Long;)V

    return-void
.end method
