.class public final Lcom/google/common/collect/i0$a;
.super Lcom/google/common/collect/g0$a;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/g0$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/g0$a;-><init>()V

    .line 2
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/i0$a;->f:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/g0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i0$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/i0$a;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/g0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i0$a;->a(Ljava/util/Iterator;)Lcom/google/common/collect/i0$a;

    return-object p0
.end method

.method public bridge synthetic a()Lcom/google/common/collect/g0;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/i0$a;->a()Lcom/google/common/collect/i0;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/i0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/i0$a<",
            "TE;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/google/common/collect/g0$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/g0$a;

    return-object p0
.end method

.method public a(Ljava/util/Iterator;)Lcom/google/common/collect/i0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/i0$a<",
            "TE;>;"
        }
    .end annotation

    .line 7
    invoke-super {p0, p1}, Lcom/google/common/collect/g0$a;->a(Ljava/util/Iterator;)Lcom/google/common/collect/g0$a;

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/i0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/i0$a<",
            "TE;>;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1}, Lcom/google/common/collect/g0$a;->a([Ljava/lang/Object;)Lcom/google/common/collect/g0$a;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/i0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i0<",
            "TE;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/i0$a;->f:Ljava/util/Comparator;

    iget v2, p0, Lcom/google/common/collect/v$a;->b:I

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/i0;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/i0;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/v$a;->b:I

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/google/common/collect/v$a;->c:Z

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/i0$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/i0$a;

    return-object p0
.end method
