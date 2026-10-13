.class public Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;
.super Ljava/lang/Object;
.source "ZdocResponse.java"


# instance fields
.field public bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

.field public ext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public retCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->ext:Ljava/util/Map;

    return-void
.end method
