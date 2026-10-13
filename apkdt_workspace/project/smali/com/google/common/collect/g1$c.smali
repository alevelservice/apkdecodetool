.class Lcom/google/common/collect/g1$c;
.super Ljava/lang/Object;
.source "RegularImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final counts:[I

.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/g1$c;->elements:[Ljava/lang/Object;

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/g1$c;->counts:[I

    .line 5
    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/v0$a;

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/g1$c;->elements:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/g1$c;->counts:[I

    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$b;

    iget-object v1, p0, Lcom/google/common/collect/g1$c;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e0$b;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/g1$c;->elements:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/g1$c;->counts:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/e0$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/e0$b;->a()Lcom/google/common/collect/e0;

    move-result-object v0

    return-object v0
.end method
