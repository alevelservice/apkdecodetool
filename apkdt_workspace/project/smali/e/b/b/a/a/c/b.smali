.class public Le/b/b/a/a/c/b;
.super Ljava/lang/Object;
.source "APLogConfigFacade.java"


# static fields
.field private static b:Z = true

.field private static c:Le/b/b/a/a/c/a;

.field private static d:Le/b/b/a/a/c/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 2
    new-instance v0, Le/b/b/a/a/c/b;

    invoke-direct {v0}, Le/b/b/a/a/c/b;-><init>()V

    sput-object v0, Le/b/b/a/a/c/b;->d:Le/b/b/a/a/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/c/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Le/b/b/a/a/c/b;
    .locals 1

    .line 2
    sget-object v0, Le/b/b/a/a/c/b;->d:Le/b/b/a/a/c/b;

    return-object v0
.end method

.method private a(Lcom/alipay/iap/android/aplog/core/filter/e;)Z
    .locals 6
    .param p1    # Lcom/alipay/iap/android/aplog/core/filter/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Le/b/b/a/a/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 6
    aget-object v2, v1, v2

    iget-object v3, p1, Lcom/alipay/iap/android/aplog/core/filter/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p1, Lcom/alipay/iap/android/aplog/core/filter/e;->a:Ljava/lang/String;

    const-string v3, "\\,"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 8
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 9
    array-length v5, v2

    if-le v5, v4, :cond_0

    const/4 v5, 0x2

    aget-object v1, v1, v5

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    return v2
.end method

.method static synthetic a(Le/b/b/a/a/c/b;Lcom/alipay/iap/android/aplog/core/filter/e;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/b/b/a/a/c/b;->a(Lcom/alipay/iap/android/aplog/core/filter/e;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Le/b/b/a/a/c/b;->b:Z

    return v0
.end method

.method static synthetic c()Le/b/b/a/a/c/a;
    .locals 1

    .line 1
    sget-object v0, Le/b/b/a/a/c/b;->c:Le/b/b/a/a/c/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/c/c;

    invoke-direct {v1, p0}, Le/b/b/a/a/c/c;-><init>(Le/b/b/a/a/c/b;)V

    invoke-interface {v0, v1}, Le/b/b/a/a/a/d;->a(Lcom/alipay/iap/android/aplog/core/filter/b;)V

    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    invoke-static {}, Le/b/b/a/b/c/a/b;->a()Le/b/b/a/b/c/a/b;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/c/d;

    invoke-direct {v1, p0}, Le/b/b/a/a/c/d;-><init>(Le/b/b/a/a/c/b;)V

    invoke-virtual {v0, v1}, Le/b/b/a/b/c/a/b;->a(Le/b/b/a/b/c/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Le/b/b/a/a/c/b;->e()V

    .line 4
    invoke-direct {p0}, Le/b/b/a/a/c/b;->d()V

    return-void
.end method
