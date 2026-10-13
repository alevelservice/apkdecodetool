.class abstract Lcom/google/common/collect/v$a;
.super Lcom/google/common/collect/v$b;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/v$b;-><init>()V

    const-string v0, "initialCapacity"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/collect/i;->a(ILjava/lang/String;)I

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/v$a;->b:I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lcom/google/common/collect/v$b;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    .line 4
    iput-boolean v2, p0, Lcom/google/common/collect/v$a;->c:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/v$a;->c:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    .line 7
    iput-boolean v2, p0, Lcom/google/common/collect/v$a;->c:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/v$a;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/v$a<",
            "TE;>;"
        }
    .end annotation

    .line 8
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/v$a;->a(I)V

    .line 10
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/v$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/v$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/v$b;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/v$b<",
            "TE;>;"
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lcom/google/common/collect/a1;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/v$a;->a(I)V

    .line 13
    iget-object v0, p0, Lcom/google/common/collect/v$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/v$a;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v0, p0, Lcom/google/common/collect/v$a;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/v$a;->b:I

    return-object p0
.end method
