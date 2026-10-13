.class Lcom/google/common/collect/g1;
.super Lcom/google/common/collect/e0;
.source "RegularImmutableMultiset.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g1$c;,
        Lcom/google/common/collect/g1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e0<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient contents:Lcom/google/common/collect/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b1<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient h:I

.field private transient i:Lcom/google/common/collect/g0;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g0<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/g1;

    .line 2
    invoke-static {}, Lcom/google/common/collect/b1;->d()Lcom/google/common/collect/b1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/g1;-><init>(Lcom/google/common/collect/b1;)V

    sput-object v0, Lcom/google/common/collect/g1;->EMPTY:Lcom/google/common/collect/g1;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/b1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b1<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/e0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/g1;->contents:Lcom/google/common/collect/b1;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/b1;->c()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcom/google/common/collect/b1;->d(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Le/i/c/c/a;->a(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/g1;->h:I

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g1;->contents:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public elementSet()Lcom/google/common/collect/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/g1;->i:Lcom/google/common/collect/g0;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/common/collect/g1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/g1$b;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/g1$a;)V

    iput-object v0, p0, Lcom/google/common/collect/g1;->i:Lcom/google/common/collect/g0;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g1;->elementSet()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/v0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/g1;->contents:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->b(I)Lcom/google/common/collect/v0$a;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/g1;->h:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/g1$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/g1$c;-><init>(Lcom/google/common/collect/v0;)V

    return-object v0
.end method
