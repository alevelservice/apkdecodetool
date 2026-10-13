.class public Lcom/alipay/zoloz/hardware/HardwareMetaInfo;
.super Lcom/alipay/mobile/security/bio/service/BioMetaInfo;
.source "HardwareMetaInfo.java"


# annotations
.annotation build Lcom/alipay/biometrics/common/annotation/NotProguard;
.end annotation


# static fields
.field public static final ASTRA_PRO_ISP_SERVICE:Ljava/lang/String; = "com.alipay.zoloz.hardware.isp.AstraProIspService"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;-><init>()V

    const-string v0, ""

    const-string v1, "AstraPro"

    .line 2
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AstraPro2"

    .line 3
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "com.alipay.zoloz.hardware.isp.AstraProIspService"

    .line 5
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setClazz(Ljava/lang/Class;)V

    .line 6
    const-class v1, Lcom/alipay/zoloz/hardware/isp/IspService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->setInterfaceName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/service/BioMetaInfo;->addExtService(Lcom/alipay/mobile/security/bio/service/BioServiceDescription;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
