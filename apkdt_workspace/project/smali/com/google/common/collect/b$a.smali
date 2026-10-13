.class Lcom/google/common/collect/b$a;
.super Lcom/google/common/collect/b$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/b;->elementIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TE;>.c<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/collect/b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b$a;->i:Lcom/google/common/collect/b;

    invoke-direct {p0, p1}, Lcom/google/common/collect/b$c;-><init>(Lcom/google/common/collect/b;)V

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/b$a;->i:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->backingMap:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
