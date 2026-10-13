.class final Lcom/google/common/collect/c0;
.super Lcom/google/common/collect/v;
.source "ImmutableMapValues.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/c0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/v;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/z;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/c0;)Lcom/google/common/collect/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/z;

    return-object p0
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g0;->asList()Lcom/google/common/collect/x;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/c0$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/c0$b;-><init>(Lcom/google/common/collect/c0;Lcom/google/common/collect/x;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/m0;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t1<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/c0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c0$a;-><init>(Lcom/google/common/collect/c0;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/z;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/c0$c;

    iget-object v1, p0, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/z;

    invoke-direct {v0, v1}, Lcom/google/common/collect/c0$c;-><init>(Lcom/google/common/collect/z;)V

    return-object v0
.end method
