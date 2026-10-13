.class Lcom/google/common/collect/k$b;
.super Lcom/google/common/collect/k$e;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/collect/k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/k$b;->i:Lcom/google/common/collect/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/k$e;-><init>(Lcom/google/common/collect/k;Lcom/google/common/collect/k$a;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k$b;->a(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method a(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/k$g;

    iget-object v1, p0, Lcom/google/common/collect/k$b;->i:Lcom/google/common/collect/k;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/k$g;-><init>(Lcom/google/common/collect/k;I)V

    return-object v0
.end method
