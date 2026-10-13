.class Lcom/google/common/collect/k$h;
.super Ljava/util/AbstractCollection;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k$h;->e:Lcom/google/common/collect/k;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k$h;->e:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k$h;->e:Lcom/google/common/collect/k;

    invoke-virtual {v0}, Lcom/google/common/collect/k;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/k$h;->e:Lcom/google/common/collect/k;

    invoke-static {v0}, Lcom/google/common/collect/k;->access$100(Lcom/google/common/collect/k;)I

    move-result v0

    return v0
.end method
