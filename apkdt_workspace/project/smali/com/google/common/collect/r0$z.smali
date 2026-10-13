.class final Lcom/google/common/collect/r0$z;
.super Lcom/google/common/collect/r0$d;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/r0$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/r0$z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$d<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$z<",
        "TK;>;>;",
        "Lcom/google/common/collect/r0$w<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$z<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/r0$z;)V
    .locals 0
    .param p4    # Lcom/google/common/collect/r0$z;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/r0$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/r0$i;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/r0$z;)Lcom/google/common/collect/r0$z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;)",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$z;

    invoke-virtual {p0}, Lcom/google/common/collect/r0$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/r0$d;->a:I

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/common/collect/r0$z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/r0$z;)V

    return-object v0
.end method

.method public getValue()Lcom/google/common/collect/q0$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/common/collect/q0$a;->VALUE:Lcom/google/common/collect/q0$a;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$z;->getValue()Lcom/google/common/collect/q0$a;

    move-result-object v0

    return-object v0
.end method
