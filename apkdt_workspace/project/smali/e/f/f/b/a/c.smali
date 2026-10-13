.class public Le/f/f/b/a/c;
.super Ljava/lang/Object;
.source "Fresco.java"


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static b:Le/f/f/b/a/f; = null

.field private static volatile c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/f/f/b/a/c;

    sput-object v0, Le/f/f/b/a/c;->a:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Le/f/f/b/a/e;
    .locals 1

    .line 27
    sget-object v0, Le/f/f/b/a/c;->b:Le/f/f/b/a/f;

    invoke-virtual {v0}, Le/f/f/b/a/f;->get()Le/f/f/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Le/f/f/b/a/c;->a(Landroid/content/Context;Lcom/facebook/imagepipeline/core/h;Le/f/f/b/a/b;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/imagepipeline/core/h;Le/f/f/b/a/b;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/core/h;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Le/f/f/b/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco#initialize"

    .line 3
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-boolean v0, Le/f/f/b/a/c;->c:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Le/f/f/b/a/c;->a:Ljava/lang/Class;

    const-string v1, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!"

    invoke-static {v0, v1}, Le/f/c/d/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Le/f/f/b/a/c;->c:Z

    .line 7
    :goto_0
    :try_start_0
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Fresco.initialize->SoLoader.init"

    .line 8
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;I)V

    .line 10
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Le/f/i/j/b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p1, :cond_4

    .line 13
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/j;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/j;->a(Lcom/facebook/imagepipeline/core/h;)V

    .line 15
    :goto_1
    invoke-static {p0, p2}, Le/f/f/b/a/c;->a(Landroid/content/Context;Le/f/f/b/a/b;)V

    .line 16
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 17
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_5
    return-void

    :catch_0
    move-exception p0

    .line 18
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    invoke-static {}, Le/f/i/j/b;->a()V

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not initialize SoLoader"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Landroid/content/Context;Le/f/f/b/a/b;)V
    .locals 1
    .param p1    # Le/f/f/b/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Fresco.initializeDrawee"

    .line 22
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 23
    :cond_0
    new-instance v0, Le/f/f/b/a/f;

    invoke-direct {v0, p0, p1}, Le/f/f/b/a/f;-><init>(Landroid/content/Context;Le/f/f/b/a/b;)V

    sput-object v0, Le/f/f/b/a/c;->b:Le/f/f/b/a/f;

    .line 24
    sget-object p0, Le/f/f/b/a/c;->b:Le/f/f/b/a/f;

    invoke-static {p0}, Lcom/facebook/drawee/view/SimpleDraweeView;->initialize(Lcom/facebook/common/internal/j;)V

    .line 25
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-void
.end method
