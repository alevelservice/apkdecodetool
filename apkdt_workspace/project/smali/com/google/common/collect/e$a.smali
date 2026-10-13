.class Lcom/google/common/collect/e$a;
.super Lcom/google/common/collect/w0$b;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/w0$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/e;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/e$a;->e:Lcom/google/common/collect/e;

    invoke-direct {p0}, Lcom/google/common/collect/w0$b;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e$a;->e:Lcom/google/common/collect/e;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e$a;->e:Lcom/google/common/collect/e;

    invoke-virtual {v0}, Lcom/google/common/collect/e;->elementIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
