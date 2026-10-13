.class final Lcom/baseflow/permissionhandler/p;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lg/a/c/a/k$c;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/baseflow/permissionhandler/n;

.field private final g:Lcom/baseflow/permissionhandler/r;

.field private final h:Lcom/baseflow/permissionhandler/t;

.field private i:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/baseflow/permissionhandler/r$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/baseflow/permissionhandler/r$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baseflow/permissionhandler/n;Lcom/baseflow/permissionhandler/r;Lcom/baseflow/permissionhandler/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baseflow/permissionhandler/p;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/baseflow/permissionhandler/p;->f:Lcom/baseflow/permissionhandler/n;

    .line 4
    iput-object p3, p0, Lcom/baseflow/permissionhandler/p;->g:Lcom/baseflow/permissionhandler/r;

    .line 5
    iput-object p4, p0, Lcom/baseflow/permissionhandler/p;->h:Lcom/baseflow/permissionhandler/t;

    return-void
.end method

.method static synthetic a(Lg/a/c/a/k$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, p1, p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lg/a/c/a/k$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lg/a/c/a/k$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lg/a/c/a/k$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lg/a/c/a/k$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/baseflow/permissionhandler/p;->i:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/baseflow/permissionhandler/r$a;)V
    .locals 0
    .param p1    # Lcom/baseflow/permissionhandler/r$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/baseflow/permissionhandler/p;->j:Lcom/baseflow/permissionhandler/r$a;

    return-void
.end method

.method public a(Lcom/baseflow/permissionhandler/r$d;)V
    .locals 0
    .param p1    # Lcom/baseflow/permissionhandler/r$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/baseflow/permissionhandler/p;->k:Lcom/baseflow/permissionhandler/r$d;

    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 7
    .param p1    # Lg/a/c/a/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "requestPermissions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "openAppSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "checkPermissionStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "checkServiceStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/baseflow/permissionhandler/p;->f:Lcom/baseflow/permissionhandler/n;

    iget-object v0, p0, Lcom/baseflow/permissionhandler/p;->e:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/baseflow/permissionhandler/g;

    invoke-direct {v1, p2}, Lcom/baseflow/permissionhandler/g;-><init>(Lg/a/c/a/k$d;)V

    new-instance v2, Lcom/baseflow/permissionhandler/a;

    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/a;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/baseflow/permissionhandler/n;->a(Landroid/content/Context;Lcom/baseflow/permissionhandler/n$a;Lcom/baseflow/permissionhandler/o;)V

    goto/16 :goto_2

    .line 4
    :cond_2
    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/baseflow/permissionhandler/p;->g:Lcom/baseflow/permissionhandler/r;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/p;->i:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/baseflow/permissionhandler/h;

    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/h;-><init>(Lg/a/c/a/k$d;)V

    new-instance v3, Lcom/baseflow/permissionhandler/e;

    invoke-direct {v3, p2}, Lcom/baseflow/permissionhandler/e;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baseflow/permissionhandler/r;->a(ILandroid/app/Activity;Lcom/baseflow/permissionhandler/r$g;Lcom/baseflow/permissionhandler/o;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p1}, Lg/a/c/a/j;->a()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 7
    iget-object v0, p0, Lcom/baseflow/permissionhandler/p;->g:Lcom/baseflow/permissionhandler/r;

    iget-object v2, p0, Lcom/baseflow/permissionhandler/p;->i:Landroid/app/Activity;

    iget-object v3, p0, Lcom/baseflow/permissionhandler/p;->j:Lcom/baseflow/permissionhandler/r$a;

    iget-object v4, p0, Lcom/baseflow/permissionhandler/p;->k:Lcom/baseflow/permissionhandler/r$d;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/baseflow/permissionhandler/m;

    invoke-direct {v5, p2}, Lcom/baseflow/permissionhandler/m;-><init>(Lg/a/c/a/k$d;)V

    new-instance v6, Lcom/baseflow/permissionhandler/b;

    invoke-direct {v6, p2}, Lcom/baseflow/permissionhandler/b;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual/range {v0 .. v6}, Lcom/baseflow/permissionhandler/r;->a(Ljava/util/List;Landroid/app/Activity;Lcom/baseflow/permissionhandler/r$a;Lcom/baseflow/permissionhandler/r$d;Lcom/baseflow/permissionhandler/r$f;Lcom/baseflow/permissionhandler/o;)V

    goto :goto_2

    .line 8
    :cond_4
    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 9
    iget-object v0, p0, Lcom/baseflow/permissionhandler/p;->g:Lcom/baseflow/permissionhandler/r;

    iget-object v2, p0, Lcom/baseflow/permissionhandler/p;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/baseflow/permissionhandler/p;->i:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/baseflow/permissionhandler/i;

    invoke-direct {v4, p2}, Lcom/baseflow/permissionhandler/i;-><init>(Lg/a/c/a/k$d;)V

    new-instance v5, Lcom/baseflow/permissionhandler/d;

    invoke-direct {v5, p2}, Lcom/baseflow/permissionhandler/d;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual/range {v0 .. v5}, Lcom/baseflow/permissionhandler/r;->a(ILandroid/content/Context;Landroid/app/Activity;Lcom/baseflow/permissionhandler/r$c;Lcom/baseflow/permissionhandler/o;)V

    goto :goto_2

    .line 10
    :cond_5
    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 11
    iget-object v0, p0, Lcom/baseflow/permissionhandler/p;->h:Lcom/baseflow/permissionhandler/t;

    iget-object v1, p0, Lcom/baseflow/permissionhandler/p;->e:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/baseflow/permissionhandler/j;

    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/j;-><init>(Lg/a/c/a/k$d;)V

    new-instance v3, Lcom/baseflow/permissionhandler/c;

    invoke-direct {v3, p2}, Lcom/baseflow/permissionhandler/c;-><init>(Lg/a/c/a/k$d;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baseflow/permissionhandler/t;->a(ILandroid/content/Context;Lcom/baseflow/permissionhandler/t$a;Lcom/baseflow/permissionhandler/o;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x637dca75 -> :sswitch_0
    .end sparse-switch
.end method
