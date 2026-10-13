.class public Lcom/alipay/zoloz/toyger/doc/ToygerDocInfo;
.super Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;
.source "ToygerDocInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/zoloz/toyger/ToygerBiometricInfo<",
        "Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/doc/ToygerDocAttr;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->frame:Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    .line 4
    iput-object p2, p0, Lcom/alipay/zoloz/toyger/ToygerBiometricInfo;->attr:Lcom/alipay/zoloz/toyger/ToygerAttr;

    return-void
.end method
