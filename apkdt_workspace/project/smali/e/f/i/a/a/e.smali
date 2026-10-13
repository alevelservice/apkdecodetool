.class public Le/f/i/a/a/e;
.super Ljava/lang/Object;
.source "AnimatedImageResult.java"


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

    .annotation runtime Ljavax/annotation/Nullable;
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Le/f/i/a/a/c;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/f/i/a/a/c;

    iput-object p1, p0, Le/f/i/a/a/e;->a:Le/f/i/a/a/c;

    return-void
.end method

.method constructor <init>(Le/f/i/a/a/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Le/f/i/a/a/f;->d()Le/f/i/a/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Le/f/i/a/a/c;

    iput-object v0, p0, Le/f/i/a/a/e;->a:Le/f/i/a/a/c;

    .line 3
    invoke-virtual {p1}, Le/f/i/a/a/f;->c()I

    .line 4
    invoke-virtual {p1}, Le/f/i/a/a/f;->e()Le/f/c/g/a;

    move-result-object v0

    iput-object v0, p0, Le/f/i/a/a/e;->b:Le/f/c/g/a;

    .line 5
    invoke-virtual {p1}, Le/f/i/a/a/f;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/f/i/a/a/e;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Le/f/i/a/a/c;)Le/f/i/a/a/e;
    .locals 1

    .line 1
    new-instance v0, Le/f/i/a/a/e;

    invoke-direct {v0, p0}, Le/f/i/a/a/e;-><init>(Le/f/i/a/a/c;)V

    return-object v0
.end method

.method public static b(Le/f/i/a/a/c;)Le/f/i/a/a/f;
    .locals 1

    .line 1
    new-instance v0, Le/f/i/a/a/f;

    invoke-direct {v0, p0}, Le/f/i/a/a/f;-><init>(Le/f/i/a/a/c;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/f/i/a/a/e;->b:Le/f/c/g/a;

    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/i/a/a/e;->b:Le/f/c/g/a;

    .line 4
    iget-object v1, p0, Le/f/i/a/a/e;->c:Ljava/util/List;

    invoke-static {v1}, Le/f/c/g/a;->c(Ljava/lang/Iterable;)V

    .line 5
    iput-object v0, p0, Le/f/i/a/a/e;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Le/f/i/a/a/c;
    .locals 1

    .line 2
    iget-object v0, p0, Le/f/i/a/a/e;->a:Le/f/i/a/a/c;

    return-object v0
.end method
