.class final Lcom/google/common/collect/r0$q;
.super Lcom/google/common/collect/r0$c;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/r0$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/r0$q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$c<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$q<",
        "TK;>;>;",
        "Lcom/google/common/collect/r0$w<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$q<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/r0$q;)V
    .locals 0
    .param p3    # Lcom/google/common/collect/r0$q;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/r0$c;-><init>(Ljava/lang/Object;ILcom/google/common/collect/r0$i;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/r0$q;)Lcom/google/common/collect/r0$q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;)",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$q;

    iget-object v1, p0, Lcom/google/common/collect/r0$c;->a:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/r0$c;->b:I

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/r0$q;-><init>(Ljava/lang/Object;ILcom/google/common/collect/r0$q;)V

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
    invoke-virtual {p0}, Lcom/google/common/collect/r0$q;->getValue()Lcom/google/common/collect/q0$a;

    move-result-object v0

    return-object v0
.end method
