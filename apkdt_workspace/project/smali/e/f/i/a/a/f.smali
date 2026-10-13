.class public Le/f/i/a/a/f;
.super Ljava/lang/Object;
.source "AnimatedImageResultBuilder.java"


# instance fields
.field private final a:Le/f/i/a/a/c;

.field private b:Le/f/c/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>(Le/f/i/a/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/i/a/a/f;->a:Le/f/i/a/a/c;

    return-void
.end method


# virtual methods
.method public a()Le/f/i/a/a/e;
    .locals 3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Le/f/i/a/a/e;

    invoke-direct {v1, p0}, Le/f/i/a/a/e;-><init>(Le/f/i/a/a/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v2, p0, Le/f/i/a/a/f;->b:Le/f/c/g/a;

    invoke-static {v2}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 6
    iput-object v0, p0, Le/f/i/a/a/f;->b:Le/f/c/g/a;

    .line 7
    iget-object v2, p0, Le/f/i/a/a/f;->c:Ljava/util/List;

    invoke-static {v2}, Le/f/c/g/a;->c(Ljava/lang/Iterable;)V

    .line 8
    iput-object v0, p0, Le/f/i/a/a/f;->c:Ljava/util/List;

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Le/f/i/a/a/f;->b:Le/f/c/g/a;

    invoke-static {v2}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    .line 10
    iput-object v0, p0, Le/f/i/a/a/f;->b:Le/f/c/g/a;

    .line 11
    iget-object v2, p0, Le/f/i/a/a/f;->c:Ljava/util/List;

    invoke-static {v2}, Le/f/c/g/a;->c(Ljava/lang/Iterable;)V

    .line 12
    iput-object v0, p0, Le/f/i/a/a/f;->c:Ljava/util/List;

    .line 13
    throw v1
.end method

.method public a(I)Le/f/i/a/a/f;
    .locals 0

    .line 2
    iput p1, p0, Le/f/i/a/a/f;->d:I

    return-object p0
.end method

.method public a(Le/f/c/g/a;)Le/f/i/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Le/f/i/a/a/f;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object p1

    iput-object p1, p0, Le/f/i/a/a/f;->b:Le/f/c/g/a;

    return-object p0
.end method

.method public a(Ljava/util/List;)Le/f/i/a/a/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Le/f/i/a/a/f;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Le/f/c/g/a;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/f/i/a/a/f;->c:Ljava/util/List;

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/a/a/f;->c:Ljava/util/List;

    invoke-static {v0}, Le/f/c/g/a;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/a/a/f;->d:I

    return v0
.end method

.method public d()Le/f/i/a/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/i/a/a/f;->a:Le/f/i/a/a/c;

    return-object v0
.end method

.method public e()Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/i/a/a/f;->b:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method
