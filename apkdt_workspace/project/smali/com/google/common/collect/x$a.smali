.class public final Lcom/google/common/collect/x$a;
.super Lcom/google/common/collect/v$a;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x;
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
        "Lcom/google/common/collect/v$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/x$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/v$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/x$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/x$a<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/common/collect/v$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    return-object p0
.end method

.method public a(Ljava/util/Iterator;)Lcom/google/common/collect/x$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/x$a<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/common/collect/v$b;->a(Ljava/util/Iterator;)Lcom/google/common/collect/v$b;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/v$a;->c:Z

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/v$a;->b:I

    invoke-static {v0, v1}, Lcom/google/common/collect/x;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/x;

    move-result-object v0

    return-object v0
.end method
