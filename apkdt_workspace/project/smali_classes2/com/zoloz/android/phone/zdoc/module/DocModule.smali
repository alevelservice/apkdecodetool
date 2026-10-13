.class public Lcom/zoloz/android/phone/zdoc/module/DocModule;
.super Ljava/lang/Object;
.source "DocModule.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private algorithm:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

.field private coll:Lcom/zoloz/android/phone/zdoc/module/CollModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/zoloz/android/phone/zdoc/module/CollModule;

    invoke-direct {v0}, Lcom/zoloz/android/phone/zdoc/module/CollModule;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/DocModule;->coll:Lcom/zoloz/android/phone/zdoc/module/CollModule;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/DocModule;->algorithm:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    return-object v0
.end method

.method public getColl()Lcom/zoloz/android/phone/zdoc/module/CollModule;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/DocModule;->coll:Lcom/zoloz/android/phone/zdoc/module/CollModule;

    return-object v0
.end method

.method public setAlgorithm(Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/DocModule;->algorithm:Lcom/zoloz/android/phone/zdoc/module/AlgorithmModule;

    return-void
.end method

.method public setColl(Lcom/zoloz/android/phone/zdoc/module/CollModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/DocModule;->coll:Lcom/zoloz/android/phone/zdoc/module/CollModule;

    return-void
.end method
