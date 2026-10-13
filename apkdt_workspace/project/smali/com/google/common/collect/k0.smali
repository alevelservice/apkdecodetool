.class abstract Lcom/google/common/collect/k0;
.super Lcom/google/common/collect/g0;
.source "IndexedImmutableSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g0<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/g0;-><init>()V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g0;->asList()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method createAsList()Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/k0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k0$a;-><init>(Lcom/google/common/collect/k0;)V

    return-object v0
.end method

.method abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public iterator()Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/g0;->asList()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method
