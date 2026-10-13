.class Lcom/google/common/collect/b$b;
.super Lcom/google/common/collect/b$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TE;>.c<",
        "Lcom/google/common/collect/v0$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/collect/b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b$b;->i:Lcom/google/common/collect/b;

    invoke-direct {p0, p1}, Lcom/google/common/collect/b$c;-><init>(Lcom/google/common/collect/b;)V

    return-void
.end method


# virtual methods
.method a(I)Lcom/google/common/collect/v0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/b$b;->i:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->backingMap:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->b(I)Lcom/google/common/collect/v0$a;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic a(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/b$b;->a(I)Lcom/google/common/collect/v0$a;

    move-result-object p1

    return-object p1
.end method
