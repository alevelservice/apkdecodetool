.class public Le/b/b/a/a/d/b;
.super Ljava/lang/Object;
.source "ContextInfo.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/b/b/a/a/d/b;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Le/b/b/a/a/d/b;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/b/b/a/a/d/b;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/b/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Le/b/b/a/a/d/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Le/b/b/a/a/d/b;->b:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/b;->b:Ljava/lang/String;

    return-object v0
.end method
