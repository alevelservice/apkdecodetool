.class public final Lcom/google/common/collect/y$a;
.super Lcom/google/common/collect/d0$c;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d0$c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/d0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/y$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y$a;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/Map$Entry;)Lcom/google/common/collect/d0$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y$a;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/y$a;

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/y$a;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/y$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$c;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/y$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/d0$c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0$c;

    return-object p0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/google/common/collect/y$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/y$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$c;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/d0$c;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/y<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    invoke-super {p0}, Lcom/google/common/collect/d0$c;->a()Lcom/google/common/collect/d0;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/y;

    return-object v0
.end method
